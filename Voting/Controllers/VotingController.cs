using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
using Voting.DAL.Models;
using Voting.DAL.Repositories;

namespace Voting.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class VotingController : ControllerBase
    {
        private readonly IVotingRepository _repo;

        public VotingController(IVotingRepository repo) => _repo = repo;

        [HttpGet]
        public VotingProfile Get() => _repo.GetVotingProfile();

        [HttpGet("relative-majority")]
        public Dictionary<string, int> RelativeMajority()
        {
            VotingProfile votingProfile = _repo.GetVotingProfile();

            Dictionary<string, int> votes = new Dictionary<string, int>();
            votingProfile.GroupVotingProfiles.ForEach(g =>
            {
                string candidateName = g.Candidates.First().Name;
                if(votes.ContainsKey(candidateName))
                {
                    votes[candidateName] = votes[candidateName] + g.NumberOfVotes;
                }
                else
                {
                    votes.Add(candidateName, g.NumberOfVotes);
                }
            });

            return votes;
        }

        [HttpGet("borda-rule")]
        public Dictionary<string, int> BordaRule()
        {
            VotingProfile votingProfile = _repo.GetVotingProfile();

            Dictionary<string, int> votes = new Dictionary<string, int>();
            votingProfile.GroupVotingProfiles.ForEach(g =>
            {
                int score = g.Candidates.Count - 1;
                g.Candidates.ForEach(c =>
                {
                    string candidateName = c.Name;
                    if (votes.ContainsKey(candidateName))
                    {
                        votes[candidateName] = votes[candidateName] + g.NumberOfVotes * score;
                    }
                    else
                    {
                        votes.Add(candidateName, g.NumberOfVotes * score);
                    }
                    score--;
                });
            });

            return votes;
        }
    }
}

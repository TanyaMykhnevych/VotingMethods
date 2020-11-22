using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
using Voting.DAL.Models;
using Voting.DAL.Repositories;
using Voting.WebAPI.Models;

namespace Voting.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class VotingController : ControllerBase
    {
        private readonly IVotingRepository _repo;

        public VotingController(IVotingRepository repo) => _repo = repo;

        [HttpGet]
        public VotingProfile Get() => _repo.GetVotingProfile();

        [HttpGet("relative-majority")]
        public IEnumerable<VotingScore> RelativeMajority()
        {
            VotingProfile votingProfile = _repo.GetVotingProfile();

            Dictionary<string, int> votes = new Dictionary<string, int>();
            votingProfile.GroupVotingProfiles.ForEach(g =>
            {
                string candidateName = g.Candidates.First().Name;
                if (votes.ContainsKey(candidateName))
                {
                    votes[candidateName] = votes[candidateName] + g.NumberOfVotes;
                }
                else
                {
                    votes.Add(candidateName, g.NumberOfVotes);
                }
            });

            return votes.Select(v => new VotingScore { CandidateName = v.Key, NumberOfScores = v.Value })
                .OrderByDescending(v => v.NumberOfScores);
        }

        [HttpGet("borda-rule")]
        public IEnumerable<VotingScore> BordaRule()
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

            return votes.Select(v => new VotingScore { CandidateName = v.Key, NumberOfScores = v.Value })
                .OrderByDescending(v => v.NumberOfScores);
        }
    }
}

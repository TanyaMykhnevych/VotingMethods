using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using Voting.DAL.Models;

namespace Voting.DAL.Repositories
{
    public class VotingRepository : IVotingRepository
    {
        private readonly VotingDbContext _context;
        public VotingRepository(VotingDbContext context) => _context = context;

        public VotingProfile GetRelativeMajorityVotingProfile()
        {
            var groupedVoters = _context.Voters
                .AsNoTracking()
                .Include(v => v.Vote)
                .ThenInclude(v => v.Candidate)
                .AsEnumerable()
                .GroupBy(v => v.Group)
                .ToList();

            var allCandidates = _context.Candidates.AsNoTracking().ToList();

            VotingProfile profile = new VotingProfile();
            groupedVoters.ForEach(g =>
            {
                List<int> orderedCandidatesIds = g.GroupBy(g => g.Vote.CandidateId)
                .OrderByDescending(c => c.Count())
                .Select(c => c.Key)
                .ToList();

                IEnumerable<int> zeroVotesCandidates = allCandidates.Select(c => c.Id).Except(orderedCandidatesIds);

                orderedCandidatesIds.AddRange(zeroVotesCandidates);

                profile.GroupVotingProfiles.Add(new GroupVotingProfile
                {
                    NumberOfVotes = g.Count(),
                    Candidates = orderedCandidatesIds.Select(id => allCandidates.FirstOrDefault(c => c.Id == id)).ToList()
                });
            });

            return profile;
        }

        public VotingProfile GetBordaRuleVotingProfile()
        {
            var groupedVoters = _context.Voters
                .AsNoTracking()
                .Include(v => v.BordaScore)
                .ThenInclude(v => v.Candidate)
                .AsEnumerable()
                .GroupBy(v => v.Group)
                .ToList();

            var allCandidates = _context.Candidates.AsNoTracking().ToList();

            VotingProfile profile = new VotingProfile();
            groupedVoters.ForEach(g =>
            {
                List<int> orderedCandidatesIds = g.GroupBy(g => g.BordaScore.CandidateId)
                .OrderByDescending(c => c.Sum(s => s.BordaScore.Score))
                .Select(c => c.Key)
                .ToList();

                IEnumerable<int> zeroVotesCandidates = allCandidates.Select(c => c.Id).Except(orderedCandidatesIds);

                orderedCandidatesIds.AddRange(zeroVotesCandidates);

                profile.GroupVotingProfiles.Add(new GroupVotingProfile
                {
                    NumberOfVotes = g.Count() / allCandidates.Count,
                    Candidates = orderedCandidatesIds.Select(id => allCandidates.FirstOrDefault(c => c.Id == id)).ToList()
                });
            });

            return profile;
        }
    }
}

using Voting.DAL.Models;

namespace Voting.DAL.Repositories
{
    public interface IVotingRepository
    {
        VotingProfile GetRelativeMajorityVotingProfile();
        VotingProfile GetBordaRuleVotingProfile();
    }
}

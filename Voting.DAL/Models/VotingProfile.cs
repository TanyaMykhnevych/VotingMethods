using System.Collections.Generic;

namespace Voting.DAL.Models
{
    public class VotingProfile
    {
        public List<GroupVotingProfile> GroupVotingProfiles { get; set; } = new List<GroupVotingProfile>();
    }
}

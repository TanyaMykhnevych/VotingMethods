using System.Collections.Generic;
using Voting.DAL.Entities;

namespace Voting.DAL.Models
{
    public class GroupVotingProfile
    {
        public int NumberOfVotes { get; set; }
        public List<Candidate> Candidates { get; set; }
    }
}

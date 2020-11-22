namespace Voting.DAL.Entities
{
    public class BordaScore
    {
        public int Id { get; set; }
        public int CandidateId { get; set; }
        public int VoterId { get; set; }
        public int Score { get; set; }

        public Candidate Candidate { get; set; }
        public Voter Voter { get; set; }
    }
}

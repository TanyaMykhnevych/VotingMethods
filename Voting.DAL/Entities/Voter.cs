namespace Voting.DAL.Entities
{
    public class Voter
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Group { get; set; }

        public Vote Vote { get; set; }
        public BordaScore BordaScore { get; set; }
    }
}

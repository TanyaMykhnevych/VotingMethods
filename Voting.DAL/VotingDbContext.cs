﻿using Microsoft.EntityFrameworkCore;
using Voting.DAL.Entities;

namespace Voting.DAL
{
    public class VotingDbContext : DbContext
    {
        public VotingDbContext(DbContextOptions<VotingDbContext> options) : base(options)
        {

        }
        public DbSet<Candidate> Candidates { get; set; }
        public DbSet<Voter> Voters { get; set; }
        public DbSet<Vote> Votes { get; set; }
    }
}

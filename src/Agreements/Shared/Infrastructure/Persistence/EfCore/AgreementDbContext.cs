using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace Agreements.Shared.Infrastructure.Persistence.EfCore
{
    public class AgreementDbContext : DbContext
    {
        public const string DEFAULT_SCHEMA = "Agreement";

        public AgreementDbContext(DbContextOptions<AgreementDbContext> options)
           : base(options)
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(AgreementDbContext).Assembly);
            base.OnModelCreating(modelBuilder);
        }
    }
}

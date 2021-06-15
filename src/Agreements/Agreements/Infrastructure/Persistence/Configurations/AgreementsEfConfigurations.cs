using Agreements.Agreements.Domain;
using Agreements.Shared.Infrastructure.Persistence.EfCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Shared.Infrastructure.Persistence.EfCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace Agreements.Agreements.Infrastructure.Persistence.Configurations
{
    public class AgreementsEfConfigurations : EntityTypeConfiguration<Agreement>
    {
        public override void Configure(EntityTypeBuilder<Agreement> builder)
        {
            builder.ToTable("agreement", AgreementDbContext.DEFAULT_SCHEMA);
            builder.OwnsOne(a => a.Amount);
        }
    }
}

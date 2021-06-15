using Agreements.Agreements.Domain;
using Agreements.Shared.Infrastructure.Persistence.EfCore;
using Shared.Infrastructure.Persistence.EfCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace Agreements.Agreements.Infrastructure.Persistence
{
    public class AgreementEfRepository: EfRepository<Agreement>, IAgreementRepository
    {
        public AgreementEfRepository(AgreementDbContext dbContext)
            :base(dbContext)
        {
        }
    }
}

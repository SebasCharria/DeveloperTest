using Agreements.Agreements.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Agreements.Agreements.Applicacion.SearchAll
{
    public class SearchAllAgreementsManager
    {
        private readonly IAgreementRepository agreementRepository;

        public SearchAllAgreementsManager(IAgreementRepository agreementRepository)
        {
            this.agreementRepository = agreementRepository;
        }

        public IEnumerable<AgreementViewModel> Search()
        {
            var agreements = agreementRepository.Search();
            return agreements.Select(a => new AgreementViewModel
            {
                Amount = a.Amount,
                CreationDate = a.CreationDate,
                Description = a.Description,
                Id = a.Id,
                Name = a.Name
            });
        }
    }
}

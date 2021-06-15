using Agreements.Agreements.Domain;
using Agreements.Agreements.Domain.Exceptions;
using System;
using System.Collections.Generic;
using System.Text;

namespace Agreements.Agreements.Applicacion.SearchById
{
    public class SearchByIdAgreementsManager
    {
        private readonly IAgreementRepository agreementRepository;

        public SearchByIdAgreementsManager(IAgreementRepository agreementRepository)
        {
            this.agreementRepository = agreementRepository;
        }

        public AgreementViewModel SearchById(int agreementId)
        {
            var agreement = agreementRepository.GetById(agreementId);

            if (agreement == null)
            {
                throw new AgreementNotFound();
            }

            return new AgreementViewModel
            {
                Amount = agreement.Amount,
                CreationDate = agreement.CreationDate,
                Description = agreement.Description,
                Id = agreement.Id,
                Name = agreement.Name
            };
        }
    }
}

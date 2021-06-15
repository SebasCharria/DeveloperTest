using Agreements.Agreements.Domain;
using Shared.Domain.ValueObjects;
using System;
using System.Collections.Generic;
using System.Text;

namespace Agreements.Agreements.Applicacion.Create
{
    public class CreateAgreementsManager
    {
        private readonly IAgreementRepository agreementRepository;

        public CreateAgreementsManager(IAgreementRepository agreementRepository)
        {
            this.agreementRepository = agreementRepository;
        }

        public AgreementViewModel Create(
            string name,
            string description,
            MonetaryValue amount)
        {
            var agreement = new Agreement(
                name: name,
                description: description,
                amount: amount);

            agreementRepository.Insert(agreement);
            return new AgreementViewModel()
            {
                Amount = agreement.Amount,
                Name = agreement.Name,
                Description = agreement.Description,
                CreationDate = agreement.CreationDate,
                Id = agreement.Id
            };
        }
    }
}

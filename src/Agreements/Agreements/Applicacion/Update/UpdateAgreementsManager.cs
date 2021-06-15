using Agreements.Agreements.Domain;
using Agreements.Agreements.Domain.Exceptions;
using Shared.Domain.ValueObjects;
using System;
using System.Collections.Generic;
using System.Text;

namespace Agreements.Agreements.Applicacion.Update
{
    public class UpdateAgreementsManager
    {
        private readonly IAgreementRepository agreementRepository;

        public UpdateAgreementsManager(IAgreementRepository agreementRepository)
        {
            this.agreementRepository = agreementRepository;
        }

        public void Update(
            int agreementId,
            string name,
            string description,
            MonetaryValue amount)
        {
            var agreement = agreementRepository.GetById(agreementId);

            if (agreement == null)
            {
                throw new AgreementNotFound();
            }

            agreement
                .ChangeName(name)
                .ChangeDescription(description)
                .ChangeAmount(amount);
        }
    }
}

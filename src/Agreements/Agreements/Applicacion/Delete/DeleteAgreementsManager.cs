using Agreements.Agreements.Domain;
using Agreements.Agreements.Domain.Exceptions;
using System;
using System.Collections.Generic;
using System.Text;

namespace Agreements.Agreements.Applicacion.Delete
{
    public class DeleteAgreementsManager
    {
        private readonly IAgreementRepository agreementRepository;

        public DeleteAgreementsManager(IAgreementRepository agreementRepository)
        {
            this.agreementRepository = agreementRepository;
        }

        public void Delete(int agreementId)
        {
            var agreement = agreementRepository.GetById(agreementId);
            
            if (agreement == null)
            {
                throw new AgreementNotFound();
            }

            agreementRepository.Delete(agreement);

        }
    }
}

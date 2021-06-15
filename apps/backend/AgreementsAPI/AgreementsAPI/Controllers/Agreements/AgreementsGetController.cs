using Agreements.Agreements.Applicacion;
using Agreements.Agreements.Applicacion.SearchAll;
using Agreements.Agreements.Applicacion.SearchById;
using Agreements.Agreements.Domain.Exceptions;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AgreementsAPI.Controllers.Agreements
{
    [Route("api/agreements")]
    [ApiController]
    public class AgreementsGetController : ControllerBase
    {
        private readonly SearchAllAgreementsManager searchAll;
        private readonly SearchByIdAgreementsManager searchById;

        public AgreementsGetController(
            SearchAllAgreementsManager searchAll, SearchByIdAgreementsManager searchById)
        {
            this.searchAll = searchAll;
            this.searchById = searchById;
        }

        [HttpGet("{agreementId:int}")]
        [ProducesResponseType(typeof(AgreementViewModel), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status500InternalServerError)]
        public IActionResult Get(int agreementId)
        {
            try
            {
                var agreement = searchById.SearchById(agreementId);
                return Ok(agreement);
            }
            catch (AgreementNotFound)
            {
                return NotFound();
            }
        }

        [HttpGet]
        [ProducesResponseType(typeof(IEnumerable<AgreementViewModel>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status500InternalServerError)]
        public IActionResult Get()
        {
            try
            {
                var agreements = searchAll.Search();
                return Ok(agreements);
            }
            catch (AgreementNotFound)
            {
                return NotFound();
                throw;
            }
        }
    }
}

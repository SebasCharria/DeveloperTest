using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text.Json.Serialization;
using System.Threading.Tasks;
using AgreementsRazorApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Net.Http.Json;

namespace AgreementsRazorApp.Pages.Agreements
{
    public class IndexModel : PageModel
    {
        private readonly IHttpClientFactory clientFactory;
        public IEnumerable<AgreementsModel> Agreements { get; private set; }

        public IndexModel(IHttpClientFactory clientFactory)
        {
            this.clientFactory = clientFactory;
        }

        public async Task OnGet()
        {
            var client = clientFactory.CreateClient("API");

            Agreements = await client.GetFromJsonAsync<IEnumerable<AgreementsModel>>("api/agreements");
        }

        public class AgreementsModel
        {
            public int Id { get; set; }
            public string Name { get; set; }
            public string Description { get; set; }
            public DateTime CreationDate { get; set; }
            public MonetaryModel Amount { get; set; }
        }
    }
}

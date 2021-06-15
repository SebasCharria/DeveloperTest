using Agreements.Agreements.Applicacion.SearchAll;
using Agreements.Agreements.Applicacion.SearchById;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using StartupModules;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AgreementsAPI.Infrastructure.DependencyInjection.Agreements.Infrastructure
{
    public class Application : IStartupModule
    {
        public void Configure(IApplicationBuilder app, ConfigureMiddlewareContext context)
        {
        }

        public void ConfigureServices(IServiceCollection services, ConfigureServicesContext context)
        {
            services.AddTransient<SearchAllAgreementsManager>();
            services.AddTransient<SearchByIdAgreementsManager>();
        }
    }
}

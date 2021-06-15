using Agreements.Agreements.Applicacion.SearchAll;
using Agreements.Agreements.Applicacion.SearchById;
using Agreements.Agreements.Domain;
using Agreements.Agreements.Infrastructure.Persistence;
using Agreements.Shared.Infrastructure.Persistence.EfCore;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using StartupModules;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AgreementsAPI.Infrastructure.DependencyInjection.Agreements.Infrastructure
{
    public class Infrastructure : IStartupModule
    {
        public void Configure(IApplicationBuilder app, ConfigureMiddlewareContext context)
        {
        }

        public void ConfigureServices(IServiceCollection services, ConfigureServicesContext context)
        {
            services.AddTransient<IAgreementRepository>((services) =>
            {
                var configuration = services.GetRequiredService<IConfiguration>();

                var useAdo = configuration.GetValue<bool>("UseAdo");

                if (useAdo)
                {
                    return new AgreementADORepository(configuration.GetConnectionString("agreement"));
                }
                else
                {
                    var dbcontext = services.GetRequiredService<AgreementDbContext>();
                    return new AgreementEfRepository(dbcontext);
                }
            });

            ////services.AddTransient<IAgreementRepository, AgreementEfRepository>();
            //services.AddTransient<IAgreementRepository, AgreementADORepository>((serv) => 
            //{
            //    var configuration = serv.GetRequiredService<IConfiguration>();
            //    return new AgreementADORepository(configuration.GetConnectionString("agreement"));
            //});
        }
    }
}

# DeveloperTest
Prueba tecnica DevInMotion. 
Este proyecto consiste de 3 aplicaciones:
1. AgreementsAPI, Aplicacion RESTFull (Servicio Backend).
2. AgreementsMobile, Aplicacion mobile Xamarin.
3. AgreementsBlazorApp, Aplicacion blazor server side.
4. AgreementsRazorApp, Aplicacion razor pages.

## Estructura de Carpetas y Arquitectura
Se usan tres capas para cada entidad de un contexto (Solo existe una unica entidad "Agreement" y un contexto).
1. Application: Casos de uso.
2. Domain: Modelo Dominio
3. Infrastructure: Capa de configuration de infraestructura como, implementaciones a acceso a datos y etc. Se agrega implementaciones del acceso a datos con ADO.Net y EfCore, 
para elegir entre ADO.Net se tiene que cambiar el valor a ``true`` de la llave ``UseAdo`` en ``appsettings.json`` en el poryecto **AgreementsAPI**. 
Para lograr esto se usa el patron de diseño "Repository Pattern"

<pre>
├───apps
│   ├───backend
│   │   └───AgreementsAPI
│   └───frontend
│       ├───AgreementsBlazorApp
│       ├───AgreementsMobileApp
│       │   ├───AgreementsMobileApp
│       │   ├───AgreementsMobileApp.Android
│       │   └───AgreementsMobileApp.iOS
│       └───AgreementsRazorApp
└───src
    ├───Agreements
    │   ├───Agreements
    │   │   ├───Applicacion
    │   │   │   ├───Create
    │   │   │   ├───Delete
    │   │   │   ├───SearchAll
    │   │   │   ├───SearchById
    │   │   │   └───Update
    │   │   ├───Domain
    │   │   │   └───Exceptions
    │   │   └───Infrastructure
    │   │       └───Persistence
    │   │           └───Configurations
    │   └───Shared
    │       └───Infrastructure
    │           └───Persistence
    │               └───EfCore
    │                   └───Migrations
    └───Shared
        ├───Domain
        │   └───ValueObjects
        ├───Infrastructure
        │   └───Persistence
        │       └───EfCore
</pre>

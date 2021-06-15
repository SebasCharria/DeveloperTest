using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Agreements.Shared.Infrastructure.Persistence.EfCore.Migrations
{
    public partial class AddAgreementSchema : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.EnsureSchema(
                name: "Agreement");

            migrationBuilder.CreateTable(
                name: "agreement",
                schema: "Agreement",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    CreationDate = table.Column<DateTime>(nullable: false),
                    Amount_Value = table.Column<decimal>(nullable: true),
                    Amount_Currency = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_agreement", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "agreement",
                schema: "Agreement");
        }
    }
}

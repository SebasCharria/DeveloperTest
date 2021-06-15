﻿// <auto-generated />
using System;
using Agreements.Shared.Infrastructure.Persistence.EfCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace Agreements.Shared.Infrastructure.Persistence.EfCore.Migrations
{
    [DbContext(typeof(AgreementDbContext))]
    [Migration("20210614230847_AddAgreementSchema")]
    partial class AddAgreementSchema
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.16")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Agreements.Agreements.Domain.Agreement", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("CreationDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("agreement","Agreement");
                });

            modelBuilder.Entity("Agreements.Agreements.Domain.Agreement", b =>
                {
                    b.OwnsOne("Shared.Domain.ValueObjects.MonetaryValue", "Amount", b1 =>
                        {
                            b1.Property<int>("AgreementId")
                                .ValueGeneratedOnAdd()
                                .HasColumnType("int")
                                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                            b1.Property<string>("Currency")
                                .HasColumnType("nvarchar(max)");

                            b1.Property<decimal>("Value")
                                .HasColumnType("decimal(18,2)");

                            b1.HasKey("AgreementId");

                            b1.ToTable("agreement");

                            b1.WithOwner()
                                .HasForeignKey("AgreementId");
                        });
                });
#pragma warning restore 612, 618
        }
    }
}
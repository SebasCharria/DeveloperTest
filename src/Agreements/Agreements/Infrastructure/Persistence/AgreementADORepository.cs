using Agreements.Agreements.Domain;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Data.SqlClient;
using SqlKata;
using SqlKata.Compilers;
using Shared.Domain.ValueObjects;
using Agreements.Shared.Infrastructure.Persistence.EfCore;

namespace Agreements.Agreements.Infrastructure.Persistence
{
    public class AgreementADORepository : IAgreementRepository
    {
        private readonly string connectionString;

        public AgreementADORepository(string connectionString)
        {
            if (string.IsNullOrEmpty(connectionString))
            {
                throw new ArgumentException($"'{nameof(connectionString)}' no puede ser nulo ni estar vacío.", nameof(connectionString));
            }

            this.connectionString = connectionString;
        }

        public void Delete(Agreement entity)
        {
            using var conex = new SqlConnection(connectionString);

            var compiler = new SqlServerCompiler();

            var query = new Query("agreement").AsDelete()
                .Where(nameof(Agreement.Id), "=", entity.Id);

            var sql = compiler.Compile(query);

            conex.Open();

            SqlCommand sqlCommand = new SqlCommand(sql.RawSql, conex);
            sqlCommand.ExecuteNonQuery();
        }

        public void Delete(IEnumerable<Agreement> entities)
        {
            using var conex = new SqlConnection(connectionString);

            var compiler = new SqlServerCompiler();

            var query = new Query("agreement").AsDelete();

            foreach (var entity in entities)
            {
                query.Where(nameof(Agreement.Id), "=", entity.Id);
            }

            var sql = compiler.Compile(query);

            conex.Open();

            SqlCommand sqlCommand = new SqlCommand(sql.RawSql, conex);
            sqlCommand.ExecuteNonQuery();
        }

        public Agreement GetById(object id)
        {
            using var conex = new SqlConnection(connectionString);

            var compiler = new SqlServerCompiler();

            var query = new Query($"{AgreementDbContext.DEFAULT_SCHEMA}.agreement")
                .Select("*")
                .Where(nameof(Agreement.Id), "=", id);

            var sql = compiler.Compile(query);

            conex.Open();

            SqlCommand sqlCommand = new SqlCommand(sql.ToString(), conex);
            var reader = sqlCommand.ExecuteReader();
            Agreement agreement = null;
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    agreement = new Agreement(
                        reader.GetInt32(0),
                        reader.GetString(1),
                        reader.GetString(2),
                        new MonetaryValue(reader.GetDecimal(4), reader.GetString(5)),
                        reader.GetDateTime(3));
                }
            }
            else
            {
                return null;
            }
            reader.Close();
            return agreement;
        }

        public Agreement GetById(params object[] id)
        {
            return GetById(id[0]);
        }

        public void Insert(Agreement entity)
        {
            throw new NotImplementedException();
        }

        public void Insert(IEnumerable<Agreement> entities)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Agreement> Search()
        {
            using var conex = new SqlConnection(connectionString);

            var compiler = new SqlServerCompiler();

            var query = new Query($"{AgreementDbContext.DEFAULT_SCHEMA}.agreement")
                .Select("*");

            var sql = compiler.Compile(query);

            conex.Open();

            SqlCommand sqlCommand = new SqlCommand(sql.ToString(), conex);
            var reader = sqlCommand.ExecuteReader();
            List<Agreement> agreements = new List<Agreement>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    var agreement = new Agreement(
                        reader.GetInt32(0),
                        reader.GetString(1),
                        reader.GetString(2),
                        new MonetaryValue(reader.GetDecimal(4), reader.GetString(5)),
                        reader.GetDateTime(3));
                    agreements.Add(agreement);
                }
            }
            else
            {
                return null;
            }
            reader.Close();
            return agreements;
        }

        public void Update(Agreement entity)
        {
            throw new NotImplementedException();
        }

        public void Update(IEnumerable<Agreement> entities)
        {
            throw new NotImplementedException();
        }
    }
}

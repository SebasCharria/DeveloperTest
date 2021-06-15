using Shared.Domain;
using Shared.Domain.ValueObjects;
using System;
using System.Collections.Generic;
using System.Text;

namespace Agreements.Agreements.Domain
{
    public class Agreement: Entity, IAggregateRoot
    {
        public string Name { get; private set; }
        public string Description { get; private set; }
        public DateTime CreationDate { get; set; }
        public MonetaryValue Amount { get; private set; }

        protected Agreement()
        {
        }

        public Agreement(
            string name,
            string description,
            MonetaryValue amount)
        {
            Name = name;
            Description = description;
            Amount = amount;
            CreationDate = DateTime.Now;
        }

        public Agreement(
            int id,
            string name,
            string description,
            MonetaryValue amount,
            DateTime creationDate)
        {
            Id = id;
            Name = name;
            Description = description;
            Amount = amount;
            CreationDate = creationDate;
        }

        public Agreement ChangeAmount(MonetaryValue amount)
        {
            Amount = amount;
            return this;
        }

        public Agreement ChangeName(string name)
        {
            Name = name;
            return this;
        }

        public Agreement ChangeDescription(string description)
        {
            Description = description;
            return this;
        }
    }
}

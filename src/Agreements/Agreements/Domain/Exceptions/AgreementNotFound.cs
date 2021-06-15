using System;
using System.Collections.Generic;
using System.Text;

namespace Agreements.Agreements.Domain.Exceptions
{

    [Serializable]
    public class AgreementNotFound : Exception
    {
        public AgreementNotFound() { }
        public AgreementNotFound(string message) : base(message) { }
        public AgreementNotFound(string message, Exception inner) : base(message, inner) { }
        protected AgreementNotFound(
          System.Runtime.Serialization.SerializationInfo info,
          System.Runtime.Serialization.StreamingContext context) : base(info, context) { }
    }
}

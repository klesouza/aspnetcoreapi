using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;

namespace aspnetcoreapp
{
    [Route("/api/sellers")]
    public class SellersController
    {
        public IEnumerable<string> Get()
        {
            return new[] {"seller1", "seller2"};
        }
    }
}
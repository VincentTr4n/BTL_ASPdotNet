using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BTL_ASPdotNet.Models;

namespace BTL_ASPdotNet.DataAccess
{
    public class CountryDAO : ICountryDAO
    {
        StoreOlineEntities db = new StoreOlineEntities();
        public bool Add(Country obj)
        {
            throw new NotImplementedException();
        }

        public Country Delete(Country obj)
        {
            throw new NotImplementedException();
        }

        public Country FindByID(object ID)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Country> GetAll()
        {
            return db.Countries;
        }

        public bool Update(Country obj)
        {
            throw new NotImplementedException();
        }
    }
}

using System.Collections.Generic;
using BTL_ASPdotNet.DataAccess;

namespace BTL_ASPdotNet.Services
{
    public class CountryService
    {
        static ICountryDAO countryDAO = new CountryDAO();
        public static IEnumerable<Models.Country> GetAll() => countryDAO.GetAll(); 
    }
}
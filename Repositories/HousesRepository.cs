using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace gregsListCsharp_lecture.Repositories;
    public class HousesRepository
{

        private readonly IDbConnection _db;
        internal List<House> GetHouses()
    {
        string sql = "SELECT * FROM houses;";

        List<House> houses = _db.Query<House>(sql).ToList();

        return houses
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace gregsListCsharp_lecture.Services
{
    public class HousesService
    {
        private readonly HousesRepository _housesRepository;
        internal List<House> GetHouses();
    }
}
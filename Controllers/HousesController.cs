using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace gregsListCsharp_lecture.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class HousesController : ControllerBase
    {

        private readonly HousesService _housesService;

        [HttpGet]
        public ActionResult<List<House>> GetHouses()
        {
            try
            {
                List<House> houses = _housesService.GetHouses();
                return Ok(houses);
            }
            catch (Exception e)
            {
                
            }
        }




    }
}
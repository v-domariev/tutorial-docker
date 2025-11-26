using Microsoft.AspNetCore.Mvc;

namespace APIForDocker.Controllers
{
    [ApiController]
    [Route("")]
    public class HomeController : ControllerBase
    {
        public IActionResult GetHomePage() 
        {
            return Ok("It is a home page. My first test APP in WEB.");
        }
    }
}

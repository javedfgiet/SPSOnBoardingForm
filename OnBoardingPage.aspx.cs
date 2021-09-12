using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnBoardingForm
{
    public partial class OnBoardingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            var myData = new
            {
                body = "SPS On boarding Test Mail. please ignore",
                due = "10/10/2021",
                email = "bpgedevops@microsoft.com",
                Subject = "Test Mail Notification",
            };
            string jsonData = JsonConvert.SerializeObject(myData);
            JObject jsonObject = JObject.Parse(jsonData);

            using (var client = new HttpClient())
            {
                var content = new StringContent(jsonData, Encoding.UTF8, "application/json");
                var response = client.PostAsync("https://prod-19.centralus.logic.azure.com:443/workflows/11f10a19a36641f898619f931695c6a2/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=jtdCXT_wmaTuZgIGeWGIIGArEdtHsg2YmrCEegs27ik", content).Result;
            }

            Response.Write("finished");
         
        }
    }
}


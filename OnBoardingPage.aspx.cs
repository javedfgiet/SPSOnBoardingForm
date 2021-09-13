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

            var modelTeamName = modeltxtTeamName.Value;
            var modelUserName = modeltxtExternalPartnerAlias.Value;
            var modelPartnerAlias = modeltxtPartnerAlias.Value;
            var modelSearchTeamEmail = modelSearchTxtTeamEmail.Value;
            var modelTeamEmail = modelTxtTeamEmail.Value;
            var modelProjectOverview = modeltxtProjectOverview.Value;
            var modelDate = modelTxtDate.Value;
            var modelAreaDistribution = modeltxtAreaDistribution.Value;
            var modelAreaMarket = modeltxtAreaMarket.Value;
            var modelQPM = modelTxtQPM.Value;
            var modelQPS = modelTxtQPS.Value;
            var modelImpAdhereTo = modelTxtImpAdhereTo.Value;
            var modelAreaDataTypes = modeltxtAreaDataTypes.Value;
            var modelFormCode = modelTxtFormCode.Value;
            var modelDevice = modelTargetDevice.Value;
           
            var modelDetailedScenario = modeltxtDetailedScenario.Value;
            var myData = new
            {
                TeamName = modelTeamName,
                UserName = modelUserName,
                PartnerContactAlias = modelPartnerAlias,
                SearchTeamContactAlias = modelSearchTeamEmail,
                TeamAlias = modelTeamEmail,
                ProjectOverview = modelProjectOverview,
                Date = modelDate,
                distributionMethod = modelAreaDistribution,
                MarketNcountries = modelAreaMarket,
                EstimatedNumberOfQueriesPerMonth = modelQPM,
                EstimatedNumberOfQueriesPerSecond = modelQPS,
                PleaseEnsureYourImplementationAdheresToThe = modelImpAdhereTo,
                DataTypesToBeUsed = modelAreaDataTypes,
                AppIdFormCode = modelFormCode,
                TargetDevice = modelDevice,
                OtherTargetDevice = modelDevice,
                DetailedScenario = modelDetailedScenario,


                email = "bpgedevops@microsoft.com",
                Subject = "Test Mail Please Ignore",
            };
            string jsonData = JsonConvert.SerializeObject(myData);
            JObject jsonObject = JObject.Parse(jsonData);

            using (var client = new HttpClient())
            {
                var content = new StringContent(jsonData, Encoding.UTF8, "application/json");
                var response = client.PostAsync("https://prod-19.centralus.logic.azure.com:443/workflows/11f10a19a36641f898619f931695c6a2/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=jtdCXT_wmaTuZgIGeWGIIGArEdtHsg2YmrCEegs27ik", content).Result;
            }



        }
    }
}


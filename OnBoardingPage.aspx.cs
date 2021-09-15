﻿using Newtonsoft.Json;
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
            var modelPartnerContactMSAlias = modeltxtPartnerAlias.Value;
            var modelTeamEmail = modelTxtTeamEmail.Value;
            var modalSuitableIntendedUse = txtSuitabeUse.Value;
            var modalExternalPartnerAlias = modeltxtExternalPartnerAlias.Value;
            var modalProjectOverview = modeltxtProjectOverview.Value;
            var modalTargetDevice = modelTargetDevice.Value;
            var modalReleaseDate = modelTxtDate.Value;
            var modalDistributionMethod = modeltxtAreaDistribution.Value;
            var modalAreaMarket = modeltxtAreaMarket.Value;
            var modalQPM = modelTxtQPM.Value;
            var modalQPS = modelTxtQPS.Value;
            var modalImpAdhereTo = modelTxtImpAdhereTo.Value;
            var modalConsideredDataTypes = modeltxtAreaDataTypes.Value;
            var modalFormCode = modelTxtFormCode.Value;
            var modalAPIcalledAt = modeltxtBingAPICalledAt.Value;
            var modalDetailedScenario = modeltxtDetailedScenario.Value;
            var myData = new
            {
                TeamNameNorganization = modelTeamName,
                PartnerContactMSAlias = modelPartnerContactMSAlias,
                TeamEmailAlias= modelTeamEmail,
                MostSuitableIntendedUse= modalSuitableIntendedUse,
                ExternalPartnerEmailAlias= modalExternalPartnerAlias,
                ProjectOverview= modalProjectOverview,
                TargetDevice=modalTargetDevice,
                ReleaseDate=modalReleaseDate,
                DistributionMethod=modalDistributionMethod,
                AreaMarket=modalAreaMarket,
                QPM=modalQPM,
                QPS=modalQPS,
                AdhereToBingGuideline=modalImpAdhereTo,
                ConsideredDataTypes=modalConsideredDataTypes,
                HaveFormCode=modalFormCode,
                APICalledAt=modalAPIcalledAt,
                Top2ProjectScenarion=modalDetailedScenario,
                email = "spbsupp@microsoft.com",
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


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnBoardingPage.aspx.cs" Inherits="OnBoardingForm.OnBoardingPage" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SPS On Boarding </title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <script type="text/javascript">
        function sync() {

            var modalCondition = true;
            var txtTeamName = document.getElementById('txtTeamName');
            if (txtTeamName.value == "") {
                modalCondition = false;
                alert('Please Enter Team Name');
                return false;
            }
            else {
                var modeltxtTeamName = document.getElementById('modeltxtTeamName');
                modeltxtTeamName.value = txtTeamName.value;
            }

            var txtPartnerContactName = document.getElementById('txtPartnerContactName');
            if (txtPartnerContactName.value == "") {
                modalCondition = false;
                alert('Please Enter Partner Contact Microsoft alias');
                return false;
            }
            else {
                var modeltxtPartnerAlias = document.getElementById('modeltxtPartnerAlias');
                modeltxtPartnerAlias.value = txtPartnerContactName.value;
            }

            var txtSearhTeamContact = document.getElementById('txtSearhTeamContact');
            if (txtSearhTeamContact.value == "") {
                modalCondition = false;
                alert('Please Enter Search Team Contact alias');
                return false;
            }
            else {
                var modelSearchTxtTeamEmail = document.getElementById('modelSearchTxtTeamEmail');
                modelSearchTxtTeamEmail.value = txtSearhTeamContact.value;
            }

            var txtTeamAlias = document.getElementById('txtTeamAlias');
            if (txtTeamAlias.value == "") {
                modalCondition = false;
                alert('Please Enter Team alias');
                return false;
            }
            else {
                var modelTxtTeamEmail = document.getElementById('modelTxtTeamEmail');
                modelTxtTeamEmail.value = txtTeamAlias.value;
            }

            var txtExternalPartner = document.getElementById('txtExternalPartner');
            if (txtExternalPartner.value == "") {
                modalCondition = false;
                alert('Please Enter External partner contact email alias');
                return false;
            }
            else {
                var modeltxtExternalPartnerAlias = document.getElementById('modeltxtExternalPartnerAlias');
                modeltxtExternalPartnerAlias.value = txtExternalPartner.value;
            }


           
            

            var txtAreaProjectOverView = document.getElementById('txtAreaProjectOverView');
            if (txtAreaProjectOverView.value == "") {
                modalCondition = false;
                alert('Please provide Project Overview');
                return false;
            }
            else {
                var modeltxtProjectOverview = document.getElementById('modeltxtProjectOverview');
                modeltxtProjectOverview.value = txtAreaProjectOverView.value;
            }

            var targetDevices = "";
            if (document.getElementById("chkDeskTop").checked ==true) {
                targetDevices = "Desktop";
            }
            if (document.getElementById("chkMobile").checked == true) {
                targetDevices = targetDevices + ',\n' + " Mobile";
            }
            if (document.getElementById("chkotherDevice").checked == true) {
                targetDevices = targetDevices + ',\n' + " Other Devices : \n " + document.getElementById('txtOtherDevice').value;
            }

            if (targetDevices== "") {
                modalCondition = false;
                alert('Please provide target device');
                return false;
            }
            else {
                var modelTargetDevice = document.getElementById('modelTargetDevice');
                modelTargetDevice.value = targetDevices;
            }





            var modelTxtDate = document.getElementById('modelTxtDate');
            var txtDate = document.getElementById('txtDate');
            if (txtDate.value == "") {
                modalCondition = false;
                alert('Please provide expected project release date');
                return false;
            }
            else {
                modelTxtDate.value = txtDate.value;
            }

            var distributionMethod = "";
            if (document.getElementById("chkInternalMicrosoft").checked == true) {
                distributionMethod = "Microsoft Internal user only";
            }
            if (document.getElementById("chkMicrosoftenterprise").checked == true) {
                distributionMethod = distributionMethod + ',\n' + "Microsoft enterprise/consumer softwares";
            }
            if (document.getElementById("chkSeconParty").checked == true) {
                distributionMethod = distributionMethod + ',\n' + "2nd party, 3 rdparty or OEM services/devices";
            }
            if (document.getElementById("chkPublicdistribution").checked == true) {
                distributionMethod = distributionMethod + ',\n' + "Public distribution of library through Github or similar";
            }
            if (document.getElementById("chkotherPackage").checked == true) {
                distributionMethod = distributionMethod + ',\n' + "Other package distribution outside Microsoft : \n" + document.getElementById('txtOtherScenario').value;
            }
            if (distributionMethod == "") {
                modalCondition = false;
                alert('Please specify distribution method');
                return false;
            }
            else {
                var modeltxtAreaDistribution = document.getElementById('modeltxtAreaDistribution');
                modeltxtAreaDistribution.value = distributionMethod;
            }

            var txtAreaMarkets = document.getElementById('txtAreaMarkets');
            if (txtAreaMarkets.value == "") {
                modalCondition = false;
                alert('Please provide Area or Market');
                return false;
            }
            else {
                var modeltxtAreaMarket = document.getElementById('modeltxtAreaMarket');
                modeltxtAreaMarket.value = txtAreaMarkets.value;
            }

            var txtQPM = document.getElementById('txtQPM');
            if (txtQPM.value == "") {
                modalCondition = false;
                alert('Please provide Estimateded  Query Per Month');
                return false;
            }
            else {
                var modelTxtQPM = document.getElementById('modelTxtQPM');
                modelTxtQPM.value = txtQPM.value;
            }
            var txtQPS = document.getElementById('txtQPS');
            if (txtQPS.value == "") {
                modalCondition = false;
                alert('Please provide Estimateded  Query Per Second');
                return false;
            }
            else {
                var modelTxtQPS = document.getElementById('modelTxtQPS');
                modelTxtQPS.value = txtQPS.value;
            }

            var listConsideredDataTypes = document.getElementById('listConsideredDataTypes');
            var consideredDataTypes = listConsideredDataTypes.options[listConsideredDataTypes.selectedIndex].text;
            if (consideredDataTypes == "") {
                modalCondition = false;
                alert('Please provide considered Data Types');
                return false;
            }
            else {
                var modeltxtAreaDataTypes = document.getElementById('modeltxtAreaDataTypes');
                modeltxtAreaDataTypes.value = consideredDataTypes;
            }


            var BingProductGuideline = "";
            if (document.getElementById("rbAccept").checked == true) {
                BingProductGuideline = "Accept";
            }
            else {
                BingProductGuideline = "Not Accept";
            }
            if (BingProductGuideline == "") {
                modalCondition = false;
                alert('Please select apropriate option for Bing Product Guideline consent');
                return false;
            }
            else {
                var modelTxtImpAdhereTo = document.getElementById('modelTxtImpAdhereTo');
                modelTxtImpAdhereTo.value = BingProductGuideline;
            }

            var AppIdPresent = "";
            if (document.getElementById("rbAppIdYes").checked == true) {
                AppIdPresent = "Yes";
            }
            else {
                AppIdPresent = "No";
            }
            if (AppIdPresent == "") {
                modalCondition = false;
                alert('Please select YES/NO if you have AppId/Form Code');
                return false;
            }
            var modelFormCode = document.getElementById('modelTxtFormCode');
            modelFormCode.value = AppIdPresent;


            var BingAPICalledAt = "";
            var txtOtherfield = document.getElementById('txtOtherfield');

            if (document.getElementById("rbServerSide").checked == true) {
                BingAPICalledAt = "Server Side";
            }
            else if (document.getElementById("rbClientSide").checked == true) {
                BingAPICalledAt = "Client Side";
            }
            else if (document.getElementById("rbOthers").checked == true) {
                BingAPICalledAt = "Other Uses : \n" + txtOtherfield.value;
            }
            if (BingAPICalledAt == "") {
                modalCondition = false;
                alert('Please select  where Bing API will be called');
                return false;
            }
            else {
                var modeltxtBingAPICalledAt = document.getElementById('modeltxtBingAPICalledAt');
                modeltxtBingAPICalledAt.value = BingAPICalledAt;
            }



            var txtAreaDetailedScenario = document.getElementById('txtAreaDetailedScenario');
            if (txtAreaDetailedScenario.value == "") {
                modalCondition = false;
                alert('Please provide Detailed Scenario');
                return false;
            }
            var modeltxtDetailedScenario = document.getElementById('modeltxtDetailedScenario');
            modeltxtDetailedScenario.value = txtAreaDetailedScenario.value;


  
           
            
            if (modalCondition == true) {
                $("#exampleModalLong").modal('show');
            }


        }
    </script>

</head>

<body id="page-top">
    <form id="form1" runat="server">
        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">Onboarding</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Interface
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <!-- Nav Item - Tables -->
                <li class="nav-item">
                    <a class="nav-link" href="tables.html">
                        <i class="fas fa-fw fa-table"></i>
                        <span>On Boarding</span>
                    </a>
                </li>

                <hr class="sidebar-divider d-none d-md-block">

                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>


            </ul>
            <!-- End of Sidebar -->
            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Search -->
                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <!-- Dropdown - Messages -->

                            </li>

                            <!-- Nav Item - Alerts -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-bell fa-fw"></i>
                                    <!-- Counter - Alerts -->
                                    <span class="badge badge-danger badge-counter">3+</span>
                                </a>
                                <!-- Dropdown - Alerts -->

                            </li>

                            <!-- Nav Item - Messages -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-envelope fa-fw"></i>
                                    <!-- Counter - Messages -->
                                    <span class="badge badge-danger badge-counter">7</span>
                                </a>
                                <!-- Dropdown - Messages -->

                            </li>

                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Javed Ahmad</span>
                                    <img class="img-profile rounded-circle"
                                        src="img/undraw_profile.svg">
                                </a>
                                <!-- Dropdown - User Information -->

                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->
                    <!-- Begin Page Content -->
                    <div class="container-fluid">




                        <!--Content-->
                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">On Boarding Form</h6>
                            </div>
                            <div class="card-body">


                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user"
                                        id="txtTeamName" required placeholder="Team Name & Division">
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user"
                                        id="txtPartnerContactName" required placeholder="Panrtner Contact Microsoft Alias">
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user"
                                        id="txtSearhTeamContact" required placeholder="POC Email Address (Search Team Contact)">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user"
                                        id="txtTeamAlias" required placeholder="Team Alias Email">
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user"
                                        id="txtExternalPartner" required placeholder="External partner email alias">
                                </div>



                                <div class="form-group">

                                    <textarea class="form-control" required rows="5" placeholder="Project Overview" id="txtAreaProjectOverView"></textarea>
                                </div>



                                <div class="form-group">
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Target Device</h6>
                                        </div>
                                        <div class="card-body">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="chkDeskTop" value="">Desktop</label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="chkMobile" value="">Mobile</label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="chkotherDevice" value="">Others Device
                                                </label>
                                            </div>

                                            <div class="form-group">
                                                <a href="#" class="btn btn-primary btn-icon-split btn-sm">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-flag"></i>
                                                    </span>
                                                    <span class="text">If Other, Please specify</span>
                                                </a>
                                                <input type="text" class="form-control form-control-user"
                                                    id="txtOtherDevice" placeholder="Other Device">
                                            </div>
                                        </div>
                                    </div>
                                </div>








                                <div class="form-group">

                                    <input type="text" class="form-control form-control-user"
                                        id="txtDate" placeholder="Project Release Date : MM/dd/yyyy">
                                </div>

                                <div class="form-group">
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">What is distribution method for your product/service/application</h6>
                                        </div>
                                        <div class="card-body">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="chkInternalMicrosoft" value="">Microsoft Internal user only</label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="chkMicrosoftenterprise" value="">Microsoft enterprise/consumer softwares</label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="chkSeconParty" value="">2<sup>nd</sup> party, 3 <sup>rd</sup>party or OEM services/devices</label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="chkPublicdistribution" value="">Public distribution of library through Github or similar</label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="chkotherPackage" value="">Other package distribution outside Microsoft</label>
                                            </div>


                                            <div class="form-group">
                                                <a href="#" class="btn btn-primary btn-icon-split btn-sm">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-flag"></i>
                                                    </span>
                                                    <span class="text">If Other, Please specify</span>
                                                </a>
                                                <input type="text" class="form-control form-control-user"
                                                    id="txtOtherScenario" placeholder="Other Scenarion">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <textarea class="form-control" id="txtAreaMarkets" rows="5" placeholder="List the Markets/countries where Bing results will be shown"></textarea>
                                </div>

                                <div class="form-group">
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Query Volume Calculations</h6>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" required
                                                    id="txtQPM" placeholder="Estimate query volume per month by market">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user" required
                                                    id="txtQPS" placeholder="Estimate query volume per second to be sent to search">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Please Ensure your implementation adheres to the Bing Product Guideline</h6>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <a href="https://docs.microsoft.com/en-us/bing/search-apis/bing-web-search/use-display-requirements" target="_blank" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                                                    <i class="fas fa-download fa-sm text-white-50"></i>Bing Product Guidelines
                                                </a>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="rbAccept">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    Accept
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="rbNotAccept" checked>
                                                <label class="form-check-label" for="flexRadioDefault2">
                                                    Not Accept
                                                </label>
                                            </div>
                                        </div>
                                    </div>

                                </div>


                                <div class="form-group">
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">What Data Types are being considered for use ?</h6>
                                        </div>
                                        <div class="card-body">
                                            <select class="form-select" id="listConsideredDataTypes" size="7" aria-label="size 7 select example">
                                                <option value="" disabled="disabled">Select Data Types</option>
                                                <option value="1" selected>Web</option>
                                                <option value="2">Video</option>
                                                <option value="3">Images</option>
                                                <option value="4">Related Queries</option>
                                                <option value="5">Spelling Suggestion for query term</option>
                                                <option value="6">Ads</option>
                                                <option value="7">Others(Auto Suggest, Local, etc)</option>
                                            </select>
                                        </div>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="p-1 mb-3 bg-success text-white">Do you have AppId and/or Form Code ?</label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="exampleRadios" id="rbAppIdYes" value="option1" checked>
                                        <label class="form-check-label" for="exampleRadios1">
                                            Yes
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="exampleRadios" id="rbAppIdNo" value="option2">
                                        <label class="form-check-label" for="exampleRadios2">
                                            No
                                        </label>
                                    </div>

                                </div>


                                <div class="form-group">
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Where will the Bing APIs be called ?</h6>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="rbServerSide">
                                                <label class="form-check-label" for="rbServerSide">
                                                    Server Side (Prefered)
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="rbClientSide">
                                                <label class="form-check-label" for="rbClientSide">
                                                    Client Side
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="rbOthers">
                                                <label class="form-check-label" for="rbOthers">
                                                    Others
                                                </label>
                                            </div>


                                            <div class="form-group">
                                                <a href="#" class="btn btn-primary btn-icon-split btn-sm">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-flag"></i>
                                                    </span>
                                                    <span class="text">If Other, Please specify</span>
                                                </a>
                                                <input type="text" class="form-control form-control-user"
                                                    id="txtOtherfield" placeholder="Other Scenarion">
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="card shadow mb-4">
                                        <div class="card-header py-3">
                                            <h6 class="m-0 font-weight-bold text-primary">Detailed Scenario</h6>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <textarea class="form-control" required rows="5" placeholder="Provide detailed scenario" id="txtAreaDetailedScenario"></textarea>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="button" class="btn btn-primary" onclick="return sync();" data-target="#exampleModalLong">
                                    Preview On Boarding Form
                                </button>
                                <%--data-toggle="modal"--%>
                            </div>
                        </div>

                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->
                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Your Website 2021</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!--POP UP Model-->


        <!-- Modal -->
        <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">On Boarding Form</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">



                        <div class="form-group">
                            <label for="modeltxtTeamName">Team Name & Division </label>
                            <input type="text" class="form-control" runat="server" id="modeltxtTeamName" placeholder="....">
                        </div>

                        <div class="form-group">
                            <label for="modeltxtPartnerAlias">Partner Contact Microsoft Alias</label>
                            <input type="text" class="form-control" runat="server" id="modeltxtPartnerAlias" placeholder="....">
                        </div>

                        <div class="form-group">
                            <label for="modelSearchTxtTeamEmail">POC email Address (Search Team Contact)</label>
                            <input type="text" class="form-control" runat="server" id="modelSearchTxtTeamEmail" placeholder="....">
                        </div>

                        <div class="form-group">
                            <label for="modelTxtTeamEmail">Team Alias (Email)</label>


                            <input type="text" class="form-control" runat="server" id="modelTxtTeamEmail" placeholder="....">
                        </div>

                        <div class="form-group">
                            <label for="modeltxtExternalPartnerAlias">External partner email alias</label>

                            <input type="text" class="form-control" runat="server" id="modeltxtExternalPartnerAlias" placeholder="....">
                        </div>


                        <div class="form-group">
                            <label for="modeltxtProjectOverview">Project Overview : </label>

                            <textarea id="modeltxtProjectOverview" runat="server" class="form-control" rows="5" placeholder="......"></textarea>
                        </div>


                        <div class="form-group">
                            <label for="modelTargetDevice">Target Device : </label>
                            <input type="text" class="form-control" id="modelTargetDevice" runat="server" placeholder="....">
                        </div>

                        <div class="form-group">
                            <label for="modelTxtDate">Date</label>
                            <input type="text" class="form-control" runat="server" id="modelTxtDate" placeholder="....">
                        </div>

                        <div class="form-group">
                            <label for="modeltxtAreaDistribution">What is distribution method for your product/service/application : </label>
                            <textarea id="modeltxtAreaDistribution" class="form-control" runat="server" rows="5" placeholder="......"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="modeltxtAreaMarket">Market/countries where List will be shown : </label>
                            <textarea id="modeltxtAreaMarket" class="form-control" runat="server" rows="5" placeholder="......"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="modelTxtQPM">Estimated number of queries per month : </label>
                            <input type="text" id="modelTxtQPM" class="form-control" runat="server" placeholder="......">
                        </div>

                        <div class="form-group">
                            <label for="modelTxtQPS">Estimated number of queries per second : </label>
                            <input type="text" id="modelTxtQPS" class="form-control" runat="server" placeholder="......">
                        </div>
                        <div class="form-group">
                            <label for="modelTxtImpAdhereTo">Please ensure your implementation adheres to the : </label>
                            <input type="text" class="form-control" id="modelTxtImpAdhereTo" runat="server" placeholder="....">
                        </div>

                        <div class="form-group">
                            <label for="modeltxtAreaDataTypes">considered Data types to be used : </label>
                            <textarea id="modeltxtAreaDataTypes" class="form-control" runat="server" rows="5" placeholder="......"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="modelTxtFormCode">Do you have AppId and/or Form Code ? : </label>
                            <input type="text" class="form-control" id="modelTxtFormCode" runat="server" placeholder="....">
                        </div>



                         <div class="form-group">
                            <label for="modeltxtBingAPICalledAt">Where will the Bing APIs be called ?</label>

                          <input type="text" class="form-control" id="modeltxtBingAPICalledAt" runat="server" placeholder="....">
                        </div>




                        <div class="form-group">
                            <label for="modeltxtDetailedScenario">Detailed Scenario : </label>
                            <textarea id="modeltxtDetailedScenario" class="form-control" runat="server" rows="5" placeholder="......"></textarea>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                        <asp:Button ID="btnSubmitClick" UseSubmitBehavior="false" Style="width: 40%" class="btn btn-success" runat="server" Text="Post Data" OnClick="btnSubmit_Click1" />


                    </div>
                </div>
            </div>
        </div>

    </form>



    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>

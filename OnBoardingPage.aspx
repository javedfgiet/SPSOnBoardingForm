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
            var txtTeamName = document.getElementById('txtTeamName');
            var modeltxtTeamName = document.getElementById('modeltxtTeamName');
            modeltxtTeamName.value = txtTeamName.value;

            var txtUserName = document.getElementById('txtUserName');
            var modeltxtUserName = document.getElementById('modeltxtUserName');
            modeltxtUserName.value = txtUserName.value;


            var txtPartnerContactName = document.getElementById('txtPartnerContactName');
            var modeltxtPartnerAlias = document.getElementById('modeltxtPartnerAlias');
            modeltxtPartnerAlias.value = txtPartnerContactName.value;


            var txtSearhTeamContact = document.getElementById('txtSearhTeamContact');
            var modelSearchTxtTeamEmail = document.getElementById('modelSearchTxtTeamEmail');
            modelSearchTxtTeamEmail.value = txtSearhTeamContact.value;

            var txtTeamAlias = document.getElementById('txtTeamAlias');
            var modelTxtTeamEmail = document.getElementById('modelTxtTeamEmail');
            modelTxtTeamEmail.value = txtTeamAlias.value;

            var txtAreaProjectOverView = document.getElementById('txtAreaProjectOverView');
            var modeltxtProjectOverview = document.getElementById('modeltxtProjectOverview');
            modeltxtProjectOverview.value = txtAreaProjectOverView.value;

            var modelTxtDate = document.getElementById('modelTxtDate');
            var txtDate = document.getElementById('txtDate');
            modelTxtDate.value = txtDate.value;

            var txtAreaMarkets = document.getElementById('txtAreaMarkets');
            var modeltxtAreaMarket = document.getElementById('modeltxtAreaMarket');
            modeltxtAreaMarket.value = txtAreaMarkets.value;

            var txtQPM = document.getElementById('txtQPM');
            var modelTxtQPM = document.getElementById('modelTxtQPM');
            modelTxtQPM.value = txtQPM.value;

            var txtQPS = document.getElementById('txtQPS');
            var modelTxtQPS = document.getElementById('modelTxtQPS');
            modelTxtQPS.value = txtQPS.value;

            var listConsideredDataTypes = document.getElementById('listConsideredDataTypes');
            var modeltxtAreaDataTypes = document.getElementById('modeltxtAreaDataTypes');
            modeltxtAreaDataTypes.value = listConsideredDataTypes.value;

            var txtAreaDetailedScenario = document.getElementById('txtAreaDetailedScenario');
            var modeltxtDetailedScenario = document.getElementById('modeltxtDetailedScenario');
            modeltxtDetailedScenario.value = txtAreaDetailedScenario.value;


            var distributionMethod = "";
            if (document.getElementById("chkInternalMicrosoft").checked = true) {
                distributionMethod = "Microsoft Internal user only";
            }
            if (document.getElementById("chkMicrosoftenterprise").checked == true) {
                distributionMethod = distributionMethod + '\n' + "Microsoft enterprise/consumer softwares";
            }
            if (document.getElementById("chkSeconParty").checked == true) {
                distributionMethod = distributionMethod + '\n' + "2nd party, 3 rdparty or OEM services/devices";
            }
            if (document.getElementById("chkPublicdistribution").checked == true) {
                distributionMethod = distributionMethod + '\n' + "Public distribution of library through Github or similar";
            }
            if (document.getElementById("chkotherPackage").checked == true) {
                distributionMethod = distributionMethod + '\n' + "Other package distribution outside Microsoft : \n" + document.getElementById('txtOtherScenario').value;
            }
            var modeltxtAreaDistribution = document.getElementById('modeltxtAreaDistribution');
            modeltxtAreaDistribution.value = distributionMethod;

            var BingProductGuideline = "";
            if (document.getElementById("rbAccept").checked == true) {
                BingProductGuideline = "Accept";
            }
            else {
                BingProductGuideline = "Not Accept";
            }

            var modelTxtImpAdhereTo = document.getElementById('modelTxtImpAdhereTo');
            modelTxtImpAdhereTo.value = BingProductGuideline;


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

            IfOtherPleaseSpecify.value = BingAPICalledAt;

            var AppIdPresent = "";
            var modelTxtFormCode = document.getElementById('modelTxtFormCode');
            if (document.getElementById("rbAppIdYes").checked == true) {
                AppIdPresent = "Yes";
            }
            else if (document.getElementById("rbAppIdNo").checked == true) {
                AppIdPresent = "No";
            }
            modelTxtFormCode.value = AppIdPresent;


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
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                    aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small"
                                                placeholder="Search for..." aria-label="Search"
                                                aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
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
                                        id="txtTeamName" placeholder="Team Name & Division">
                                </div>
                                <div class="form-group">

                                    <input type="text" class="form-control form-control-user"
                                        id="txtUserName" placeholder="User Name">
                                </div>
                                <div class="form-group">

                                    <input type="text" class="form-control form-control-user"
                                        id="txtPartnerContactName" placeholder="Panrtner Contact Name">
                                </div>
                                <div class="form-group">

                                    <input type="text" class="form-control form-control-user"
                                        id="txtSearhTeamContact" placeholder="Search Team Contact">
                                </div>
                                <div class="form-group">

                                    <input type="text" class="form-control form-control-user"
                                        id="txtTeamAlias" placeholder="Team Alias">
                                </div>
                                <div class="form-group">

                                    <textarea class="form-control" rows="5" placeholder="Project Overview" id="txtAreaProjectOverView"></textarea>
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
                                                <input type="text" class="form-control form-control-user"
                                                    id="txtQPM" placeholder="Estimate query volume per month by market">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-user"
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
                                                <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
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
                                            <select class="form-select" id="listConsideredDataTypes" size="3" aria-label="size 3 select example">
                                                <option selected>Open this select menu</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
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
                                                <textarea class="form-control" rows="5" placeholder="Provide detailed scenario" id="txtAreaDetailedScenario"></textarea>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="button" class="btn btn-primary" onclick="sync()" data-toggle="modal" data-target="#exampleModalLong">
                                    Preview On Boarding Form
                                </button>

                            


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
                            <label for="modeltxtTeamName">Team Name & Organization </label>
                            <input type="text" class="form-control" id="modeltxtTeamName" disabled="disabled" placeholder="......">
                        </div>

                        <div class="form-group">
                            <label for="modeltxtUserName">User Name </label>
                            <input type="text" class="form-control" id="modeltxtUserName" disabled="disabled" placeholder="......">
                        </div>

                        <div class="form-group">
                            <label for="modeltxtPartnerAlias">Partner Contact Alias  </label>
                            <input type="text" class="form-control" id="modeltxtPartnerAlias" disabled="disabled" placeholder="......">
                        </div>

                        <div class="form-group">
                            <label for="modelSearchTxtTeamEmail">Search Team Contact Alias : </label>
                            <input type="text" class="form-control" id="modelSearchTxtTeamEmail" disabled="disabled" placeholder="....">
                        </div>
                        <div class="form-group">
                            <label for="modelTxtTeamEmail">Team Alias : </label>
                            <input type="text" class="form-control" id="modelTxtTeamEmail" disabled="disabled" placeholder="....">
                        </div>
                        <div class="form-group">
                            <label for="modeltxtProjectOverview">Project Overview : </label>
                            <textarea id="modeltxtProjectOverview" class="form-control" disabled="disabled" rows="5" placeholder="......"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="modelTxtDate">Date</label>
                            <input type="text" class="form-control" id="modelTxtDate" disabled="disabled" placeholder="....">
                        </div>

                        <div class="form-group">
                            <label for="modeltxtAreaDistribution">What is distribution method for your product/service/application : </label>
                            <textarea id="modeltxtAreaDistribution" class="form-control" disabled="disabled" rows="5" placeholder="......"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="modeltxtAreaMarket">Market/countries where List will be shown : </label>
                            <textarea id="modeltxtAreaMarket" class="form-control" disabled="disabled" rows="5" placeholder="......"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="modelTxtQPM">Estimated number of queries per month : </label>
                            <input type="text" id="modelTxtQPM" class="form-control" disabled="disabled" placeholder="......">
                        </div>

                        <div class="form-group">
                            <label for="modelTxtQPS">Estimated number of queries per second : </label>
                            <input type="text" id="modelTxtQPS" class="form-control" disabled="disabled" placeholder="......">
                        </div>
                        <div class="form-group">
                            <label for="modelTxtImpAdhereTo">Please ensure your implementation adheres to the : </label>
                            <input type="text" class="form-control" id="modelTxtImpAdhereTo" disabled="disabled" placeholder="....">
                        </div>

                        <div class="form-group">
                            <label for="modeltxtAreaDataTypes">considered Data types to be used : </label>
                            <textarea id="modeltxtAreaDataTypes" class="form-control" disabled="disabled" rows="5" placeholder="......"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="modelTxtFormCode">Do you have AppId and/or Form Code ? : </label>
                            <input type="text" class="form-control" id="modelTxtFormCode" disabled="disabled" placeholder="....">
                        </div>





                        <div class="form-group">
                            <label for="modelTargetDevice">Target Device : </label>
                            <input type="text" class="form-control" id="modelTargetDevice" disabled="disabled" placeholder="....">
                            <label for="IfOtherPleaseSpecify">Other Target Device : </label>
                            <input type="text" class="form-control" id="IfOtherPleaseSpecify" disabled="disabled" placeholder="......" />
                        </div>


                        <div class="form-group">
                            <label for="modeltxtDetailedScenario">What is distribution method for your product/service/application : </label>
                            <textarea id="modeltxtDetailedScenario" class="form-control" disabled="disabled" rows="5" placeholder="......"></textarea>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        
                        <asp:Button ID="btnSubmitClick" UseSubmitBehavior="false" Style="width: 40%" class="btn btn-success" runat="server" Text="Post Data" OnClick="btnSubmit_Click1" />
                       
                     <%--   <button type="button" class="btn btn-primary">Save changes</button>--%>
                    </div>
                </div>
            </div>
        </div>


   
    

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
     </form>
</body>

</html>

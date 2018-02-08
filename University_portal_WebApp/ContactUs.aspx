<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #googleMap {
            height: 517px;
            width: 100%;
            background-color: grey;
        }
    </style>
    <script>
        function myMap() {
            var myLatlng = new google.maps.LatLng(22.368874, 91.833497);
            var mapOptions = {
                center: myLatlng,
                zoom: 18,
                mapTypeId: 'hybrid'
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                //animation: google.maps.Animation.BOUNCE

            });

            var infowindow = new google.maps.InfoWindow({
                content: "Desh IT"
            });
            marker.addListener('click', function () {
                infowindow.open(map, marker);
            });

            marker.addListener('mouseout',
                function () {
                    infowindow.close(map, marker);
                });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyApLXPMNCsFVeh4VrEyO3ESoBJPzCbzY0o&callback=myMap" async defer></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div id="contactUs">
            <div class="row">
                <div class="col-lg-6 contact">
                    <h1>Contact Us</h1>
                    <!-- We're going to place the form here in the next step -->
                    <div id="notification" runat="server"></div>
                    <div class="content-form-page">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="lblfname" AssociatedControlID="txtFirstName" runat="server" Text="Firstname *"></asp:Label>
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="Please enter your firstname" required="required"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="Label1" AssociatedControlID="txtLastName" runat="server" Text="Lastname *"></asp:Label>
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Please enter your lastname *" required="required"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="lblEmail" AssociatedControlID="txtEmail" runat="server" Text="Email *"></asp:Label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Please enter your email *" required="required"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="lblPhone" AssociatedControlID="txtPhone" runat="server" Text="Phone"></asp:Label>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Please enter your phone"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:Label ID="lblSubject" AssociatedControlID="txtSubject" runat="server" Text="Subject"></asp:Label>
                                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Please enter your Subject"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:Label ID="lblMessage" AssociatedControlID="txtMessage" runat="server" Text="Message"></asp:Label>
                                    <asp:TextBox ID="txtMessage" runat="server" class="form-control" placeholder="Please,leave us a message" Rows="4" required="required" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Send message" OnClick="btnSubmit_Click" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <p class="text-muted"><strong>*</strong> These fields are required.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.8 -->
                <div class="col-lg-6">
                    <div id="googleMap"></div>
                </div>
            </div>
            <!-- /.row-->
        </div>
    </div>
    <!-- /.container-->
</asp:Content>


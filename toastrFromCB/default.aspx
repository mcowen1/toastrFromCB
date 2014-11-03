<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="toastrCB._default" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <title>Demonstration of toastr use from Code Behind</title>
    <link href="content/bootstrap.min.css" rel="stylesheet" />
    <link href="content/toastr.min.css" rel="stylesheet" />
    <link href="content/bootstrap-nav-wizard.css" rel="stylesheet" />
    <link href="content/myStyles.css" rel="stylesheet" />

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/toastr.min.js"></script>
    <script src="Scripts/myScripts.js"></script>
</head>
<body>
    <form id="form2" runat="server">
        <a href="https://github.com/mcowen1/" class="hidden-xs" target="_blank">
            <img style="z-index: 1001; position: fixed; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_green_007200.png" alt="Fork me on GitHub"></a>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="container">
            <div class="jumbotron">
                <div class="media">
                    <a class="pull-left" href="#">
                        <img src="Images/toast.jpg" class="img-circle  toastrimagsize "
                            alt="Responsive Image" />
                    </a>
                    <div class="media-body">
                        <h2>How to use toastr from the Code Behind File</h2>
                    </div>
                </div>
            </div>

            <div class="list-group">
                <a id="toastrDef"   data-toggle="popover" title="toastr" data-content="toastr was created by Hans Fjällemark and John Papa using HTML5 and JavaScript. toastr's are popup alerts that can be used to provide a more responsive
                 and more modern replacement for traditional alert dialiog boxes. You can see the code at  https://github.com/CodeSeven">
                    <h3>What is a toastr ?   Try these buttons.</h3>
                </a>
                                 <div class="panel-body">
                                <asp:Button ID="btnSuccess" runat="server" CssClass="btn btn-success" Text="Success" OnClick="btnSuccess_Click" Width="100px" />
                                <asp:Button ID="btnError" runat="server" CssClass="btn  btn-danger" Text="Error" OnClick="btnError_Click" Width="100px" />
                                <asp:Button ID="btnInfo" runat="server" CssClass="btn btn btn-info" Text="Information" OnClick="btnInfo_Click" Width="100px" />
                                <asp:Button ID="btnWarning" runat="server" CssClass="btn btn btn-warning" Text="Warning" OnClick="btnWarning_Click" Width="100px" />
                            </div>
                <a href="#" class="list-group-item active">
                   
                    <p class="list-group-item-text">We are accustomed to using toastrs with HTML inputs that call a jQuery toastr popup.</p>
                    <p class="list-group-item-text">The diffrence here is that these buttons are SERVER side ASP buttons with code behind events that call the JavaScript toastr functions.</p>
                    <p class="list-group-item-text">This allows us to use the advantage of rapid development while still using the benifits of JavaScript and jQuery.</p>
                    <p class="list-group-item-text">It can't get any simpler than this.</p>
                </a>

                <div class="panel panel-default">
                    <div class="row">
                        <div class=" col-lg-6">
           


                        </div>
                        <div class=" col-lg-6">
                            <div class="panel-body">
                                <%--    <h4>So what's the difference between this method and the traditional method of diplaying toastr's.</h4>
                              <span>toastr's are usually called from with in the HTML file.
                                Traditionaly the toastr is raised by some event in the HTML file such as the following button and a javascript response to this selector.</span>
                                 <button id="toastrTestButton" type="button" title="tt" class="btn btn-primary">HTML toastr</button> 
                                --%>
                            </div>
                        </div>
                    </div>

                    <div class="panel-body">
                        <div class='row'>
                            <h2>Here is how it's done.</h2>
                            <div>
                                <ul id="Steps" class='nav nav-wizard'>
                                    <li id="nav1" class='active'><a href='#step1' data-toggle="tab">1- Install toastr </a></li>
                                    <li id="nav2"><a href='#step2' data-toggle="tab">2- Prepare your page</a></li>
                                    <li id="nav3"><a href='#step3' data-toggle="tab">3- Add a Button</a></li>
                                    <li id="nav5"><a href='#step4' data-toggle="tab">4- Add the JavaScript </a></li>
                                    <li id="nav6"><a href='#step5' data-toggle="tab">5- Making it work</a></li>
                                </ul>
                                <br />
                                <div id="myTabContent" class="tab-content">
                                    <div class="tab-pane fade  active in  adbordereddiv" id="step1">
                                        <h3>Get toastr</h3>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <p>
                                                    The simplist way to install toastr is to use NuGet as usual.<br />
                                                    If you are not familiar with NuGet then follow these steps.
                                                </p>
                                                <img src="Images/toastrStep1.png" alt=" " class="img-responsive" /><br />
                                                <br />
                                                <p>and search for and select toastr.</p>

                                                <img src="Images/toastrStep2.png" class="img-responsive" />

                                                <p>Go Ahead and install this.</p>
                                                <p>Follow the same steps to install both <mark>jQuery</mark> and <mark>Bootstrap</mark>.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade adbordereddiv" id="step2">
                                        <h3>Things to include</h3>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <p>
                                                    Your project should now have, inside the Content folder and Scripts folder, the following files.<br />
                                                    I have added a style sheet <mark>myStyles</mark> and a javascript file <mark>myScripts</mark>. These files are,
                                                    of course, for use by my own css and js code.<br />
                                                    Now create a reference to these files by dragging them on to your HTML page. In most cases you will drag them to the
                                                    application's master page.
                                                </p>
                                                <img src="Images/toastrStep4.png" class="img-responsive" />
                                                <br />
                                                <p>A couple of cautions.</p>
                                                <p>1. Make sure that <mark>myStyles.css</mark> is the last CSS in the list. This will allow you to overwrite CSS in the other stylesheets. </p>
                                                <p>2. Make sure that <mark>jQuery.js</mark> is the first  script file as bootstrap depends on jQuery </p>
                                                <p></p>
                                            </div>
                                            <div class="col-sm-6">
                                                <img src="Images/toastrStep3.png" />

                                            </div>

                                        </div>

                                    </div>
                                    <div class="tab-pane fade adbordereddiv" id="step3">
                                        <h3>Step 3 Add an ASP Button</h3>

                                        <div class="row">
                                            <div class="col-sm-10">
                                                <p>
                                                    Add an asp button and wire it up to a click event in the code behind.
                                                </p>
                                                <asp:Button ID="btnTest" runat="server" Text="Push Me" CssClass="btn btn-success" Height="36px" OnClick="btnTest_Click" />
                                                <br />
                                                <br />
                                                &lt;asp:Button ID="btnTest" runat="server" Text="Push Me" CssClass="btn btn-success" Height="36px" OnClick="btnTest_Click" /&gt;<br />
                                                <br />
                                                <pre>

        protected void btnTest_Click(object sender, EventArgs e)
        {

        }

                                                </pre>

                                            </div>
                                            <div class="col-sm-2">
                                            </div>

                                        </div>

                                    </div>
                                    <div class="tab-pane fade adbordereddiv" id="step4">
                                        <h3>Step 4 Add the JavaScript</h3>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <p>Below is all the JavaScript you need to make toastr work for you.</p>
                                                <img src="Images/toastrStep6.png" class="img-responsive" />
                                                <p><mark>toastr.options.positionClass = 'toast-top-center_ok' </mark>is an option that sets the position of the popup toastr.</p>
                                                <p>If you read the toastr documentation it will do a good job of explaining this and many other optional settings. </p>
                                                <p>The particular one I'm using comes from my own CSS file which illustrates that you can write your own CSS for toastr</p>
                                                <pre>
.toast-top-center_ok { 
    top: 450px; 
    left: 30%; 
    margin-left: -150px; 
  
} 
                                                </pre>
                                            </div>
                                            <div class="col-sm-6">
                                                <p>
                                                    You can put this JavaScript between <mark>&lt;script&gt;</mark> tags on your HTML page or, preferably, place the code inside your own <mark>Script File i.e. myScripts.js</mark>
                                                    <br />
                                                    NOTE: Do <mark>not</mark> put this javascript code inside the document ready function or in will not work.

                                                </p>


                                                <pre>
 $( document ).ready(function() {
    DO NOT PUT IT HERE.
});

or if you use

$(function(){
    
    DO NOT PUT IT HERE.                                             
});

                                                </pre>
                                            </div>

                                        </div>

                                    </div>



                                    <div class="tab-pane fade adbordereddiv" id="step5">
                                        <h3>Making it work</h3>

                                        <div class="row">
                                            <div class="col-sm-10">
                                                <p>The last step. Just add the following function to your code behind file.</p>
                                                <pre>

        protected void DisplayToastr(string message, string type)
        {

            Page.ClientScript.RegisterStartupScript(this.GetType(), "toastr", "alertMe(" + "\"" + message + "\"" + "," + "\"" +  type + "\"" + " );", true);
        }

                                                </pre>
                                                <p>That looks a bit complicated except that ,you as the user, don't have do any more than to call
                                                <mark>DisplayToastr(message,type) </mark> from what ever event you would like to send the popup message.</p>
                                                <p>Where </p>
                                                <ul>
                                                    <li><mark>message</mark> is the test that you want to diplsy in the toastr</li>
                                                    <li><mark>type</mark> is the type of display
                                                        <ul>
                                                            <li>Success</li>
                                                            <li>Error</li>
                                                            <li>Info</li>
                                                            <li>Warning</li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                                <br />
                                                <p>Here is a typical example example of it's use</p>
                                                <pre>

        public string display;
        
        protected void btnSuccess_Click(object sender, EventArgs e)
        {
            //lets assume we can get the logged on user from a session veriable
            string userID = Session["userID"].toString();
            IsUserAuthorized(string userID);

        }

        public void IsUserAuthorized(string userID)
        {
                string display;
                string type;
                bool isAuthorized = CheckDataBaseRecordForUserAuthorization(userID);
                if(isAurthorized)
                {
                    display = userID + " has been Success authorized";
                    type =     "Success";                                                   
                }
                else
                {
                    display = userID + " authorization failed";
                    type =     "Error";                                
                }

                DisplayToastr(display, type);
                                                                                     
                                                    
        }

                                                </pre>
                                                <p>Even better create an ENUM so you don't have to remeber the type options.</p>
                                                <pre>
        enum toastrTypes { Success, Error, Info, Warning };
       public void IsUserAurorizaed(userID)
        {
                string display;
                string type;
                bool isAuthorized = CheckDataBaseRecordForUserAuthorization(userID);
                if(isAurthorized)
                {
                    display = userID + " has been Success authorized";
                    type =     toastrTypes.Success.toString();                                                   
                }
                else
                {
                    display = userID + " authorization failed";
                    type =      toastrTypes.Error.toString();                                
                }

                DisplayToastr(display, type);
                                                                                     
                                                    
        }

                                            </pre>

    
                                            </div>
                                            <div class="col-sm-2">
     
                                            </div>

                                        </div>

                                    </div>


                                </div>
                                <br />
                                <br />
                                <button type="button" id="btnPrev" title="Move Next" class="btn btn-primary" disabled="disabled">< Previous</button>
                                <button type="button" id="btnNext" title="Move Next" class="btn btn-primary">Next ></button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div style="text-align: center; color: gray; font-size: 14px; width: 100%; height: auto; background-color: lightgray; border-top: solid; border-width: 1px; padding-bottom: 10px; padding-top: 10px; border-top-style: inset; border-top-color: gray;">
                <span style="color: gray; padding-right: 10px;">&copy 2014-m.cowen design</span>
                <img src="Images/logo24.png" alt="..." /><span style="color: green; font-family: Segoe Script; padding-left: 10px;"> Software that pays its own way.</span>
            </div>

        </div>
        <script>





            $(function () {

                $('#toastrTestButton').click(function () {
                    toastr.success("This is a Traditional HTML toastr");
                });


                $("#toastrDef").click(function (evt) {

                    evt.preventDefault();
                }).popover({
                    placement: 'top'
                });


                $('#Button1').click(function () {
                    var firstname = $('#firstName').text;
                    if (firstname == "") {

                        toastr.error('Can Not Be empty');
                    }
                });

                // n = How many steps are there in the wizard
                //Count the li's in the "Steps" List
                var n = $('ul#Steps li').length;

                $('ul#Steps li').click(function () {

                    //Index of the slected "li" item
                    var x = $('ul#Steps li').index(this);

                    //Disable the "Next" button if the last step is selected
                    // if the selected list item "li" index is equal to the total items n-1
                    // (-1 because the index is 0 based) then we are at the
                    //last item and there are no more "Next" items to select.
                    if (x == (n - 1)) {
                        $('#btnNext').attr('disabled', 'disabled');
                    }
                    else {
                        //Enable the next button if th elast wizard steop is not selected
                        $('#btnNext').removeAttr('disabled');
                    }

                    //Disable the "Previous Button if the first step is selected.
                    //If the selected "li" item index is 0 then the first item
                    //has been selected so diable the "previous" button.
                    if (x == 0) {
                        $('#btnPrev').attr('disabled', 'disabled');
                    }
                    else {
                        $('#btnPrev').removeAttr('disabled');
                    }


                    //Set the progress bar value to the current index value of the active "li"
                    var i = $("li.active").index();
                    nextstep(x)

                });


                $('#btnNext').click(function () {
                    var n = $("li").length;
                    var x = $('.progress-bar').attr('aria-valuenow');

                    $("li.active").next().addClass("active");
                    $(".tab-pane.active").next().addClass("active in");
                    $("li.active").prev().removeClass("active");
                    $(".tab-pane.active").prev().removeClass("active in");
                    if ($('#Steps').children('li').last().hasClass('active')) {
                        $('#btnNext').attr('disabled', 'disabled');
                    }
                    $('#btnPrev').removeAttr('disabled');

                    //Set the progress bar value
                    var i = $("li.active").index();
                    nextstep(i);
                });

                $('#btnPrev').click(function () {
                    var n = $("li").length;
                    var x = $('.progress-bar').attr('aria-valuenow');

                    $("li.active").prev().addClass("active");
                    $(".tab-pane.active").prev().addClass("active in");
                    $("li.active").next().removeClass("active");
                    $(".tab-pane.active").next().removeClass("active in");
                    if ($("#nav1").hasClass("active")) {
                        $('#btnPrev').attr('disabled', 'disabled');
                    }
                    $('#btnNext').removeAttr('disabled');

                    //Set the progress bar value
                    var i = $("li.active").index();
                    nextstep(i);
                });


                //Set the value of the progress bar when the List is selected.
                function nextstep(x) {
                    var percent = (x * 100 / (n - 1)) + '%'
                    //Set the bar value
                    $('.progress-bar').css('width', percent).attr('aria-valuenow', x);
                    //Place the text inside the progress bar
                    $('.progress-bar').html((x + 1) + " of " + n)

                };
            });

    </script>
    </form>
</body>
</html>

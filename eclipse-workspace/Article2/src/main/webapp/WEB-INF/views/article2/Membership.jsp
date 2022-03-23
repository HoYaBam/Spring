<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script type="text/javascript">
    function fn_sendMember(){
    	   var frmMember=document.membership;
    	   var id=frmMember.id.value;
    	   var pwd=frmMember.pwd.value;
    	   var name=frmMember.name.value;
    	   var email=frmMember.email.value;

    	   if(id.length==0 ||id==""){
    	      alert("ID is required.");
    	   }else if(pwd.length==0 ||pwd==""){
    		   alert("PW is required.");
    	   }
    	   else if(name.length==0 ||name==""){
    		   alert("NAME is required.");
    	   }else if(email.length==0 ||email==""){
    		   alert("Email is required.");
    	   }else{
    	      frmMember.method="post";
    	      frmMember.action="member";
    	      frmMember.submit();
    	   } 
    	}
</script>

    <style>
        * {
            margin: 0;
            padding: 0;
        }


        #total {
            width: 1500px;
            height: 1000px;
            margin: 0 auto;
            background: #fff;
            border: 
        }




        #tttop {
            width: 1500px;
            height: 150px;

            border-bottom: 1px solid black;
            position: relative;

        }

        #logo {
            width: 20%;
            height: 100px;
            margin-left: 100px;
            position: absolute;
            top: -30px;
            left: 70px;
            margin-top: 40px;
        }
        #logo img{
            width: 150px;
        }
         #login {
            width: 85%;
            height: 100%;

            padding-top: 30px;
            position: absolute;
            top: 0;
            left: 440px;
            text-align: center;
        }

        #login >ul >li  {
            list-style: none;
            float: left;
            width: 50px;
            height: 250px;
        }

        #login .hight{
            float: left;
            width: 200px;
            height: 60px;
            margin-top: 60px;
            line-height: 30px;
            list-style: none;
        }
        #login .hight a{
            width:250px;
        }
        #login li a {
            color: black;
            text-decoration: none;
            font-size: 24px;
            width: 50px;
        }
        #topmain{
            width: 1500px;
            height: 820px;
            position: relative;
            top:300px;
            border-bottom: 1px solid black;
        }
        #topp {
            width: 100%;
            height: 60px;
            font-size: 18px;
            margin-top: 80px;
            margin-bottom: 70px;
            border-bottom: 1px solid black;
            position: absolute;
            top: -200px;
        }

        #topp li {
            list-style: none;
            float: left;
            margin-left: ;
            font-size: 18px;
            margin-left: 320px;
        }

        #section {
            width: 100%;
            height: 60px;
            font-size: 18px;
            margin-left: 670px;
        }
		 #mainbox {
            width: 1500px;
            height: 500px;
        }

        #mainfrom {
            width: 700px;
            height: 500px;
            position: absolute;
            left: 450px;
        }
        #mainfrom table {
            width: 700px;
            height: 500px;
        }
        #mainfrom input {
            margin-left:  100px;
            width: 400px;
            height: 50px;
            border: 1px solid #fff;
            border-bottom: 1px solid #000;
       
    </style>










</head>

<body>
    <div id="total">
        <div id="tttop">
            <div id="logo">
                <a href="mainpage.jsp"><img src="images/logo2.png"></a>
            </div>

           
           <div id="login">
            <ul>
                <li class="hight"><a href="#">notice</a></li>
                <li class="hight"><a href="Login.html">login</a></li>
                <li class="hight"><a href="#">introduction</a></li>
                <li class="hight"><a href="#">
                        <div class="dropdown">
                            <a class="btn btn-secondary-dark dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                curriculum
                            </a>

                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </div>
                        
                    </a>
                    </li>

            </ul>



        </div>
<div id="topmain">
        <div id="topp">
            <ul>
                <li>
                    Terms
                </li>
                <li>
                    Enter information
                </li>
                <li>
                    Join
                </li>
            </ul>
        </div>



        <div id="section">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                <label class="form-check-label" for="inlineRadio1">Personal</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                <label class="form-check-label" for="inlineRadio2">Corporation</label>
            </div>

        </div>

<div id="mainbox">
                    <form id="mainfrom" name="membership">
                       <table>
                        <tr>
                            <td>ID <input type="text" name="id"></td>
                        </tr>
                        <tr>
                            <td>PW <input type="text" name="pwd"></td>
                        </tr>
                        <tr>
                            <td>NAME <input type="text" name="name"></td>
                        </tr>
                        <tr>
                            <td>Email <input type="text" name="email"></td>
                        </tr>
                        <tr>
                            <td><input type="button" value="singup" onclick="fn_sendMember()"></td>
                        </tr>
                        </table>
                    </form>
                </div>

	
        </div>
     </div>




    </div>

</body></html>
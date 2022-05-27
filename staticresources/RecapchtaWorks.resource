<html>
  <head>
    <title></title>
     <script src="https://www.google.com/recaptcha/api.js" async defer></script>
  </head>
  <body>
<div>
     <form action="?" onsubmit="return validateForm()" method="POST">
      <div class="g-recaptcha" data-sitekey="ABCDEF"></div>
      <br/>
      <div>
        <button type="submit" style=' height: 34px; border: none; font-size: 18px; width: 300px; background-color: #0070d2; color: #fff; display: inline-flex; line-height: 1.875rem, white-space: normal; border-radius: 5px;' >
          <p style="margin: auto;">SUBMIT</p>
        </button>
      </div>
      
    </form>

</div>
    
 
    <script type="text/javascript">
        function validateForm(){
 
            if(grecaptcha.getResponse().length == 0){
		alert('Please click the reCAPTCHA checkbox');
                parent.postMessage("captcha failed", location.origin);
                return false;
            }
            parent.postMessage("captcha success", location.origin);
            return true;
        }
    </script>
  </body>
</html>

<!--  value="SUBMIT" -->
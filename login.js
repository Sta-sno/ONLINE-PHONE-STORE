document.addEventListener('DOMContentLoaded', function() {
    const loginForm = document.getElementById('login-form');
    const errorMessage = document.getElementById('error-message');

    loginForm.addEventListener('submit', function(event) {
        event.preventDefault();

        const username = loginForm.elements['username'].value;
        const password = loginForm.elements['password'].value;

        // Validate the username and password (You can replace this with your own validation logic)
        if (username === 'admin' && password === 'password') {
            // Successful login, redirect or perform other actions
            alert('Login successful!');
        } else {
            // Display error message
            errorMessage.textContent = 'Invalid username or password. Please try again.';
        }
    });
});

      const loginForm = document.querySelector("form.login");
      const loginBtn = document.querySelector("label.login");
      const signupBtn = document.querySelector("label.signup");
      const signupLink = document.querySelector("form .signup-link a");
      signupBtn.onclick = (()=>{
        loginForm.style.marginLeft = "-50%";
      });
      loginBtn.onclick = (()=>{
        loginForm.style.marginLeft = "0%";
      });
      signupLink.onclick = (()=>{
        signupBtn.click();
        return false;
      });


      //PASSWORD VERIFICATION
/*function CheckPassword(inputtxt) 
{ 
var decimal=  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
if(inputtxt.value.match(decimal)) 
{ 
alert('Correct, try another...')
return true;
}
else
{ 
alert('Wrong...!')
return false;
}
}*/

//EMAIL VALIDATION
/*function ValidateEmail(input) {

  var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

  if (input.value.match(validRegex)) {

    alert("Valid email address!");

    document.form1.text1.focus();

    return true;

  } else {

    alert("Invalid email address!");

    document.form1.text1.focus();

    return false;

  }

}*/
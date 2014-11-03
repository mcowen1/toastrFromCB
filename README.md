Display toastrs using Code Behind

Usually toastrs are displayed by using client side input controls that call a JavaScript function.
In my programming I find that the use of server side controls prove to provide a far quicker development cycle than using client side controls.

However, I love toastrs. They provide a very attractive and modern look to your applications as compared to dialog type alert boxes. 

I decided to see if toastrs could be used by server side controls and called in the code behind events and happily "YES" it can be done.

It proved to be quite simple. The only existing problem that I am still experimenting with is the problem of positioning the toastr during server side postback. I have not been able to make them work when using update panels so we have the problem that the toastr may display out of the view of the control. 

If you look at the code you will see that you can position the toastr using your own CSS but this does not completely solve the problem.
You can see and example at  http://www.raddotnet.com/toastr_codebehind.aspx

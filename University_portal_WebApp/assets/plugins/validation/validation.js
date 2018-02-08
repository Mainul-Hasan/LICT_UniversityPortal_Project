$(document).ready(function () {

    $.validator.setDefaults({
        errorClass: 'help-block',
        highlight: function (element) {
            //$(element).nextAll('.form-control-feedback').show().removeClass('glyphicon-ok').addClass('glyphicon-remove');
            $(element)
              .closest('.form-group')
              .addClass('has-error');
        },
        unhighlight: function (element) {
            $(element)
              .closest('.form-group')
              .removeClass('has-error');
        }
        
    });

    $.validator.addMethod('strongPassword',
        function (value, element) {
            return this.optional(element) || value.length >= 6 && /\d/.test(value) && /[a-z]/i.test(value);
        },
        'Your password must be at least 6 characters long and contain at least one number and one char\'.');

    $("#regform").validate({
        rules: {
            //This section we need to place our custom rule for the control.  
            txtName: {
                required: true
            },

            txtEmail: {
                required: true,
                email: true
            },

            txtPassword: {
                required: true,
                strongPassword: true
            },

            txtConPassword: {
                required: true,
                equalTo: "#txtPassword"
            }
        },
        messages: {
            //This section we need to place our custom validation message for each control.  
            txtName: {
                required: "Name is required."
            },

            txtEmail: {
                required: "Email is required.",
                email: "Please enter a <em>valid</em> address"
            },

            txtPassword: {
                required: "Password is required"
            },

            txtConPassword: {
                required: "Please confirm your password",
                equalTo: "Password doesn't match"
            }

        }
    });//$("#regform").validate
});//ready(function()

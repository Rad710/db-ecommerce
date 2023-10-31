function update_user() {
    //reads input fields of user data. Post: database values updated to given field datas.
    $(document).ready(function() {
        $('.update').on('click', function(){
            $.ajax({
                type : 'POST',
                url : '/web_page/php/update_user.php',
                data : {'fname' : $("#input-first-name").val(), 'lname' : $("#input-last-name").val(), 
                        'country' : $("#input-country").val(), 'state' : $("#input-state").val(),
                        'city' : $("#input-city").val(), 'street' : $("#input-address").val(),
                         'zip_code' : $("#input-postal-code").val(), 'phone' : $("#input-phone").val()},

                }).done(function () {
                    $("#message").html('<p class="color-green">Success!</p>');
                }).fail(function() {
                    $("#message").html('<p class="color-red">Complete all fields</p>');
               });
            });
    })
}

function update_password() {
    $(document).ready(function() {
        $('.update').on('click', function(){
            $.ajax({
                type : 'POST',
                url : '/web_page/php/update_user.php',
                data : {'new' : $("#input-new-password").val(), 'repeat' : $("#input-repeat-password").val()},
                }).done(function () {
                    $("#message").html('<p class="color-green">Success!</p>');
                
               }).fail(function() {
                $("#message").html('<p class="color-red">Field error</p>');
               });
            });
    })
}
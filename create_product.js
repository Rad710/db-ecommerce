function create_product() {
    //reads input fields of user data. Post: database values updated to given field datas.
    $(document).ready(function() {
        $('.create').on('click', function(){

            var data = new FormData();
            $.each($("#images")[0].files, function (i, file) {
                data.append('images[]', file);
            });

            data.append('pname', $("#input-name").val());
            data.append('categories', $("#input-category").val());
            data.append('dimension', $("#input-dimension").val());
            data.append('price', $("#input-price").val());
            data.append( 'weight', $("#input-weight").val());
            data.append('desc', $("#input-desc").val());
            data.append('inventory', $("#input-inventory").val());
            $.ajax({
                type : 'POST',
                url : '/web_page/php/insert_product.php',
                data : data,
                contentType: false,
                processData: false,
                }).done(function (result) {
                    $("#message").html('<p class="color-green">Success!</p>');
                    $("#pform")[0].reset();
                    console.log(result);
                }).fail(function() {
                    $("#message").html('<p class="color-red">Complete all fields</p>');
               });
            });
    })
}

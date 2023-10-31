function search_function() {
    //reads input fields of user data. Post: database values updated to given field datas.
    $(document).ready(function () {
        document.querySelector("#search-bar").addEventListener("keyup", event => {
            if (event.key !== "Enter") return; // Use `.key` instead.
            
            $.ajax({
                type: 'POST',
                dataType: 'JSON',
                url: '/web_page/php/search_functions.php',
                data: {
                    'text': $("#search-bar").val()
                },
                async:true,
            }).done(function (result) {
                var event_data = '';
                $.each(result, function(index, value){
                    event_data += '<tr>';
                    event_data += '<td class=tables-format> <img style="vertical-align: bottom;" width="250px" height="250px" src="data:image/'+ value.ext + ';base64,' + value.pimage + '";  alt="..." loading="lazy"> </td>';
                    event_data += '<td class="tables-format tables-text"> <a href="product.html?pid='+ value.Pid +'">' + value.Pname + '</a></td>';
                    event_data += '<td class="tables-format tables-text">'+ value.Price + '</td>';
                    event_data += '</tr>';
                });
                if(event_data != '') {
                    $("#list_table_json").html('<th class="tables-format tables-text"></th><th class="tables-format tables-text">Name</th><th class="tables-format tables-text">Price($)</th>');
                }
                else {
                    $("#list_table_json").html('<p class = "table-text">No results</p>');
                }

                $("#list_table_json").append(event_data);
                
            }).fail(function () {
                console.log('Error xd');
            });
            event.preventDefault();
        });
    })
}
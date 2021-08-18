///// Cange or delete category
$(function(){
    $("#btn-chose-category").click(function(){
        
        let categoryName = $("select").find(':selected').data("name");
        let categoryId = $("select").find(':selected').data("id");

        $("#category-id").val(categoryName).attr("data-name", categoryId).prop("disabled", false);
    });

    //change category
    $("#btn-change-category").click(function(){
        let id = $("#category-id").data("name");
        let name = $("#category-id").val();

        if(name!="")
        {
            if(!confirm("Are you sure you want to change name of category?")) return false;

            $.post("category.php?change-category",{id:id, name:name}, function(response){
                    let obj = JSON.parse(response);

                    if(obj.data)
                    {
                        $("#message").html("You have successfully changed the category name ");
                    }

                }); 
        }
        else $("#message").html("You have to chose category.");
        
    });


    //delete category
    $("#btn-delete-category").click(function(){

        let id = $("#category-id").data("name");

        if(id!="")
        {
            if(!confirm("Are you sure you want to change name of category?")) return false;

            $.post("category.php?delete-category",{id:id}, function(response){
                    let obj = JSON.parse(response);

                    if(obj.data)
                    {
                        $("#message").html("You have successfully delete the category.");
                    }

                }); 
        }
        else $("#message").html("You have to chose category.");
        
    });


    //change product
    $("#btn-chose-product").click(function(){
        
        let productId = $("#select-product").find(':selected').data("product");
        let model = $("#select-product").find(':selected').data("model");
        let category = $("#select-product").find(':selected').data("category");
        let deparment = $("#select-product").find(':selected').data("deparment");
        let manufacturer = $("#select-product").find(':selected').data("manufacturer");
        let upc = $("#select-product").find(':selected').data("upc");
        let sku = $("#select-product").find(':selected').data("sku");
        let regularPrice = $("#select-product").find(':selected').data("regular");
        let salePrice = $("#select-product").find(':selected').data("sale");
        let description = $("#select-product").find(':selected').data("description");
        let url = $("#select-product").find(':selected').data("url");

        $("#product-id").val(productId).attr("data-name", productId);
        $("#model_number").val(model).prop("disabled", false);
        $("#category_name").val(category).prop("disabled", false);
        $("#deparment_name").val(deparment).prop("disabled", false);
        $("#manufacturer_name").val(manufacturer).prop("disabled", false);
        $("#upc").val(upc).prop("disabled", false);
        $("#sku").val(sku).prop("disabled", false);
        $("#regular_price").val(regularPrice).prop("disabled", false);
        $("#sale_price").val(salePrice).prop("disabled", false);
        $("#description").val(description).prop("disabled", false);
        $("#url").val(url).prop("disabled", false);
    });

    //change product
    $("#btn-change-product").click(function(){
        let productId = $("#product-id").val();
        let model = $("#model_number").val();
        let category = $("#category_name").val();
        let deparment = $("#deparment_name").val();
        let manufacturer = $("#manufacturer_name").val();
        let upc = $("#upc").val();
        let sku = $("#sku").val();
        let regularPrice = $("#regular_price").val();
        let salePrice = $("#sale_price").val();
        let description = $("#description").val();
        let url = $("#url").val();
        

        if(productId!="")
        {
            if(!confirm("Are you sure you want to change product?")) return false;

            $.post("products.php?change-products",{productId:productId, model:model, category:category, deparment:deparment, manufacturer:manufacturer, upc:upc, sku:sku, regularPrice:regularPrice, salePrice:salePrice, description:description, url:url}, function(response){
                    let obj = JSON.parse(response);

                    if(obj.data)
                    {
                        $("#message-product").html("You have successfully changed the category name ");
                        allProducts(); 
                    }

                });
                
        }
        else $("#message-product").html("You have to chose category.");
        
    });

     //delete product
     $("#btn-delete-product").click(function(){

        let id = $("#product-id").val();

        if(id!="")
        {
            if(!confirm("Are you sure you want to delte product?")) return false;

            $.post("products.php?delete-product",{id:id}, function(response){
                    let obj = JSON.parse(response);

                    if(obj.data)
                    {
                        $("#message-product").html("You have successfully delete the category.");
                        allProducts(); 
                    }

                }); 
        }
        else{
            $("#message-product").html("You have to chose category.");
        } 
        
    });

    allProducts(); 

});

//function to show all products in select section
function allProducts(){
    $.post("products.php?showAll-products", function(response){
        let obj = JSON.parse(response);
        
        if(obj.data)
        {
            for(el of obj.data)
            {
                let products = $("<option value='"+el.product_id+"' data-product='"+el.product_id+"' data-model='"+el.model_number+"' data-category='"+el.category_name+"' data-deparment='"+el.deparment_name+"' data-manufacturer='"+el.manufacturer_name+"' data-upc='"+el.upc+"' data-sku='"+el.sku+"' data-regular='"+el.regular_price+"' data-sale='"+el.sale_price+"' data-description='"+el.description+"' data-url='"+el.url+"'>"+el.model_number+"</option>");

                $("#select-product").append(products);
            }
        }
    });
}


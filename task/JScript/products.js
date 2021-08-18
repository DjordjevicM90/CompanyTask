$(function(){

    $("#btn-import").click(function(){
        $("#csv-file").html("");
    });

    //show list of all products
    $.post("products.php?showAll-products", function(response){
        let obj = JSON.parse(response);

        if(obj.data)
        {
            $x = 1;
            for(el of obj.data)
            {
                let product = $("<div class='product-block'><h4>Product "+$x+"</h4><hr><p ><span class='fs-4 text-primary'>Modal number: </span> "+el.model_number+"<p><p ><span class='fs-4 text-primary'>Category name: </span> "+el.category_name+"<p><p ><span class='fs-4 text-primary'>Deparment Name: </span> "+el.deparment_name+"<p><p ><span class='fs-4 text-primary'>Manufacturer Name: </span> "+el.manufacturer_name+"<p><p ><span class='fs-4 text-primary'>Upc: </span> "+el.upc+"<p><p ><span class='fs-4 text-primary'>Sku: </span> "+el.sku+"<p><p ><span class='fs-4 text-primary'>Regular price: </span> "+el.regular_price+"<p><p ><span class='fs-4 text-primary'>Sale price: </span> "+el.sale_price+"<p><p ><span class='fs-4 text-primary'>Description: </span> "+el.description+"<p><p ><span class='fs-4 text-primary'>Url: </span> "+el.url+"<p></div>");

                $("#showAll-products").append(product);
                $x++;
            }
            
        }
        
    });
    ////// end of show list of all products////

});

///// When user pick up some category, it will list all products by that category
function getval(sel)
{
    if(sel.value == 0) return false;
    let categoryType = sel.value;
    $("#showAll-products").html("");

    $.post("products.php?category-products", {categoryType:categoryType}, function(response){
        let obj = JSON.parse(response);

        if(obj.data)
        {
            $x = 1;
            for(el of obj.data)
            {
                let product = $("<div class='product-block'><h4>Product "+$x+"</h4><hr><p ><span class='fs-4 text-primary'>Modal number: </span> "+el.model_number+"<p><p ><span class='fs-4 text-primary'>Category name: </span> "+el.category_name+"<p><p ><span class='fs-4 text-primary'>Deparment Name: </span> "+el.deparment_name+"<p><p ><span class='fs-4 text-primary'>Manufacturer Name: </span> "+el.manufacturer_name+"<p><p ><span class='fs-4 text-primary'>Upc: </span> "+el.upc+"<p><p ><span class='fs-4 text-primary'>Sku: </span> "+el.sku+"<p><p ><span class='fs-4 text-primary'>Regular price: </span> "+el.regular_price+"<p><p ><span class='fs-4 text-primary'>Sale price: </span> "+el.sale_price+"<p><p ><span class='fs-4 text-primary'>Description: </span> "+el.description+"<p><p ><span class='fs-4 text-primary'>Url: </span> "+el.url+"<p></div>");

                $("#showAll-products").append(product);
                $x++;
            }
            
        }

    });
}
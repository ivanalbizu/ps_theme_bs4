import $ from 'jquery';

export default class ViewModeProducts {
    init(){
        this.viewModeProducts();
        this.domInitViewMode();
    }

    viewModeProducts() {
        $('.js-view-product-mode').on(
            'click',
            (event) => {
                $('#js-product-list').toggleClass('js-product-mode-list');
                $('.js-view-product-mode').children('i').first().text(function(i, v){
                    saveViewModeProduct(v);
                    return v === 'view_list' ? 'view_module' : 'view_list';
                });
            }
        );
    }
    domInitViewMode() {
        if(typeof(Storage) !== "undefined") {
            if (localStorage.view_mode_product) {
                var selected_view_mode_product = localStorage.getItem("view_mode_product");
                if (selected_view_mode_product === 'view_list') {
                    $('#js-product-list').toggleClass('js-product-mode-list');
                    $('.js-view-product-mode').children('i').first().text(function(i, v){
                        return v === 'view_list' ? 'view_module' : 'view_list';
                    });
                }
            }
        }
    }
}

function saveViewModeProduct(data) {
    if(typeof(Storage) !== "undefined")
        localStorage.view_mode_product = data;
}
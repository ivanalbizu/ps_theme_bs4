import $ from 'jquery';

export default class ViewModeProducts {
    init(){
        this.viewModeProducts();
    }
    
    viewModeProducts() {
        $('.js-view-product-mode').on(
            'click',
            (event) => {
                $('#js-product-list').toggleClass('js-product-mode-list');
                $('.js-view-product-mode').children('i').first().text(function(i, v){
                    return v === 'view_list' ? 'view_module' : 'view_list';
                })
            }
        ); 
    }
}
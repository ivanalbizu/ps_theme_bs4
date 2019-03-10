import $ from 'jquery';

export default class ScrollUp {
    init(){
        this.scrollUp();
    }

    scrollUp() {
        $('.scroll-up').on('click', function (event) {
            event.preventDefault();
            var sectionTo = $(this).attr('href');
            $('html, body').animate({
                scrollTop: $(sectionTo).offset().top
            }, 1000);
        });
    }
}
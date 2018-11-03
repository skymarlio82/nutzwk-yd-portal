$(function() {



    var cswy_swr = new Swiper('.video_list', {
        slidesPerView: 3,
        slidesPerColumn: 2,
        spaceBetween: 10,
        pagination: ".cswy_paging",
        paginationClickable :true,
        paginationBulletRender: function (swiper, index, className) {
            return '<span class="' + className + '">' + (index + 1) + '</span>';
        }
    });

});

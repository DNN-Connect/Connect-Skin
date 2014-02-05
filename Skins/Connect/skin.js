jQuery(document).ready(function() {

    $('.searchInputContainer > input').focusin(function () {
        input = $(this);
        input.toggleClass('active');
    });

    $('.searchInputContainer > input').focusout(function () {
        input = $(this);
        input.toggleClass('active');
    });

    $('.userName > a').text('My Account');

    var params = $.url().param('SearchValues');

    if (params) {
        var link = $('a[rel="' + params + '"]');
        if (link) {
            link.addClass('active');
        }
    }

    $('.connectdir_searchbutton > input').addClass('dnnPrimaryAction');
    $('.connectdir_searchformbutton > input').addClass('dnnPrimaryAction');

    jQuery(".connect_nav .m_nav").click(function() {
        jQuery(".connect_nav ul.sf-menu").toggle();

    });

    $('.external-sociallink-twitter').attr('target', '_blank');

    var stickyNavTop = $('.connect-toolbar').offset().top;

    if ($('form').hasClass('showControlBar')) {
        stickyNavTop -= 53;
    }

    var stickyNav = function () {
        var scrollTop = $(window).scrollTop();
        if (scrollTop > stickyNavTop) {
            if ($('form').hasClass('showControlBar')) {
                $('.connect-toolbar').addClass('stickyadmin');
            } else {
                $('.connect-toolbar').addClass('sticky');
            }

        }
        else {
            if ($('form').hasClass('showControlBar')) {
                $('.connect-toolbar').removeClass('stickyadmin');
            } else {
                $('.connect-toolbar').removeClass('sticky');
            }

        }
    };

    stickyNav();

    $(window).scroll(function () {
        stickyNav();
    });

});
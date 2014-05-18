// putting everything in a closure is always a smart thing
;(function ($, scope) {
  // entering in the strict mode is a really good thing too
  'use strict';

  $(function() {
    var params
      , stickyNav
      , stickyNavTop
      , $window;

    $window = $(scope);
    params = $.url().param('SearchValues');

    $('.searchInputContainer > input').on({
      focusin: function () {
        $(this).toggleClass('active');
      },
      focusout: function () {
        $(this).toggleClass('active');
      }
    });

    $('.userName > a').text('My Account');

    if (params) {
      link = $('a[rel="' + params + '"]').addClass('active');
    }

    $('.connectdir_searchbutton > input').addClass('dnnPrimaryAction');
    $('.connectdir_searchformbutton > input').addClass('dnnPrimaryAction');

    $(".connect_nav .m_nav").click(function() {
      $(".connect_nav ul.sf-menu").toggle();
    });

    $('.external-sociallink-twitter').attr('target', '_blank');

    stickyNavTop = $('.connect-toolbar').offset().top;

    if ($('form').hasClass('showControlBar')) {
      stickyNavTop -= 53;
    }

    stickyNav = function () {
      var scrollTop = $window.scrollTop();

      if ($('form').hasClass('showControlBar')) {
        $('.connect-toolbar').removeClass('stickyadmin');
      } else {
        $('.connect-toolbar').removeClass('sticky');
      }
    }

    stickyNav();

    $window.scroll(function () {
      stickyNav();
    });
  });

})(jQuery, this);
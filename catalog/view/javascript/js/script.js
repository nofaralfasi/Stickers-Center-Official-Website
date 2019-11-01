/**
 * Global variables
 */
"use strict";
(function () {
	var isNoviBuilder = window.xMode;
	var userAgent = navigator.userAgent.toLowerCase(),
		initialDate = new Date(),
		$document = $( document ),
		$window = $( window ),
		$html = $( "html" ),
		isDesktop = $html.hasClass( "desktop" ),
		isIE = userAgent.indexOf( "msie" ) != -1 ? parseInt( userAgent.split( "msie" )[ 1 ] ) : userAgent.indexOf( "trident" ) != -1 ? 11 : userAgent.indexOf( "edge" ) != -1 ? 12 : false,
		isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test( navigator.userAgent ),
		isSafari = !!navigator.userAgent.match( /Version\/[\d\.]+.*Safari/ ),
		plugins = {
			bootstrapTooltip:        $( "[data-toggle='tooltip']" ),
			copyrightYear:           $( '.copyright-year' ),
			rdNavbar:                $( ".rd-navbar" ),
			materialParallax:        $( ".parallax-container" ),
			rdMailForm:              $( ".rd-mailform" ),
			rdInputLabel:            $( ".form-label" ),
			regula:                  $( "[data-constraints]" ),
			owl:                     $( ".owl-carousel" ),
			isotope:                 $( ".isotope" ),
			radio:                   $( "input[type='radio']" ),
			checkbox:                $( "input[type='checkbox']" ),
			counter:                 $( ".counter" ),
			pageLoader:              $( "#page-loader" ),
			captcha:                 $( '.recaptcha' ),
			lightGallery:            $( '[data-lightgallery="group"]' ),
			lightGalleryItem:        $( '[data-lightgallery="item"]' ),
			lightDynamicGalleryItem: $( '[data-lightgallery="dynamic"]' ),
			bootstrapDateTimePicker: $( "[data-time-picker]" ),
			slick:                   $( '.slick-slider' )
		};
	// Initialize scripts that require a loaded window
	$window.on('load', function () {
		// Material Parallax
		if ( plugins.materialParallax.length ) {
			if ( !isNoviBuilder && !isIE && !isMobile) {
				plugins.materialParallax.parallax();
			} else {
				for ( var i = 0; i < plugins.materialParallax.length; i++ ) {
					var $parallax = $(plugins.materialParallax[i]);
					$parallax.addClass( 'parallax-disabled' );
					$parallax.css({ "background-image": 'url('+ $parallax.data("parallax-img") +')' });
				}
			}
		}
	});
	/**
	 * Initialize All Scripts
	 */
	$( function () {
		function initLightGallery ( itemsToInit, addClass ) {
		}
		function initDynamicLightGallery ( itemsToInit, addClass ) {
		}
		function initLightGalleryItem ( itemToInit, addClass ) {
		}
		/**
		 * Init Bootstrap tooltip
		 * @description  calls a function when need to init bootstrap tooltips
		 */
		function initBootstrapTooltip ( tooltipPlacement ) {
			if ( window.innerWidth < 599 ) {
				plugins.bootstrapTooltip.tooltip( 'destroy' );
				plugins.bootstrapTooltip.tooltip( {
					placement: 'bottom'
				} );
			} else {
				plugins.bootstrapTooltip.tooltip( 'destroy' );
				plugins.bootstrapTooltip.tooltipPlacement;
				plugins.bootstrapTooltip.tooltip();
			}
		}
		function isScrolledIntoView ( elem ) {
		}
		function attachFormValidator(elements) {
		}
		function isValidated(elements, captcha) {
		}
		function validateReCaptcha(captcha) {
		}
		window.onloadCaptchaCallback = function () {
		};
		if (plugins.captcha.length) {
		}
		if ( plugins.pageLoader.length > 0 ) {
		}
		/**
		 * Is Mac os
		 * @description  add additional class on html if mac os.
		 */
		if ( navigator.platform.match( /(Mac)/i ) ) $html.addClass( "mac-os" );
		/**
		 * Is Safari
		 * @description  add additional class on html if mac os.
		 */
		if ( isSafari ) $html.addClass( "safari-browser" );
		// Adds some loosing functionality to IE browsers (IE Polyfills)
		if (isIE) {
			if (isIE === 12) $html.addClass("ie-edge");
			if (isIE === 11) $html.addClass("ie-11");
			if (isIE < 10) $html.addClass("lt-ie-10");
			if (isIE < 11) $html.addClass("ie-10");
		}
		/**
		 * Bootstrap Tooltips
		 * @description Activate Bootstrap Tooltips
		 */
		if ( plugins.bootstrapTooltip.length ) {
			var tooltipPlacement = plugins.bootstrapTooltip.attr( 'data-placement' );
			initBootstrapTooltip( tooltipPlacement );
			$( window ).on( 'resize orientationchange', function () {
				initBootstrapTooltip( tooltipPlacement );
			} )
		}
		// Add custom styling options for input[type="radio"]
		if (plugins.radio.length) {
		}
		// Add custom styling options for input[type="checkbox"]
		if (plugins.checkbox.length) {
		}
		/**
		 * UI To Top
		 * @description Enables ToTop Button
		 */
		/*if ( isDesktop && !isNoviBuilder ) {
			$().UItoTop( {
				easingType:     'easeOutQuart',
				containerClass: 'ui-to-top fa fa-angle-up'
			} );
		}*/
		if ( plugins.rdNavbar.length ) {
		}
		if ( plugins.isotope.length ) {
		}
		/**
		 * WOW
		 * @description Enables Wow animation plugin
		 */
		if ( isDesktop && !isNoviBuilder && $html.hasClass( "wow-animation" ) && $( ".wow" ).length ) {
			new WOW().init();
		}
		/**
		 * Slick carousel
		 * @description  Enable Slick carousel plugin
		 */
		if ( plugins.slick.length ) {
			var i;
			for ( i = 0; i < plugins.slick.length; i++ ) {
				var $slickItem = $( plugins.slick[ i ] );
				// $slickItem.on( 'init', function ( slick ) {
				// 	initLightGallery( $( '[data-lightgallery="group-slick"]' ), 'lightGallery-in-carousel' );
				// 	initLightGallery( $( '[data-lightgallery="item-slick"]' ), 'lightGallery-in-carousel' );
				// } );
				$slickItem.slick( {
					slidesToScroll: parseInt( $slickItem.attr( 'data-slide-to-scroll' ) ) || 1,
					asNavFor:       $slickItem.attr( 'data-for' ) || false,
					dots:           $slickItem.attr( "data-dots" ) == "true",
					infinite:       isNoviBuilder ? false : $slickItem.attr( "data-loop" ) == "true",
					focusOnSelect:  false,
					arrows:         $slickItem.attr( "data-arrows" ) == "true",
					swipe:          $slickItem.attr( "data-swipe" ) == "true",
					autoplay:       isNoviBuilder ? false : $slickItem.attr( "data-autoplay" ) == "true",
					centerMode:     $slickItem.attr( "data-center-mode" ) == "true",
					centerPadding:  $slickItem.attr( "data-center-padding" ) ? $slickItem.attr( "data-center-padding" ) : '0.50',
					mobileFirst:    true,
					responsive:     [
						{
							breakpoint: 0,
							settings:   {
								slidesToShow: parseInt( $slickItem.attr( 'data-items' ) ) || 1,
								swipe:        $slickItem.attr( 'data-swipe' ) || false
							}
						},
						{
							breakpoint: 479,
							settings:   {
								slidesToShow: parseInt( $slickItem.attr( 'data-xs-items' ) ) || 1,
								swipe:        $slickItem.attr( 'data-xs-swipe' ) || false
							}
						},
						{
							breakpoint: 767,
							settings:   {
								slidesToShow: parseInt( $slickItem.attr( 'data-sm-items' ) ) || 1,
								swipe:        $slickItem.attr( 'data-sm-swipe' ) || false
							}
						},
						{
							breakpoint: 992,
							settings:   {
								slidesToShow: parseInt( $slickItem.attr( 'data-md-items' ) ) || 1,
								swipe:        $slickItem.attr( 'data-md-swipe' ) || false
							}
						},
						{
							breakpoint: 1200,
							settings:   {
								slidesToShow: parseInt( $slickItem.attr( 'data-lg-items' ) ) || 1,
								swipe:        $slickItem.attr( 'data-lg-swipe' ) || false
							}
						}
					]
				} )
					.on( 'afterChange', function ( event, slick, currentSlide, nextSlide ) {
						var $this = $( this ),
							childCarousel = $this.attr( 'data-child' );
						if ( childCarousel ) {
							$( childCarousel + ' .slick-slide' ).removeClass( 'slick-current' );
							$( childCarousel + ' .slick-slide' ).eq( currentSlide ).addClass( 'slick-current' );
						}
					} );
			}
		}
		$( '.slick-style-1' ).on( 'click', '.slick-slide', function ( e ) {
			e.stopPropagation();
			var index = $( this ).data( "slick-index" ),
				targetSlider = $( '.slick-style-1' );
			if ( targetSlider.slick( 'slickCurrentSlide' ) !== index ) {
				targetSlider.slick( 'slickGoTo', index );
			}
		} );
		if (plugins.lightGallery.length) {
			for (var i = 0; i < plugins.lightGallery.length; i++) {
				initLightGallery(plugins.lightGallery[i]);
			}
		}
		if (plugins.lightGalleryItem.length) {
			var notCarouselItems = [];
			for (var z = 0; z < plugins.lightGalleryItem.length; z++) {
				if (!$(plugins.lightGalleryItem[z]).parents('.owl-carousel').length &&
					!$(plugins.lightGalleryItem[z]).parents('.swiper-slider').length &&
					!$(plugins.lightGalleryItem[z]).parents('.slick-slider').length) {
					notCarouselItems.push(plugins.lightGalleryItem[z]);
				}
			}
			plugins.lightGalleryItem = notCarouselItems;
			for (var i = 0; i < plugins.lightGalleryItem.length; i++) {
				initLightGalleryItem(plugins.lightGalleryItem[i]);
			}
		}
		if (plugins.lightDynamicGalleryItem.length) {
			for (var i = 0; i < plugins.lightDynamicGalleryItem.length; i++) {
				initDynamicLightGallery(plugins.lightDynamicGalleryItem[i]);
			}
		}
		if ( plugins.owl.length ) {
		}
		if ( plugins.rdInputLabel.length ) {
		}
		if ( plugins.regula.length ) {
		}
		if (plugins.rdMailForm.length) {
		}
		if ( plugins.counter.length ) {
		}
		if ( plugins.bootstrapDateTimePicker.length ) {
		}
		if ( plugins.copyrightYear.length ) {
		}
	} );
}());
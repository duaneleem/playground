<?php
/**
 * Enqueue scripts and styles.
 */
 function durendal_scripts() {
	wp_enqueue_style( 'durendal-style', get_stylesheet_uri() );

	wp_enqueue_script( 'durendal-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

    wp_enqueue_script( 'durendal-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );
    
    /* ======================================================
        Theme Styles
    ====================================================== */
    // Web Fonts
    wp_enqueue_style("font-roboto", "https://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,500italic,700,700italic");
    wp_enqueue_style("font-calibri", "https://fonts.googleapis.com/css?family=Calibri:700,400,300");
    wp_enqueue_style("font-open-sans", "https://fonts.googleapis.com/css?family=Open+Sans");
    wp_enqueue_style("font-pacifico", "https://fonts.googleapis.com/css?family=Pacifico");
    wp_enqueue_style("font-pt-serif", "https://fonts.googleapis.com/css?family=PT+Serif");

    // Bootstrap core CSS
    wp_enqueue_style("css-bootstrap", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/bootstrap/css/bootstrap.css");

    // Font Awesome CSS
    wp_enqueue_style("css-font-awesome", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/fonts/font-awesome/css/font-awesome.css");

    // Fontello CSS
    wp_enqueue_style("css-fontello", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/fonts/fontello/css/fontello.css");

    // Plugins
    wp_enqueue_style("css-magnific-popup", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/magnific-popup/magnific-popup.css");
    wp_enqueue_style("css-rs-plugin-5-settings", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/rs-plugin-5/css/settings.css");
    wp_enqueue_style("css-rs-plugin-5-layers", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/rs-plugin-5/css/layers.css");
    wp_enqueue_style("css-rs-plugin-5-navigation", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/rs-plugin-5/css/navigation.css");
    wp_enqueue_style("css-animations", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/css/animations.css");
    wp_enqueue_style("css-owl-carousel-2-main", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/owlcarousel2/assets/owl.carousel.min.css");
    wp_enqueue_style("css-owl-carousel-2-theme", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/owlcarousel2/assets/owl.theme.default.min.css");
    wp_enqueue_style("css-hover", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/hover/hover-min.css");
    wp_enqueue_style("css-morphext", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/morphext/morphext.css");

    // The Project's core CSS file
    // Use css/rtl_style.css for RTL version
    wp_enqueue_style("css-durendal-core", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/css/style.css")
    // The Project's Typography CSS file, includes used fonts
    // Used font for body: Roboto
    // Used font for headings: Raleway
    // Use css/rtl_typography-default.css for RTL version
    wp_enqueue_style("css-typography-default", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/css/typography-default.css");
    // Color Scheme (In order to change the color scheme, replace the blue.css with the color scheme that you prefer)
    wp_enqueue_style("css-s2p-custom", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/css/s2p.css");

    // Custom CSS
    wp_enqueue_style("css-leemtek-custom", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/css/custom.css");
    wp_enqueue_style("css-main", get_template_directory_uri() . "/assets/css/main.css");
    
	
    /* ======================================================
        Theme custom scripts.
    ====================================================== */
    // Google reCaptcha
    wp_enqueue_script("google-recaptcha", "https://www.google.com/recaptcha/api.js", array(), "2.0.0", true);
    
    wp_deregister_script("jquery");
    wp_enqueue_script( "jquery", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/jquery.min.js", array(), "2.2.4", true );
    wp_enqueue_script( "bootstrap-js", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/bootstrap/js/bootstrap.min.js", array("jquery"), "3.3.7", true );
    // Modernizr javascript
    wp_enqueue_script( "modernizr", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/modernizr.js", array("jquery"), "2.8.3", true );
    wp_enqueue_script( "themepunch-tools", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/rs-plugin-5/js/jquery.themepunch.tools.min.js?rev=5.0", array("jquery"), "1.0", true );
    // Isotope javascript
    wp_enqueue_script( "isotope", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/isotope/isotope.pkgd.min.js", array("jquery"), "3.0.1", true );
    // Magnific Popup javascript
    wp_enqueue_script( "magnific-popup", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/magnific-popup/jquery.magnific-popup.min.js", array("jquery"), "1.1.0", true );
    // Appear javascript
    wp_enqueue_script( "waypoints", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/waypoints/jquery.waypoints.min.js", array("jquery"), "4.0.1", true );
    // Count To javascript
    wp_enqueue_script( "count-to", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/jquery.countTo.js", array("jquery"), "1.0.0", true );
    // Parallax javascript
    wp_enqueue_script( "parallax", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/jquery.parallax-1.1.3.js", array("jquery"), "1.1.3", true );
    // Contact form
    wp_enqueue_script( "validate", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/jquery.validate.js", array("jquery"), "1.16.0", true );
    // Morphext
    wp_enqueue_script( "morphext", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/morphext/morphext.min.js", array("jquery"), "2.4.4", true );
    // Background Video
    wp_enqueue_script( "vide", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/vide/jquery.vide.js", array("jquery"), "0.5.1", true );
    // Owl carousel javascript
    wp_enqueue_script( "owl-carousel", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/owlcarousel2/owl.carousel.min.js", array("jquery"), "2.2.0", true );
    // SmoothScroll javascript
    wp_enqueue_script( "browser", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/jquery.browser.js", array("jquery"), "0.1.0", true );
    wp_enqueue_script( "smooth-scroll", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/plugins/SmoothScroll.js", array("jquery"), "0.1.0", true );
    // Initialization of Plugins
    wp_enqueue_script( "the-project-template", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/js/template.js", array("jquery"), "1.4.0", true );
    // Custom Scripts
    wp_enqueue_script( "leemtek-main", "https://d1qlu92qlflogk.cloudfront.net/template-durendal/js/custom.js", array("jquery"), "1.0.0", true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'durendal_scripts' );
?>
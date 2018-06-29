<header class="banner">
  <div class="container-fluid px-0">
    <nav class="navbar navbar-expand-md nav-primary">
      <a class="navbar-brand brand" href="<?= esc_url(home_url('/')); ?>">
        <?php 
        $custom_logo_id = get_theme_mod( 'custom_logo' );
        $image = wp_get_attachment_image_src( $custom_logo_id , 'full' );
        ?>
        <img src="<?php echo $image[0]; ?>" width="194" height="65" alt="" class="theme-icon">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <?php
        if (has_nav_menu('primary_navigation')) :
          wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'navbar-nav ml-auto', 'container' => '', ]);
        endif;
        ?>
      </div>
    </nav>
  </div>
</header>



<header class="banner">
  <div class="container">
    <nav class="navbar navbar-expand-md nav-primary">
      <a class="navbar-brand brand" href="<?= esc_url(home_url('/')); ?>">
        <img src="/docs/4.1/assets/brand/bootstrap-solid.svg" width="30" height="30" alt="">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
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



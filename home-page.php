<?php
/**
 * Template Name: Home Page
 */
?>
<?php get_template_part('templates/slider'); ?>

<?php get_template_part('templates/featured'); ?>

<?php while (have_posts()) : the_post(); ?>
  <!-- <?php //get_template_part('templates/page', 'header'); ?> -->
  <?php get_template_part('templates/content', 'page'); ?>
<?php endwhile; ?>


<?php
/**
 * Template Name: Home Page
 */
?>
<?php get_template_part('templates/slider'); ?>

<?php get_template_part('templates/featured'); ?>

<?php get_template_part('templates/rating'); ?>

<?php get_template_part('templates/home', 'sites'); ?>

<?php get_template_part('templates/home', 'team'); ?>

<?php get_template_part('templates/testimonials'); ?>

<?php //while (have_posts()) : the_post(); ?>
  <!-- <?php //get_template_part('templates/page', 'header'); ?> -->
  <?php //get_template_part('templates/content', 'page'); ?>
<?php //endwhile; ?>
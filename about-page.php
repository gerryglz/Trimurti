<?php
/**
 * Template Name: About Page
 */
?>
<div class="container-fluid px-0">
	<div class="row no-gutters">
		<div class="col">
			<div class="image-header" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')">
				<div class="overlay">
					<div class="header-info">
						<p class="header-title">Trimurti Yoga</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid px-0">
	<div class="row no-gutters">
		<?php while (have_posts()) : the_post(); ?>
		  <?php get_template_part('templates/content', 'page'); ?>
		<?php endwhile; ?>
	</div>
</div>
<?php get_template_part('templates/rating'); ?>
<?php get_template_part('templates/content', 'sites'); ?>
<?php get_template_part('templates/content', 'team'); ?>
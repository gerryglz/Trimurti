<?php
/**
 * Template Name: Enroll Page
 */
?>
<div class="container-fluid px-0">
	<div class="row no-gutters">
		<div class="col">
			<div class="image-header" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')">
				<div class="overlay">
					<div class="header-info">
						<p class="header-title">Enroll Now</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container py-5 mb-5">
	<div class="row">
		<div class="col">
			<?php while (have_posts()) : the_post(); ?>
			  <?php the_content(); ?>
			<?php endwhile; ?>
		</div>
	</div>
</div>
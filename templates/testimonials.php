<?php 
	$args = array(
		'post_type' => 'testimonial',
		'order' => 'DESC',
		'orderby' => 'date',
		'posts_per_page' => 3,
	);

	$testimonials = new WP_Query($args);
?>
<div class="container-fluid p-0 testimonials">
	<div class="row no-gutters">
		<div class="col">
			<p class="section-header">Alumni Testimonials</p>
			<p class="text-center px-3"><strong>A thousand expended experiences</strong></br>
			Stories from our students across de world
			</p>
		</div>
	</div>
	<div class="row no-gutters">
		<?php 
			if ( $testimonials->have_posts() ) :
				while( $testimonials->have_posts() ) :
	  		$testimonials->the_post();
		?>
		<div class="col-12 col-md-4">
			<div class="testimonial" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')">
				<div class="overlay">
					<div class="testimonial-info">
						<p class="testimonial-desc px-3"><?php echo get_the_content(); ?></p>
					</div>
				</div>
			</div>
		</div>
		<?php 
				endwhile;
			endif;
		?>
	</div>
</div>
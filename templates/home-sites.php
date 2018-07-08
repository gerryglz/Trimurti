<?php 
	$args = array(
		'post_type' => 'site',
		'order' => 'ASC',
		'orderby' => 'date',
		'posts_per_page' => 2,
	);

	$sites = new WP_Query($args);
?>
<div class="container-fluid pt-3 px-0 featured-sites">
	<div class="row no-gutters">
		<div class="col">
			<p class="section-header">TRIMURTI Yoga Mexico</p>
			<p class="text-center weight-medium px-3">Explore Yoga in a nature-rich environment for learning</p>
		</div>
	</div>
	<div class="row no-gutters">
		<?php 
			if ( $sites->have_posts() ) :
				while( $sites->have_posts() ) :
	  		$sites->the_post();
		?>
		<div class="col-12 col-md-6">
			<div class="featured-site" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')">
				<div class="overlay">
					<div class="site-info">
						<p class="site-title"><?php echo the_title(); ?></p>
						<a href="<?php the_permalink(); ?>" class="btn btn-secondary">Explore</a>
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
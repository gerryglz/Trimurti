<?php 
	$args = array(
		'post_type' => 'site',
		'order' => 'ASC',
		'orderby' => 'date',
		'posts_per_page' => 2,
	);

	$sites = new WP_Query($args);
	$count = 0;
?>
<div class="container-fluid p-0 content-sites">
	<div class="row no-gutters">
		<div class="col">
			<p class="section-header">TRIMURTI Yoga Mexico</p>
		</div>
	</div>
	<?php 
		if ( $sites->have_posts() ) :
			while( $sites->have_posts() ) :
  		$sites->the_post();
  		$count ++;
	?>
	<div class="row content-site <?php if($count%2 === 0) { echo 'bg-grey'; } ?>"">
		<div class="col-12 col-md-8 <?php if($count%2 === 1) { echo 'order-md-2'; } ?>"">
			<div class="site-info">
				<p class="site-title"><?php echo the_title(); ?></p>
				<p class="site-shortdesc"><?php echo wp_strip_all_tags( get_the_excerpt(), true ); ?></p>
				<div class="site-desc">
					<?php the_content(); ?>
				</div>
				<a href="<?php echo get_home_url(); ?>/courses" class="btn btn-secondary">Upcoming Courses</a>
			</div>
		</div>
		<div class="col-12 col-md-4 <?php if($count%2 === 1) { echo 'order-md-1'; } ?>"">
		 	<div class="site-image" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')"></div>
		</div>
	</div>
	<?php 
			endwhile;
		endif;
	?>
</div>
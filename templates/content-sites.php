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
				<p class="site-shortdesc">Where the jungle meets the ocean</p>
				<div class="site-desc">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo quod at omnis totam perferendis nihil asperiores odio. Perspiciatis, voluptate, praesentium! Quod in omnis fugiat quidem pariatur dolorem minus maiores dignissimos.</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia odio nisi qui, labore quo aliquam quisquam. Rerum mollitia, nostrum excepturi, nisi eveniet exercitationem cupiditate expedita eligendi molestiae dolores aliquid iusto.</p>
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
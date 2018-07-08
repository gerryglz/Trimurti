<?php 
	$args = array(
		'post_type' => 'teacher',
		'order' => 'ASC',
		'orderby' => 'date',
		'posts_per_page' => -1,
	);

	$teachers = new WP_Query($args);
	$count = 0;
?>
<div class="container-fluid pt-3 px-0 content-team">
	<div class="row no-gutters">
		<div class="col">
			<p class="section-header">Our Team</p>
			<p class="text-center px-3 content-desc mb-5">Our school is a team of experienced and highly qualified teachers of various yoga and traditions, who previously studied under many different masters and teachers - in India, Europe and US.</p>
		</div>
	</div>
	<?php 
		if ( $teachers->have_posts() ) :
			while( $teachers->have_posts() ) :
  		$teachers->the_post();
  		$count ++;
	?>
		<div class="row no-gutters team-member">
			<div class="col-12 col-md-6 <?php if($count%2 === 1) { echo 'order-md-2'; } ?> <?php if($count%2 === 0) { echo 'bg-grey'; } ?>">
				<div class="member-info">
					<p class="member-name"><?php echo the_title(); ?></p>
					<p class="member-shortdesc"><p class="course-description"><?php echo wp_strip_all_tags( get_the_excerpt(), true ); ?></p></p>
					<a href="<?php the_permalink(); ?>" class="btn btn-outline-secondary">Read More</a>
				</div>
			</div>
			<div class="col-12 col-md-6 <?php if($count%2 === 1) { echo 'order-md-1'; } ?>">
				<div class="member-img" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')">
					</div>
			</div>
		</div>
	<?php 
			endwhile;
		endif;
	?>
</div>
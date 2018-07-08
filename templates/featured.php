<?php 
	$args = array(
		'post_type' => 'course',
		'order' => 'ASC',
		'orderby' => 'date',
		'posts_per_page' => -1,
	);

	$courses = new WP_Query($args);
	$count = 0;
	$course_price = 0;
?>
<div class="container-fluid featured-courses p-0">
	<div class="row no-gutters">
		<div class="col">
			<p class="section-header">Our Courses</p>
		</div>
	</div>
	<?php 
		if ( $courses->have_posts() ) :
			while( $courses->have_posts() ) :
  		$courses->the_post();
  		$featured = get_field('featured_course');
  		if ( get_field('featured_course') ) :
  		$count ++;
	  		if ( get_field('course_price') ) {
	  			$course_price = get_field('course_price');
	  		}
	?>

		<div class="row no-gutters featured-course">
			<div class="col-12 col-md-6 <?php if($count%2 === 1) { echo 'order-md-2'; } ?>">
				<div class="course-info <?php if($count%2 === 0) { echo 'text-right'; } ?>">
					<p class="course-title"><?php echo the_title(); ?></p>
					<p class="course-style"><?php if (get_field('course_style')) { echo get_field('course_style');} ?></p>
					<p class="course-price"><?php if (get_field('course_price')) { echo money_format("Starting from $%i USD", $course_price);} ?></p>
					<p class="course-description"><?php echo wp_strip_all_tags( get_the_excerpt(), true ); ?></p>
					<a class="btn btn-secondary" href="<?php the_permalink(); ?>">Upcoming Courses</a>
				</div>
			</div>
			<div class="col-12 col-md-6 <?php if($count%2 === 1) { echo 'order-md-1'; } ?>">
				<div class="course-img" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')">
				</div>
			</div>
		</div>
		<?php 
				endif;
			endwhile;
		endif;
		?>
</div>
<?php 
	$args = array(
		'post_type' => 'course',
		'order' => 'ASC',
		'orderby' => 'date',
		'posts_per_page' => -1,
	);

	$courses = new WP_Query($args);
?>
<div class="container course-grid">
	<div class="row">
		<?php 
			if ( $courses->have_posts() ) :
				while( $courses->have_posts() ) :
	  		$courses->the_post();
	  		$date = get_field('course_date');
	  		$date = new DateTime($date);
	  		$course_price = get_field('course_price');
	  		$vacancy = get_field('course_vacancy');
		?>
		<div class="col-12 col-md-6 col-lg-4">
			<div class="grid-item">
				<div class="item-meta" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')">
					<?php if ($vacancy <= 5) : ?>
						<div class="item-availability">
							<p><?php echo $vacancy; ?> seats left</p>
						</div>
					<?php endif; ?>
					<div class="item-info">
						<p class="item-location"><?php if (get_field('course_location')) { echo get_field('course_location');} ?></p>
						<p class="item-title"><?php echo the_title(); ?></p>
					</div>
				</div>
				<div class="item-desc">
					<p class="item-type"><?php if (get_field('course_style')) { echo get_field('course_style');} ?></p>
					<p class="item-discipline">Discipline: <?php if (get_field('course_discipline')) { echo get_field('course_discipline');} ?></p>
					<p class="item-date"><i class="far fa-calendar-alt"></i><?php if (get_field('course_date')) { echo $date->format('M j Y'); } ?></p>
					<p class="item-duration"><i class="fas fa-sun"></i><?php if (get_field('course_duration')) { echo get_field('course_duration');} ?></p>
					<p class="item-location"><i class="fas fa-map-marker-alt"></i><?php if (get_field('course_venue')) { echo get_field('course_venue');} ?></p>
					<p class="item-price"><i class="fas fa-dollar-sign"></i> <?php if (get_field('course_price')) { echo money_format("Starting from $%i USD", $course_price);} ?></p>
					<?php if (get_field('course_logo')) : ?>
						<img src="<?php echo get_field('course_logo'); ?>" alt="<?php echo the_title(); ?>" class="item-logo">
					<?php endif; ?>
					<a href="<?php the_permalink(); ?>" class="btn btn-secondary mx-auto">See Course</a>
				</div>
			</div>
		</div>
		<?php 
				endwhile;
			endif;
		?>
	</div>
</div>
<?php 
	$args = array(
		'post_type' => 'course',
		'order' => 'ASC',
		'orderby' => 'date',
		'posts_per_page' => -1,
		'meta_key'		=> 'featured_course_key',
		'meta_value'	=> 'yes'
	);

	$courses = new WP_Query($args);
?>
<div class="container-fluid featured-courses">
	<div class="row">
		<div class="col">
			<p class="section-header">Our Courses</p>
		</div>
	</div>
	<div class="row no-gutters featured-course">
		<div class="col-12 col-md-6 order-md-2">
			<div class="course-info">
				<p class="course-title">Lorem ipsum dolor</p>
				<p class="course-style">ipsum dolor</p>
				<p class="course-price">ipsum dolor $500.00</p>
				<p class="course-description">Lorem ipsum dolor amet tofu helvetica farm-to-table vinyl vexillologist pabst chicharrones succulents.</p>
				<a class="btn btn-secondary">Upcoming Courses</a>
			</div>
		</div>
		<div class="col-12 col-md-6 order-md-1">
			<div class="course-img" style="background-image: url('https://placeimg.com/800/400/any')">
			</div>
		</div>
	</div>
	<div class="row no-gutters featured-course">
		<div class="col-12 col-md-6">
			<div class="course-info">
				<p class="course-title">Lorem ipsum dolor</p>
				<p class="course-style">ipsum dolor</p>
				<p class="course-price">ipsum dolor $500.00</p>
				<p class="course-description">Lorem ipsum dolor amet tofu helvetica farm-to-table vinyl vexillologist pabst chicharrones succulents.</p>
				<a class="btn btn-secondary">Upcoming Courses</a>
			</div>
		</div>
		<div class="col-12 col-md-6">
			<div class="course-img" style="background-image: url('https://placeimg.com/800/400/any');">
			</div>
		</div>
	</div>
</div>
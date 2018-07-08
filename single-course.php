<?php while (have_posts()) : the_post(); ?>
	<?php 
		$date = get_field('course_date');
		$date = new DateTime($date);
	?>
  <section <?php post_class(); ?>>
  	<div class="container-fluid px-0">
  		<div class="row no-gutters">
  			<div class="col">
  				<div class="course-header" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')">
  					<div class="overlay">
  						<div class="header-info">
  							<p class="header-location"><?php if (get_field('course_location')) { echo get_field('course_location');} ?></p>
  							<p class="header-title"><?php echo the_title(); ?></p>
  							<p class="header-desc">
  								<?php if (get_field('course_style')) { echo get_field('course_style');} ?> </br>
  								<?php if (get_field('course_date')) { echo $date->format('M j Y'); } ?> | <?php if (get_field('course_duration')) { echo get_field('course_duration');} ?>
  							</p>
  							<a href="#" class="btn btn-secondary">Apply Now</a>
  						</div>
  					</div>
  				</div>
  			</div>
  		</div>
  	</div>
    <div class="entry-content">
      <?php the_content(); ?>
    </div>
  </section>
<?php endwhile; ?>
<?php get_template_part('templates/content' ,'team'); ?>
<?php get_template_part('templates/testimonials'); ?>
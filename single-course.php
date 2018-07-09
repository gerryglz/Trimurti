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
    <div class="container">
      <?php the_content(); ?>
    </div>
    <div class="container-fluid px-0">
      <div class="row no-gutters">
        <div class="col">
          <div class="accordion" id="accordion">
            <?php if (get_field('course_accommodation_options')) : ?>
              <div class="card">
                <div class="card-header" id="headingOne">
                  <button class="collapse-btn" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                    Accomodation Options <i class="fas fa-chevron-down"></i>
                  </button>
                </div>

                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                  <div class="card-body">
                    <div class="container">
                      <?php echo get_field('course_accommodation_options'); ?>
                    </div>
                  </div>
                </div>
              </div>
            <?php endif; ?>

            <?php if (get_field('course_payment_application')) : ?>
              <div class="card">
                <div class="card-header" id="headingTwo">
                  <button class="collapse-btn" collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Payment and Application <i class="fas fa-chevron-down"></i>
                  </button>
                </div>

                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                  <div class="card-body">
                    <div class="container">
                      <?php echo get_field('course_payment_application'); ?>
                    </div>
                  </div>
                </div>
              </div>
            <?php endif; ?>

            <?php if (get_field('course_info')) : ?>
              <div class="card">
                <div class="card-header" id="headingThree">
                  <button class="collapse-btn" collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Course Info <i class="fas fa-chevron-down"></i>
                  </button>
                </div>

                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-body">
                    <div class="container">
                      <?php echo get_field('course_info'); ?>
                    </div>
                  </div>
                </div>
              </div>
            <?php endif; ?>
            
          </div>
        </div>
      </div>
      <div class="row no-gutters">
        <div class="col">
          
        </div>
      </div>
    </div>
  </section>
<?php endwhile; ?>
<?php get_template_part('templates/content' ,'team'); ?>
<?php get_template_part('templates/testimonials'); ?>
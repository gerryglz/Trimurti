<?php while (have_posts()) : the_post(); ?>
	<?php 
		$date = get_field('course_date');
		$date = new DateTime($date);
    $teachers = get_field('course_teachers');
    $count = 0;
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

    <div class="container">
      <div class="row">
        <div class="col">

          <div id="carouselExampleIndicators" class="carousel slide content-slider" data-ride="carousel">

            <ol class="carousel-indicators">
              <?php if (get_field('course_image_one')) : ?>
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <?php endif; ?>
              <?php if (get_field('course_image_two')) : ?>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <?php endif; ?>
              <?php if (get_field('course_image_three')) : ?>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
              <?php endif; ?>
              <?php if (get_field('course_image_four')) : ?>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
              <?php endif; ?>
              <?php if (get_field('course_image_five')) : ?>
                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
              <?php endif; ?>
             
            </ol>

            <div class="carousel-inner">

              <?php if (get_field('course_image_one')) : ?>
                <div class="carousel-item active">
                  <div class="slide-image" style="background-image: url('<?php echo get_field('course_image_one'); ?>');"></div>
                </div>
              <?php endif; ?>
              
              <?php if (get_field('course_image_two')) : ?>
                <div class="carousel-item">
                  <div class="slide-image" style="background-image: url('<?php echo get_field('course_image_two'); ?>');"></div>
                </div>
              <?php endif; ?>

              <?php if (get_field('course_image_three')) : ?>
                <div class="carousel-item">
                  <div class="slide-image" style="background-image: url('<?php echo get_field('course_image_three'); ?>');"></div>
                </div>
              <?php endif; ?>

              <?php if (get_field('course_image_four')) : ?>
                <div class="carousel-item">
                  <div class="slide-image" style="background-image: url('<?php echo get_field('course_image_four'); ?>');"></div>
                </div>
              <?php endif; ?>

              <?php if (get_field('course_image_five')) : ?>
                <div class="carousel-item">
                  <div class="slide-image" style="background-image: url('<?php echo get_field('course_image_five'); ?>');"></div>
                </div>
              <?php endif; ?>


            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

        </div>
      </div>
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
    </div>
  </section>

  <?php if($teachers): ?>
    <div class="container-fluid pt-3 px-0 content-team">
      <div class="row no-gutters">
        <div class="col">
          <p class="section-header">Teachers</p>
        </div>
      </div>
      <?php foreach( $teachers as $post): // variable must be called $post (IMPORTANT) ?>
      <?php setup_postdata($post); ?>
      <?php $count ++; ?>
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
      <?php endforeach; ?>
    <?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>


    </div>
  <?php endif; ?>

<?php endwhile; ?>
<!-- <?php //get_template_part('templates/content' ,'team'); ?> -->
<?php get_template_part('templates/testimonials'); ?>
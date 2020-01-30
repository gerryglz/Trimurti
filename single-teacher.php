<?php while (have_posts()) : the_post(); ?>
  <?php 
    $courses = get_field('teacher_course');
    $courses_length = count($courses); 
    $i = 0;
  ?>

  <section <?php post_class(); ?>>
  	<div class="container-fluid px-0">
  		<div class="row no-gutters">
  			<div class="col">
  				<div class="course-header" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')">
  					<div class="overlay">
  						<div class="header-info">
  							<p class="header-location"><?php echo the_title(); ?></p>
                <p class="header-title">
                  <?php if($courses): ?>
                    <?php foreach( $courses as $post): // variable must be called $post (IMPORTANT) ?>
                    <?php setup_postdata($post); ?>
                      <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                      <?php echo $i < $courses_length - 1 ? ', ' : '' ; ?>
                      
                      <?php //if (get_field('teacher_course')) { echo get_field('teacher_course');} ?>

                    <?php $i ++; ?>
                    <?php endforeach; ?>
                    <?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
                  <?php endif; ?>
                </p>
  						</div>
  					</div>
  				</div>
  			</div>
  		</div>
  	</div>
    <div class="container py-5">
      <div class="row">
        <div class="col-12 col-md-8 offset-md-2 col-lg-10 offset-lg-1">
          <?php the_content(); ?>
        </div>
      </div>
    </div>
  </section>
<?php endwhile; ?>
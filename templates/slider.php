<?php 
	$args = array(
		'post_type' => 'home_slide',
		'order' => 'ASC',
		'orderby' => 'date',
		'posts_per_page' => -1
	);

	$slides = new WP_Query($args);
	$count = 0;
	$data_count = 0;
?>
<div class="container-fluid p-0">
	<div class="row no-gutters">
		<div class="col">

			<div id="homeCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<?php
			  		if ( $slides->have_posts() ) :
			  			while( $slides->have_posts() ) :
    	    		$slides->the_post();
					?>
						<li data-target="#homeCarousel" data-slide-to="<?php echo $data_count; ?>" class="<?php if($data_count === 0) { echo 'active'; } ?>"></li>
					<?php 
							$data_count++;
							endwhile;
						endif;
					?>
			  </ol>
			  <div class="carousel-inner">
			  	<?php 
			  		if ( $slides->have_posts() ) :
			  			while( $slides->have_posts() ) :
    	    		$slides->the_post();
    	    		$count ++;
			  	?>
			  	<div class="carousel-item <?php if($count === 1) { echo 'active'; } ?>">
			      <img class="carousel-image" src="<?php echo the_post_thumbnail_url(); ?>" alt="Second slide">
			      <div class="carousel-caption">
		          <p class="h1"><?php echo the_title(); ?></p>
		        </div>
			    </div>
			  	<?php 
			  			endwhile;
			  		endif;
			  	?>
			  </div>
			  <a class="carousel-control-prev" href="#homeCarousel" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#homeCarousel" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>

		</div>
	</div>
</div>
<footer class="content-info footer">
  <div class="container">
    <div class="row">
    	<?php  
	    	$args = array(
	    		'post_type' => 'flocation',
	    		'order' => 'ASC',
	    		'orderby' => 'date',
	    		'posts_per_page' => 2
	    	);

	    	$locations = new WP_Query($args);

	    	if ( $locations->have_posts() ) :

    		while( $locations->have_posts() ) :
    	    $locations->the_post();
    	?>
				<div class="col-12 col-md-4 flocation">
					<p class="flocation-title"><?php echo get_the_title(); ?></p>
					<p class="flocation-description"><?php echo get_the_content(); ?></p>
				</div>
    	<?php
    	  endwhile;
    	endif;
    	?>
    </div>
    <div class="row">
    	<div class="col">
    		<?php dynamic_sidebar('sidebar-footer'); ?>
    	</div>
    </div>
    <div class="row">
    	<div class="col">
    		<p class="copyright">&copy; <?php echo date("Y"); ?> Trimurti Yoga México. All rights reserved.</p>
    	</div>
    </div>
  </div>
</footer>

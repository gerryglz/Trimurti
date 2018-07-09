<?php 
	$args = array(
		'post_type' => 'faq',
		'order' => 'ASC',
		'orderby' => 'date',
		'posts_per_page' => -1,
	);

	$faq = new WP_Query($args);
	$general = 0;
	$yoga = 0;
?>
<?php if ( $faq->have_posts() ) :  ?>
	<div class="container mb-5">
		<div class="row">
			<div class="col">
				<p class="section-header">General and Mexico FAQ</p>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<div class="accordion accordion-faq" id="accordionGeneral">
					<?php 
						while( $faq->have_posts() ) :
						$faq->the_post();	
						if (get_field('faq_type') === 'general') :
							$general ++;
					?>
						<div class="card">
						  <div class="card-header" id="heading<?php echo $general; ?>">
						    <button class="collapse-btn" type="button" data-toggle="collapse" data-target="#collapse<?php echo $general; ?>" aria-expanded="false" aria-controls="collapse<?php echo $general; ?>">
						      <?php echo the_title(); ?> <i class="fas fa-chevron-down"></i>
						    </button>
						  </div>

						  <div id="collapse<?php echo $general; ?>" class="collapse" aria-labelledby="heading<?php echo $general; ?>" data-parent="#accordionGeneral">
						    <div class="card-body">
						      <div class="container">
						      	<?php the_content(); ?>
						      </div>
						    </div>
						  </div>
						</div>
					<?php 
							endif;
						endwhile;
					 ?>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<p class="section-header">Yoga FAQs</p>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<div class="accordion accordion-faq" id="accordionYoga">
					<?php 
						while( $faq->have_posts() ) :
						$faq->the_post();	
						if (get_field('faq_type') === 'yoga') :
						$yoga ++;
					?>
						<div class="card">
						  <div class="card-header" id="headingY<?php echo $yoga; ?>">
						    <button class="collapse-btn" type="button" data-toggle="collapse" data-target="#collapseY<?php echo $yoga; ?>" aria-expanded="false" aria-controls="collapseY<?php echo $yoga; ?>">
						      <?php echo the_title(); ?> <i class="fas fa-chevron-down"></i>
						    </button>
						  </div>

						  <div id="collapseY<?php echo $yoga; ?>" class="collapse" aria-labelledby="headingY<?php echo $yoga; ?>" data-parent="#accordionYoga">
						    <div class="card-body">
						      <div class="container">
						      	<?php the_content(); ?>
						      </div>
						    </div>
						  </div>
						</div>
					<?php 
							endif;
						endwhile;
					 ?>
				</div>
			</div>
		</div>
	</div>
<?php endif; ?>
<?php
/**
 * Template Name: Contact Page
 */
?>
<div class="container-fluid px-0">
	<div class="row no-gutters">
		<div class="col">
			<div class="image-header" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')">
				<div class="overlay">
					<div class="header-info">
						<p class="header-title">Contact</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php while (have_posts()) : the_post(); ?>
<div class="container py-5">
  <div class="row">
    <div class="col">
      <?php the_content(); ?>
    </div>
  </div>
</div>
<?php endwhile; ?>
<div class="bg-grey pb-5">
	<div class="container mb-3">
		<div class="row">
			<div class="col">
				<p class="section-header">Other TRIMURTI Yoga Schools</p>
			</div>
		</div>
		<div class="row">

			<div class="col-12 col-md-4 contact-sites">
				<p class="site-title">Goa, India</p>
				<address>Dumane Shristhal, Agonda
				Palolem Road, Canacona, Goa 	
				403702</address>
				<ul class="nav flex-column">
					<li>
						<i class="fas fa-globe-americas"></i> <a href="trimurtiyoga.com" target="_blank">trimurtiyoga.com</a>
					</li>
					<li>
						<i class="fas fa-envelope"></i> <a href="mailto:uttam@trimurtiyoga.com">uttam@trimurtiyoga.com</a>
					</li>
					<li>
						<i class="fas fa-phone"></i> <a href="tel:9198650678855">+91 986506 78855</a>
					</li>
				</ul>
			</div>


			<div class="col-12 col-md-4 contact-sites">
				<p class="site-title">Dharamsala, India</p>
				<address>Trimurti Yoga Dharamkot, Opposite
				"Trek abd Dine", McLeod Ganj, Dharamsala	
				176219</address>
				<ul class="nav flex-column">
					<li>
						<i class="fas fa-globe-americas"></i> <a href="trimurtiyoga.com" target="_blank">trimurtiyoga.com</a>
					</li>
					<li>
						<i class="fas fa-envelope"></i> <a href="mailto:uttam@trimurtiyoga.com">uttam@trimurtiyoga.com</a>
					</li>
					<li>
						<i class="fas fa-phone"></i> <a href="tel:9198650678855">+91 986506 78855</a>
					</li>
				</ul>
			</div>

			<div class="col-12 col-md-4 contact-sites">
				<p class="site-title">Dunedin, New Zealand</p>
				<address>Studio Tula, First Floor,
				Bing Harris Biuilding, 286 Princess Street	
				Dunedin, NZ</address>
				<ul class="nav flex-column">
					<li>
						<i class="fas fa-globe-americas"></i> <a href="trimurtiyoga.com" target="_blank">trimurtiyoga.com</a>
					</li>
					<li>
						<i class="fas fa-envelope"></i> <a href="mailto:uttam@trimurtiyoga.com">uttam@trimurtiyoga.com</a>
					</li>
					<li>
						<i class="fas fa-phone"></i> <a href="tel:9198650678855">+91 986506 78855</a>
					</li>
				</ul>
			</div>

		</div>
	</div>
</div>
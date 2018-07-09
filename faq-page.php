<?php
/**
 * Template Name: FAQ Page
 */
?>
<div class="container-fluid px-0">
	<div class="row no-gutters">
		<div class="col">
			<div class="image-header" style="background-image: url('<?php echo the_post_thumbnail_url(); ?>')">
				<div class="overlay">
					<div class="header-info">
						<p class="header-title">FAQS</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php get_template_part('templates/content', 'faq'); ?>

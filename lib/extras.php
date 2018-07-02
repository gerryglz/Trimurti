<?php

namespace Roots\Sage\Extras;

use Roots\Sage\Setup;

/**
 * Add <body> classes
 */
function body_class($classes) {
  // Add page slug if it doesn't exist
  if (is_single() || is_page() && !is_front_page()) {
    if (!in_array(basename(get_permalink()), $classes)) {
      $classes[] = basename(get_permalink());
    }
  }

  // Add class if sidebar is active
  if (Setup\display_sidebar()) {
    $classes[] = 'sidebar-primary';
  }

  return $classes;
}
add_filter('body_class', __NAMESPACE__ . '\\body_class');

/**
 * Clean up the_excerpt()
 */
function excerpt_more() {
  return ' &hellip; <a href="' . get_permalink() . '">' . __('Continued', 'sage') . '</a>';
}
add_filter('excerpt_more', __NAMESPACE__ . '\\excerpt_more');



/* Custom Logo */
function mytheme_setup() {

  add_image_size('mytheme-logo', 239, 80);

  add_theme_support('custom-logo', array(
    'size' => 'mytheme-logo'
  ));
}

add_action('after_setup_theme', __NAMESPACE__ . '\\mytheme_setup');

/* Color Shortcode */
function section_grey( $atts, $content = null ) {
  return '<div class="bg-grey">' . $content . '</div>';
}
add_shortcode( 'grey-bg',  __NAMESPACE__ . '\\section_grey' );

// Register Custom Post Type
function course_post_type() {

  $labels = array(
    'name'                  => _x( 'Courses', 'Post Type General Name', 'text_domain' ),
    'singular_name'         => _x( 'Course', 'Post Type Singular Name', 'text_domain' ),
    'menu_name'             => __( 'Courses', 'text_domain' ),
    'name_admin_bar'        => __( 'Post Type', 'text_domain' ),
    'archives'              => __( 'Course Archives', 'text_domain' ),
    'attributes'            => __( 'Course Attributes', 'text_domain' ),
    'parent_item_colon'     => __( 'Parent Course:', 'text_domain' ),
    'all_items'             => __( 'All Courses', 'text_domain' ),
    'add_new_item'          => __( 'Add New Course', 'text_domain' ),
    'add_new'               => __( 'Add New Course', 'text_domain' ),
    'new_item'              => __( 'New Course', 'text_domain' ),
    'edit_item'             => __( 'Edit Course', 'text_domain' ),
    'update_item'           => __( 'Update Course', 'text_domain' ),
    'view_item'             => __( 'View Course', 'text_domain' ),
    'view_items'            => __( 'View Courses', 'text_domain' ),
    'search_items'          => __( 'Search Course', 'text_domain' ),
    'not_found'             => __( 'Not found', 'text_domain' ),
    'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
    'featured_image'        => __( 'Featured Image', 'text_domain' ),
    'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
    'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
    'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
    'insert_into_item'      => __( 'Insert into item', 'text_domain' ),
    'uploaded_to_this_item' => __( 'Uploaded to this item', 'text_domain' ),
    'items_list'            => __( 'Items list', 'text_domain' ),
    'items_list_navigation' => __( 'Items list navigation', 'text_domain' ),
    'filter_items_list'     => __( 'Filter items list', 'text_domain' ),
  );
  $args = array(
    'label'                 => __( 'Course', 'text_domain' ),
    'description'           => __( 'Course Description', 'text_domain' ),
    'labels'                => $labels,
    'supports'              => array( 'title', 'editor', 'thumbnail', 'excerpt' ),
    //'taxonomies'            => array( 'category', 'post_tag' ),
    'hierarchical'          => false,
    'public'                => true,
    'show_ui'               => true,
    'show_in_menu'          => true,
    'menu_position'         => 5,
    'show_in_admin_bar'     => true,
    'show_in_nav_menus'     => true,
    'can_export'            => true,
    'has_archive'           => true,
    'exclude_from_search'   => false,
    'publicly_queryable'    => true,
    'capability_type'       => 'page',
  );
  register_post_type( 'course', $args );

}
add_action( 'init', __NAMESPACE__ . '\\course_post_type', 0 );

if(function_exists("register_field_group"))
{
  register_field_group(array (
    'id' => 'acf_featured-course',
    'title' => 'Featured Course',
    'fields' => array (
      array (
        'key' => 'field_5b399bc59503a',
        'label' => 'Course Price',
        'name' => 'course_price',
        'type' => 'number',
        'instructions' => 'Please add course price',
        'default_value' => '',
        'placeholder' => '',
        'prepend' => '',
        'append' => '',
        'min' => '',
        'max' => '',
        'step' => '',
      ),
      array (
        'key' => 'field_5b399c119503b',
        'label' => 'Course Style',
        'name' => 'course_style',
        'type' => 'text',
        'default_value' => '',
        'placeholder' => '',
        'prepend' => '',
        'append' => '',
        'formatting' => 'html',
        'maxlength' => '',
      ),
      array (
        'key' => 'field_5b394e17a8af0',
        'label' => 'Featured Course',
        'name' => 'featured_course',
        'type' => 'checkbox',
        'instructions' => 'Select if featured',
        'choices' => array (
          'yes' => 'Featured Course',
        ),
        'default_value' => 'no',
        'layout' => 'vertical',
      ),
    ),
    'location' => array (
      array (
        array (
          'param' => 'post_type',
          'operator' => '==',
          'value' => 'course',
          'order_no' => 0,
          'group_no' => 0,
        ),
      ),
    ),
    'options' => array (
      'position' => 'normal',
      'layout' => 'no_box',
      'hide_on_screen' => array (
      ),
    ),
    'menu_order' => 0,
  ));
}

// Register Custom Post Type
function flocation_post_type() {

  $labels = array(
    'name'                  => _x( 'Footer Locations', 'Post Type General Name', 'text_domain' ),
    'singular_name'         => _x( 'Footer Location', 'Post Type Singular Name', 'text_domain' ),
    'menu_name'             => __( 'Footer Locations', 'text_domain' ),
    'name_admin_bar'        => __( 'Post Type', 'text_domain' ),
    'archives'              => __( 'Footer Location Archives', 'text_domain' ),
    'attributes'            => __( 'Footer Location Attributes', 'text_domain' ),
    'parent_item_colon'     => __( 'Parent Footer Location:', 'text_domain' ),
    'all_items'             => __( 'All Footer Locations', 'text_domain' ),
    'add_new_item'          => __( 'Add New Footer Location', 'text_domain' ),
    'add_new'               => __( 'Add New Footer Location', 'text_domain' ),
    'new_item'              => __( 'New Footer Location', 'text_domain' ),
    'edit_item'             => __( 'Edit Footer Location', 'text_domain' ),
    'update_item'           => __( 'Update Footer Location', 'text_domain' ),
    'view_item'             => __( 'View Footer Location', 'text_domain' ),
    'view_items'            => __( 'View Footer Locations', 'text_domain' ),
    'search_items'          => __( 'Search Footer Location', 'text_domain' ),
    'not_found'             => __( 'Not found', 'text_domain' ),
    'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
    'featured_image'        => __( 'Featured Image', 'text_domain' ),
    'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
    'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
    'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
    'insert_into_item'      => __( 'Insert into item', 'text_domain' ),
    'uploaded_to_this_item' => __( 'Uploaded to this item', 'text_domain' ),
    'items_list'            => __( 'Items list', 'text_domain' ),
    'items_list_navigation' => __( 'Items list navigation', 'text_domain' ),
    'filter_items_list'     => __( 'Filter items list', 'text_domain' ),
  );
  $args = array(
    'label'                 => __( 'Footer Location', 'text_domain' ),
    'description'           => __( 'Footer Location Description', 'text_domain' ),
    'labels'                => $labels,
    'supports'              => array( 'title', 'editor', 'thumbnail' ),
    //'taxonomies'            => array( 'category', 'post_tag' ),
    'hierarchical'          => false,
    'public'                => true,
    'show_ui'               => true,
    'show_in_menu'          => true,
    'menu_position'         => 5,
    'show_in_admin_bar'     => true,
    'show_in_nav_menus'     => true,
    'can_export'            => true,
    'has_archive'           => true,
    'exclude_from_search'   => false,
    'publicly_queryable'    => true,
    'capability_type'       => 'page',
  );
  register_post_type( 'flocation', $args );

}
add_action( 'init', __NAMESPACE__ . '\\flocation_post_type', 0 );

// Register Custom Post Type
function home_slide_post_type() {

  $labels = array(
    'name'                  => _x( 'Home Slides', 'Post Type General Name', 'text_domain' ),
    'singular_name'         => _x( 'Home Slide', 'Post Type Singular Name', 'text_domain' ),
    'menu_name'             => __( 'Home Slides', 'text_domain' ),
    'name_admin_bar'        => __( 'Post Type', 'text_domain' ),
    'archives'              => __( 'Home Slide Archives', 'text_domain' ),
    'attributes'            => __( 'Home Slide Attributes', 'text_domain' ),
    'parent_item_colon'     => __( 'Parent Home Slide:', 'text_domain' ),
    'all_items'             => __( 'All Home Slides', 'text_domain' ),
    'add_new_item'          => __( 'Add New Home Slide', 'text_domain' ),
    'add_new'               => __( 'Add New Home Slide', 'text_domain' ),
    'new_item'              => __( 'New Home Slide', 'text_domain' ),
    'edit_item'             => __( 'Edit Home Slide', 'text_domain' ),
    'update_item'           => __( 'Update Home Slide', 'text_domain' ),
    'view_item'             => __( 'View Home Slide', 'text_domain' ),
    'view_items'            => __( 'View Home Slides', 'text_domain' ),
    'search_items'          => __( 'Search Home Slide', 'text_domain' ),
    'not_found'             => __( 'Not found', 'text_domain' ),
    'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
    'featured_image'        => __( 'Featured Image', 'text_domain' ),
    'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
    'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
    'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
    'insert_into_item'      => __( 'Insert into item', 'text_domain' ),
    'uploaded_to_this_item' => __( 'Uploaded to this item', 'text_domain' ),
    'items_list'            => __( 'Items list', 'text_domain' ),
    'items_list_navigation' => __( 'Items list navigation', 'text_domain' ),
    'filter_items_list'     => __( 'Filter items list', 'text_domain' ),
  );
  $args = array(
    'label'                 => __( 'Home Slide', 'text_domain' ),
    'description'           => __( 'Home Slide Description', 'text_domain' ),
    'labels'                => $labels,
    'supports'              => array( 'title', 'editor', 'thumbnail' ),
    //'taxonomies'            => array( 'category', 'post_tag' ),
    'hierarchical'          => false,
    'public'                => true,
    'show_ui'               => true,
    'show_in_menu'          => true,
    'menu_position'         => 5,
    'show_in_admin_bar'     => true,
    'show_in_nav_menus'     => true,
    'can_export'            => true,
    'has_archive'           => true,
    'exclude_from_search'   => false,
    'publicly_queryable'    => true,
    'capability_type'       => 'page',
  );
  register_post_type( 'home_slide', $args );

}
add_action( 'init', __NAMESPACE__ . '\\home_slide_post_type', 0 );


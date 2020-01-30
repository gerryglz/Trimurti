-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 30, 2020 at 02:13 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trimurti_wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-23 05:30:29', '2018-06-23 05:30:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/trimurti', 'yes'),
(2, 'home', 'http://localhost:8888/trimurti', 'yes'),
(3, 'blogname', 'Trimurti Yoga', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'gerry_gonzalez@hotmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:271:{s:9:\"course/?$\";s:26:\"index.php?post_type=course\";s:39:\"course/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=course&feed=$matches[1]\";s:34:\"course/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=course&feed=$matches[1]\";s:26:\"course/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=course&paged=$matches[1]\";s:12:\"flocation/?$\";s:29:\"index.php?post_type=flocation\";s:42:\"flocation/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=flocation&feed=$matches[1]\";s:37:\"flocation/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=flocation&feed=$matches[1]\";s:29:\"flocation/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=flocation&paged=$matches[1]\";s:13:\"home_slide/?$\";s:30:\"index.php?post_type=home_slide\";s:43:\"home_slide/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=home_slide&feed=$matches[1]\";s:38:\"home_slide/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=home_slide&feed=$matches[1]\";s:30:\"home_slide/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=home_slide&paged=$matches[1]\";s:7:\"site/?$\";s:24:\"index.php?post_type=site\";s:37:\"site/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=site&feed=$matches[1]\";s:32:\"site/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=site&feed=$matches[1]\";s:24:\"site/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=site&paged=$matches[1]\";s:14:\"testimonial/?$\";s:31:\"index.php?post_type=testimonial\";s:44:\"testimonial/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:39:\"testimonial/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:31:\"testimonial/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=testimonial&paged=$matches[1]\";s:10:\"teacher/?$\";s:27:\"index.php?post_type=teacher\";s:40:\"teacher/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=teacher&feed=$matches[1]\";s:35:\"teacher/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=teacher&feed=$matches[1]\";s:27:\"teacher/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=teacher&paged=$matches[1]\";s:6:\"faq/?$\";s:23:\"index.php?post_type=faq\";s:36:\"faq/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=faq&feed=$matches[1]\";s:31:\"faq/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=faq&feed=$matches[1]\";s:23:\"faq/page/([0-9]{1,})/?$\";s:41:\"index.php?post_type=faq&paged=$matches[1]\";s:8:\"video/?$\";s:25:\"index.php?post_type=video\";s:38:\"video/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=video&feed=$matches[1]\";s:33:\"video/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=video&feed=$matches[1]\";s:25:\"video/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=video&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"course/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"course/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"course/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"course/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"course/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"course/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"course/([^/]+)/embed/?$\";s:39:\"index.php?course=$matches[1]&embed=true\";s:27:\"course/([^/]+)/trackback/?$\";s:33:\"index.php?course=$matches[1]&tb=1\";s:47:\"course/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?course=$matches[1]&feed=$matches[2]\";s:42:\"course/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?course=$matches[1]&feed=$matches[2]\";s:35:\"course/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?course=$matches[1]&paged=$matches[2]\";s:42:\"course/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?course=$matches[1]&cpage=$matches[2]\";s:31:\"course/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?course=$matches[1]&page=$matches[2]\";s:23:\"course/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"course/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"course/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"course/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"course/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"course/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"flocation/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"flocation/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"flocation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"flocation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"flocation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"flocation/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"flocation/([^/]+)/embed/?$\";s:42:\"index.php?flocation=$matches[1]&embed=true\";s:30:\"flocation/([^/]+)/trackback/?$\";s:36:\"index.php?flocation=$matches[1]&tb=1\";s:50:\"flocation/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?flocation=$matches[1]&feed=$matches[2]\";s:45:\"flocation/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?flocation=$matches[1]&feed=$matches[2]\";s:38:\"flocation/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?flocation=$matches[1]&paged=$matches[2]\";s:45:\"flocation/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?flocation=$matches[1]&cpage=$matches[2]\";s:34:\"flocation/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?flocation=$matches[1]&page=$matches[2]\";s:26:\"flocation/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"flocation/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"flocation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"flocation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"flocation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"flocation/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"home_slide/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"home_slide/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"home_slide/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"home_slide/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"home_slide/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"home_slide/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"home_slide/([^/]+)/embed/?$\";s:43:\"index.php?home_slide=$matches[1]&embed=true\";s:31:\"home_slide/([^/]+)/trackback/?$\";s:37:\"index.php?home_slide=$matches[1]&tb=1\";s:51:\"home_slide/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?home_slide=$matches[1]&feed=$matches[2]\";s:46:\"home_slide/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?home_slide=$matches[1]&feed=$matches[2]\";s:39:\"home_slide/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?home_slide=$matches[1]&paged=$matches[2]\";s:46:\"home_slide/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?home_slide=$matches[1]&cpage=$matches[2]\";s:35:\"home_slide/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?home_slide=$matches[1]&page=$matches[2]\";s:27:\"home_slide/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"home_slide/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"home_slide/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"home_slide/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"home_slide/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"home_slide/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"site/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"site/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"site/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"site/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"site/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"site/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"site/([^/]+)/embed/?$\";s:37:\"index.php?site=$matches[1]&embed=true\";s:25:\"site/([^/]+)/trackback/?$\";s:31:\"index.php?site=$matches[1]&tb=1\";s:45:\"site/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?site=$matches[1]&feed=$matches[2]\";s:40:\"site/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?site=$matches[1]&feed=$matches[2]\";s:33:\"site/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?site=$matches[1]&paged=$matches[2]\";s:40:\"site/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?site=$matches[1]&cpage=$matches[2]\";s:29:\"site/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?site=$matches[1]&page=$matches[2]\";s:21:\"site/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"site/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"site/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"site/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"site/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"site/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"testimonial/([^/]+)/embed/?$\";s:44:\"index.php?testimonial=$matches[1]&embed=true\";s:32:\"testimonial/([^/]+)/trackback/?$\";s:38:\"index.php?testimonial=$matches[1]&tb=1\";s:52:\"testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:47:\"testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:40:\"testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&paged=$matches[2]\";s:47:\"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&cpage=$matches[2]\";s:36:\"testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?testimonial=$matches[1]&page=$matches[2]\";s:28:\"testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"teacher/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"teacher/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"teacher/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"teacher/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"teacher/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"teacher/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"teacher/([^/]+)/embed/?$\";s:40:\"index.php?teacher=$matches[1]&embed=true\";s:28:\"teacher/([^/]+)/trackback/?$\";s:34:\"index.php?teacher=$matches[1]&tb=1\";s:48:\"teacher/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?teacher=$matches[1]&feed=$matches[2]\";s:43:\"teacher/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?teacher=$matches[1]&feed=$matches[2]\";s:36:\"teacher/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?teacher=$matches[1]&paged=$matches[2]\";s:43:\"teacher/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?teacher=$matches[1]&cpage=$matches[2]\";s:32:\"teacher/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?teacher=$matches[1]&page=$matches[2]\";s:24:\"teacher/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"teacher/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"teacher/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"teacher/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"teacher/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"teacher/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"faq/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"faq/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"faq/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"faq/([^/]+)/embed/?$\";s:36:\"index.php?faq=$matches[1]&embed=true\";s:24:\"faq/([^/]+)/trackback/?$\";s:30:\"index.php?faq=$matches[1]&tb=1\";s:44:\"faq/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?faq=$matches[1]&feed=$matches[2]\";s:39:\"faq/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?faq=$matches[1]&feed=$matches[2]\";s:32:\"faq/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&paged=$matches[2]\";s:39:\"faq/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&cpage=$matches[2]\";s:28:\"faq/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?faq=$matches[1]&page=$matches[2]\";s:20:\"faq/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"faq/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"faq/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"video/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"video/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"video/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"video/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"video/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"video/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"video/([^/]+)/embed/?$\";s:38:\"index.php?video=$matches[1]&embed=true\";s:26:\"video/([^/]+)/trackback/?$\";s:32:\"index.php?video=$matches[1]&tb=1\";s:46:\"video/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?video=$matches[1]&feed=$matches[2]\";s:41:\"video/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?video=$matches[1]&feed=$matches[2]\";s:34:\"video/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?video=$matches[1]&paged=$matches[2]\";s:41:\"video/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?video=$matches[1]&cpage=$matches[2]\";s:30:\"video/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?video=$matches[1]&page=$matches[2]\";s:22:\"video/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"video/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"video/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"video/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"video/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"video/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:60:\"cf7-conditional-fields/contact-form-7-conditional-fields.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'trimurti', 'yes'),
(41, 'stylesheet', 'trimurti', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"sidebar-footer\";a:1:{i:0;s:10:\"nav_menu-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1580394629;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580405429;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580406704;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580448647;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1529732330;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'Sage Starter Theme', 'yes'),
(139, 'theme_mods_trimurti', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"primary_navigation\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:14;}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(147, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(167, 'acf_version', '5.7.7', 'yes'),
(172, 'cptui_new_install', 'false', 'yes'),
(207, 'cptui_post_types', 'a:0:{}', 'yes'),
(216, 'cptui_taxonomies', 'a:0:{}', 'yes'),
(221, 'category_children', 'a:0:{}', 'yes'),
(359, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"gerry_gonzalez@hotmail.com\";s:7:\"version\";s:6:\"4.9.13\";s:9:\"timestamp\";i:1577977343;}', 'no'),
(404, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1531080223;s:7:\"version\";s:5:\"5.0.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(527, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.5\";s:7:\"version\";s:5:\"5.2.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.4\";s:7:\"version\";s:5:\"5.1.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.8\";s:7:\"version\";s:5:\"5.0.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1580393072;s:15:\"version_checked\";s:6:\"4.9.13\";s:12:\"translations\";a:0:{}}', 'no'),
(532, '_site_transient_timeout_theme_roots', '1580394876', 'no'),
(533, '_site_transient_theme_roots', 'a:2:{s:8:\"trimurti\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no'),
(534, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1580393076;s:7:\"checked\";a:2:{s:8:\"trimurti\";s:5:\"8.5.4\";s:15:\"twentyseventeen\";s:3:\"1.6\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(535, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1580393076;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.7\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.5\";s:60:\"cf7-conditional-fields/contact-form-7-conditional-fields.php\";s:5:\"1.4.1\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.0\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:60:\"cf7-conditional-fields/contact-form-7-conditional-fields.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/cf7-conditional-fields\";s:4:\"slug\";s:22:\"cf7-conditional-fields\";s:6:\"plugin\";s:60:\"cf7-conditional-fields/contact-form-7-conditional-fields.php\";s:11:\"new_version\";s:5:\"1.7.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/cf7-conditional-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/cf7-conditional-fields.1.7.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/cf7-conditional-fields/assets/icon-256x256.png?rev=2072595\";s:2:\"1x\";s:75:\"https://ps.w.org/cf7-conditional-fields/assets/icon-128x128.png?rev=2072595\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/cf7-conditional-fields/assets/banner-1544x500.png?rev=1925451\";s:2:\"1x\";s:77:\"https://ps.w.org/cf7-conditional-fields/assets/banner-772x250.png?rev=1925451\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_wp_page_template', 'home-page.php'),
(5, 5, '_edit_lock', '1530743243:1'),
(6, 7, '_edit_last', '1'),
(7, 7, '_wp_page_template', 'about-page.php'),
(8, 7, '_edit_lock', '1531110393:1'),
(18, 10, '_menu_item_type', 'post_type'),
(19, 10, '_menu_item_menu_item_parent', '0'),
(20, 10, '_menu_item_object_id', '7'),
(21, 10, '_menu_item_object', 'page'),
(22, 10, '_menu_item_target', ''),
(23, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 10, '_menu_item_xfn', ''),
(25, 10, '_menu_item_url', ''),
(44, 14, '_wp_attached_file', '2018/06/trimurti-yoga-logo.png'),
(45, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:709;s:6:\"height\";i:237;s:4:\"file\";s:30:\"2018/06/trimurti-yoga-logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"trimurti-yoga-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"trimurti-yoga-logo-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"mytheme-logo\";a:4:{s:4:\"file\";s:29:\"trimurti-yoga-logo-239x80.png\";s:5:\"width\";i:239;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 17, '_edit_last', '1'),
(49, 17, '_edit_lock', '1532089470:1'),
(63, 23, '_edit_last', '1'),
(64, 23, '_edit_lock', '1531109831:1'),
(65, 24, '_edit_last', '1'),
(66, 24, '_edit_lock', '1531109512:1'),
(67, 26, '_menu_item_type', 'custom'),
(68, 26, '_menu_item_menu_item_parent', '0'),
(69, 26, '_menu_item_object_id', '26'),
(70, 26, '_menu_item_object', 'custom'),
(71, 26, '_menu_item_target', ''),
(72, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 26, '_menu_item_xfn', ''),
(74, 26, '_menu_item_url', 'http://facebook.com'),
(76, 27, '_menu_item_type', 'custom'),
(77, 27, '_menu_item_menu_item_parent', '0'),
(78, 27, '_menu_item_object_id', '27'),
(79, 27, '_menu_item_object', 'custom'),
(80, 27, '_menu_item_target', ''),
(81, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 27, '_menu_item_xfn', ''),
(83, 27, '_menu_item_url', 'http://twitter.com'),
(85, 28, '_menu_item_type', 'custom'),
(86, 28, '_menu_item_menu_item_parent', '0'),
(87, 28, '_menu_item_object_id', '28'),
(88, 28, '_menu_item_object', 'custom'),
(89, 28, '_menu_item_target', ''),
(90, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 28, '_menu_item_xfn', ''),
(92, 28, '_menu_item_url', 'http://instagram.com'),
(94, 29, '_edit_last', '1'),
(95, 29, '_wp_page_template', 'teachers-page.php'),
(96, 29, '_edit_lock', '1531069565:1'),
(97, 31, '_edit_last', '1'),
(98, 31, '_wp_page_template', 'courses-page.php'),
(99, 31, '_edit_lock', '1530892542:1'),
(100, 33, '_edit_last', '1'),
(101, 33, '_edit_lock', '1531105421:1'),
(102, 33, '_wp_page_template', 'faq-page.php'),
(103, 35, '_edit_last', '1'),
(104, 35, '_wp_page_template', 'contact-page.php'),
(105, 35, '_edit_lock', '1531795551:1'),
(106, 3, '_edit_lock', '1530121301:1'),
(110, 38, '_edit_last', '1'),
(111, 38, '_wp_page_template', 'enroll-page.php'),
(112, 38, '_edit_lock', '1531258761:1'),
(113, 40, '_menu_item_type', 'post_type'),
(114, 40, '_menu_item_menu_item_parent', '0'),
(115, 40, '_menu_item_object_id', '38'),
(116, 40, '_menu_item_object', 'page'),
(117, 40, '_menu_item_target', ''),
(118, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 40, '_menu_item_xfn', ''),
(120, 40, '_menu_item_url', ''),
(122, 41, '_menu_item_type', 'post_type'),
(123, 41, '_menu_item_menu_item_parent', '0'),
(124, 41, '_menu_item_object_id', '35'),
(125, 41, '_menu_item_object', 'page'),
(126, 41, '_menu_item_target', ''),
(127, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 41, '_menu_item_xfn', ''),
(129, 41, '_menu_item_url', ''),
(131, 42, '_menu_item_type', 'post_type'),
(132, 42, '_menu_item_menu_item_parent', '0'),
(133, 42, '_menu_item_object_id', '33'),
(134, 42, '_menu_item_object', 'page'),
(135, 42, '_menu_item_target', ''),
(136, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 42, '_menu_item_xfn', ''),
(138, 42, '_menu_item_url', ''),
(140, 43, '_menu_item_type', 'post_type'),
(141, 43, '_menu_item_menu_item_parent', '0'),
(142, 43, '_menu_item_object_id', '31'),
(143, 43, '_menu_item_object', 'page'),
(144, 43, '_menu_item_target', ''),
(145, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 43, '_menu_item_xfn', ''),
(147, 43, '_menu_item_url', ''),
(149, 44, '_menu_item_type', 'post_type'),
(150, 44, '_menu_item_menu_item_parent', '0'),
(151, 44, '_menu_item_object_id', '29'),
(152, 44, '_menu_item_object', 'page'),
(153, 44, '_menu_item_target', ''),
(154, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 44, '_menu_item_xfn', ''),
(156, 44, '_menu_item_url', ''),
(158, 47, '_edit_last', '1'),
(159, 47, '_edit_lock', '1530131303:1'),
(160, 48, '_wp_attached_file', '2018/06/any.jpg'),
(161, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:400;s:4:\"file\";s:15:\"2018/06/any.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"any-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"any-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"any-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"mytheme-logo\";a:4:{s:4:\"file\";s:14:\"any-160x80.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 47, '_thumbnail_id', '48'),
(163, 49, '_edit_last', '1'),
(164, 49, '_edit_lock', '1530132649:1'),
(165, 50, '_wp_attached_file', '2018/06/tech.jpg'),
(166, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:400;s:4:\"file\";s:16:\"2018/06/tech.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"tech-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"tech-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"tech-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"mytheme-logo\";a:4:{s:4:\"file\";s:15:\"tech-160x80.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 49, '_thumbnail_id', '50'),
(168, 51, '_edit_last', '1'),
(169, 51, '_edit_lock', '1530132684:1'),
(170, 52, '_wp_attached_file', '2018/06/tech-1.jpg'),
(171, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:400;s:4:\"file\";s:18:\"2018/06/tech-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tech-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tech-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"tech-1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"mytheme-logo\";a:4:{s:4:\"file\";s:17:\"tech-1-160x80.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 51, '_thumbnail_id', '52'),
(173, 53, '_edit_last', '1'),
(174, 53, '_edit_lock', '1530133123:1'),
(175, 54, '_wp_attached_file', '2018/06/arch.jpg'),
(176, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:400;s:4:\"file\";s:16:\"2018/06/arch.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"arch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"arch-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"arch-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"mytheme-logo\";a:4:{s:4:\"file\";s:15:\"arch-160x80.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 53, '_thumbnail_id', '54'),
(178, 55, '_edit_last', '1'),
(179, 55, '_edit_lock', '1540920947:1'),
(180, 56, '_wp_attached_file', '2018/06/YogaCircleDronie.jpg'),
(181, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1011;s:4:\"file\";s:28:\"2018/06/YogaCircleDronie.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"YogaCircleDronie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"YogaCircleDronie-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"YogaCircleDronie-768x431.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"YogaCircleDronie-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"mytheme-logo\";a:4:{s:4:\"file\";s:27:\"YogaCircleDronie-142x80.jpg\";s:5:\"width\";i:142;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:5:\"FC220\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1480156830\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"4.7\";s:3:\"iso\";s:3:\"133\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(182, 55, '_thumbnail_id', '56'),
(183, 55, 'featured', 'a:1:{i:0;s:3:\"yes\";}'),
(184, 55, '_featured', 'featured_course_key'),
(185, 57, '_wp_attached_file', '2018/06/DJI_0214.jpg'),
(186, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2250;s:4:\"file\";s:20:\"2018/06/DJI_0214.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DJI_0214-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DJI_0214-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DJI_0214-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DJI_0214-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"mytheme-logo\";a:4:{s:4:\"file\";s:19:\"DJI_0214-142x80.jpg\";s:5:\"width\";i:142;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:5:\"FC220\";s:7:\"caption\";s:24:\"DCIM100MEDIADJI_0214.JPG\";s:17:\"created_timestamp\";s:10:\"1520762099\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.73\";s:3:\"iso\";s:3:\"111\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:24:\"DCIM100MEDIADJI_0214.JPG\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(187, 17, '_thumbnail_id', '57'),
(188, 17, 'featured', ''),
(189, 17, '_featured', 'featured_course_key'),
(200, 55, 'featured_course', 'a:1:{i:0;s:3:\"yes\";}'),
(201, 55, '_featured_course', 'field_5b394e17a8af0'),
(204, 17, 'featured_course', 'a:1:{i:0;s:3:\"yes\";}'),
(205, 17, '_featured_course', 'field_5b394e17a8af0'),
(217, 55, 'course_price', '500'),
(218, 55, '_course_price', 'field_5b399bc59503a'),
(219, 55, 'course_style', 'Yin Yoga TTC'),
(220, 55, '_course_style', 'field_5b399c119503b'),
(221, 17, 'course_price', '500'),
(222, 17, '_course_price', 'field_5b399bc59503a'),
(223, 17, 'course_style', 'Multi-Style'),
(224, 17, '_course_style', 'field_5b399c119503b'),
(225, 61, '_edit_last', '1'),
(226, 61, '_edit_lock', '1540920829:1'),
(227, 61, 'course_price', '550'),
(228, 61, '_course_price', 'field_5b399bc59503a'),
(229, 61, 'course_style', 'Yoga Nidra'),
(230, 61, '_course_style', 'field_5b399c119503b'),
(231, 61, 'featured_course', 'a:1:{i:0;s:3:\"yes\";}'),
(232, 61, '_featured_course', 'field_5b394e17a8af0'),
(233, 62, '_wp_attached_file', '2018/07/025.jpg'),
(234, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1200;s:4:\"file\";s:15:\"2018/07/025.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"025-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"025-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"025-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"025-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"mytheme-logo\";a:4:{s:4:\"file\";s:14:\"025-120x80.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:12:\"Kaycee Clark\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1393259618\";s:9:\"copyright\";s:21:\"Real Life Photographs\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(235, 61, '_thumbnail_id', '62'),
(236, 66, '_edit_last', '1'),
(237, 66, '_edit_lock', '1531111352:1'),
(238, 66, '_thumbnail_id', '56'),
(239, 67, '_edit_last', '1'),
(240, 67, '_edit_lock', '1531195425:1'),
(241, 67, '_thumbnail_id', '57'),
(242, 73, '_edit_last', '1'),
(243, 73, '_edit_lock', '1530743306:1'),
(244, 73, '_thumbnail_id', '54'),
(245, 74, '_edit_last', '1'),
(246, 74, '_edit_lock', '1530743324:1'),
(247, 74, '_thumbnail_id', '56'),
(248, 75, '_edit_last', '1'),
(249, 75, '_edit_lock', '1531110584:1'),
(250, 75, '_thumbnail_id', '62'),
(251, 7, '_thumbnail_id', '57'),
(252, 85, '_edit_last', '1'),
(253, 85, '_edit_lock', '1531071976:1'),
(254, 85, '_thumbnail_id', '48'),
(255, 86, '_edit_last', '1'),
(256, 86, '_edit_lock', '1540925789:1'),
(257, 86, '_thumbnail_id', '57'),
(258, 31, '_thumbnail_id', '62'),
(273, 61, 'course_location', 'San Francisco, Nayarit'),
(274, 61, '_course_location', 'field_5b3f9381d10d1'),
(275, 61, 'course_discipline', 'Multi Style'),
(276, 61, '_course_discipline', 'field_5b3f93c9b5571'),
(277, 61, 'course_date', '20200110'),
(278, 61, '_course_date', 'field_5b3f93fd73294'),
(279, 55, 'course_location', 'San Francisco, Nayarit'),
(280, 55, '_course_location', 'field_5b3f9381d10d1'),
(281, 55, 'course_discipline', 'Multi Style'),
(282, 55, '_course_discipline', 'field_5b3f93c9b5571'),
(283, 55, 'course_date', '20180707'),
(284, 55, '_course_date', 'field_5b3f93fd73294'),
(285, 55, 'course_duration', '26 Days / 25 Nights'),
(286, 55, '_course_duration', 'field_5b3f93c9b5578'),
(287, 55, 'course_venue', 'Tailwind Lounge'),
(288, 55, '_course_venue', 'field_5b3f93c9b8578'),
(289, 17, 'course_location', 'San Francisco, Nayarit'),
(290, 17, '_course_location', 'field_5b3f9381d10d1'),
(291, 17, 'course_discipline', 'Multi Style'),
(292, 17, '_course_discipline', 'field_5b3f93c9b5571'),
(293, 17, 'course_date', '20180920'),
(294, 17, '_course_date', 'field_5b3f93fd73294'),
(295, 17, 'course_duration', '26 Days / 25 Nights'),
(296, 17, '_course_duration', 'field_5b3f93c9b5578'),
(297, 17, 'course_venue', 'Tailwind Lounge'),
(298, 17, '_course_venue', 'field_5b3f93c9b8578'),
(299, 17, 'course_vacancy', '10'),
(300, 17, '_course_vacancy', 'field_5b399bc59563a'),
(301, 55, 'course_vacancy', '5'),
(302, 55, '_course_vacancy', 'field_5b399bc59563a'),
(303, 61, 'course_duration', '26 Days / 25 Nights'),
(304, 61, '_course_duration', 'field_5b3f93c9b5578'),
(305, 61, 'course_venue', 'Samplke Venue'),
(306, 61, '_course_venue', 'field_5b3f93c9b8578'),
(307, 61, 'course_vacancy', '2'),
(308, 61, '_course_vacancy', 'field_5b399bc59563a'),
(309, 61, 'course_intro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore repellendus voluptas reprehenderit quo odit provident adipisci amet, a necessitatibus molestiae tempore, libero blanditiis ipsum aut tenetur excepturi accusamus nobis eum!'),
(310, 61, '_course_intro', 'field_5b7f93c9b8578'),
(311, 55, 'course_intro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore repellendus voluptas reprehenderit quo odit provident adipisci amet, a necessitatibus molestiae tempore, libero blanditiis ipsum aut tenetur excepturi accusamus nobis eum!'),
(312, 55, '_course_intro', 'field_5b7f93c9b8578'),
(313, 17, 'course_intro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore repellendus voluptas reprehenderit quo odit provident adipisci amet, a necessitatibus molestiae tempore, libero blanditiis ipsum aut tenetur excepturi accusamus nobis eum!'),
(314, 17, '_course_intro', 'field_5b7f93c9b8578'),
(315, 29, '_thumbnail_id', '52'),
(316, 88, '_edit_last', '1'),
(317, 88, '_edit_lock', '1531188844:1'),
(318, 86, 'teacher_course', 'a:3:{i:0;s:2:\"61\";i:1;s:2:\"17\";i:2;s:2:\"55\";}'),
(319, 86, '_teacher_course', 'field_5bd897b3bb799'),
(320, 85, 'teacher_course', 'Sample Title'),
(321, 85, '_teacher_course', 'field_5b399bc57803a'),
(322, 35, '_thumbnail_id', '56'),
(333, 90, '_wp_attached_file', '2018/06/any-1.jpg'),
(334, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:17:\"2018/06/any-1.jpg\";s:5:\"sizes\";a:1:{s:12:\"mytheme-logo\";a:4:{s:4:\"file\";s:15:\"any-1-80x80.jpg\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(335, 55, 'course_logo', '90'),
(336, 55, '_course_logo', 'field_5b425h61fed38'),
(337, 61, 'course_logo', '90'),
(338, 61, '_course_logo', 'field_5b425h61fed38'),
(339, 17, 'course_logo', '90'),
(340, 17, '_course_logo', 'field_5b425h61fed38'),
(341, 102, '_form', '[group group-172][/group]<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(342, 102, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"Trimurti Yoga \"[your-subject]\"\";s:6:\"sender\";s:40:\"[your-name] <gerry_gonzalez@hotmail.com>\";s:9:\"recipient\";s:26:\"gerry_gonzalez@hotmail.com\";s:4:\"body\";s:182:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Trimurti Yoga (http://localhost:8888/trimurti)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(343, 102, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"Trimurti Yoga \"[your-subject]\"\";s:6:\"sender\";s:42:\"Trimurti Yoga <gerry_gonzalez@hotmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:124:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Trimurti Yoga (http://localhost:8888/trimurti)\";s:18:\"additional_headers\";s:36:\"Reply-To: gerry_gonzalez@hotmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(344, 102, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(345, 102, '_additional_settings', ''),
(346, 102, '_locale', 'en_US'),
(357, 61, 'course_accommodation_options', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col\">\r\n<div class=\"table-responsive\">\r\n<table class=\"table table-secondary\">\r\n<thead>\r\n<tr>\r\n<th scope=\"col\">#</th>\r\n<th scope=\"col\">First</th>\r\n<th scope=\"col\">Last</th>\r\n<th scope=\"col\">Handle</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<th scope=\"row\">1</th>\r\n<td>Mark</td>\r\n<td>Otto</td>\r\n<td>@mdo</td>\r\n</tr>\r\n<tr>\r\n<th scope=\"row\">2</th>\r\n<td>Jacob</td>\r\n<td>Thornton</td>\r\n<td>@fat</td>\r\n</tr>\r\n<tr>\r\n<th scope=\"row\">3</th>\r\n<td>Larry</td>\r\n<td>the Bird</td>\r\n<td>@twitter</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(358, 61, '_course_accommodation_options', 'field_5b42abb4fe095'),
(359, 61, 'course_payment_application', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col\">\r\n<div class=\"table-responsive\">\r\n<table class=\"table table-secondary\">\r\n<thead>\r\n<tr>\r\n<th scope=\"col\">#</th>\r\n<th scope=\"col\">First</th>\r\n<th scope=\"col\">Last</th>\r\n<th scope=\"col\">Handle</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<th scope=\"row\">1</th>\r\n<td>Mark</td>\r\n<td>Otto</td>\r\n<td>@mdo</td>\r\n</tr>\r\n<tr>\r\n<th scope=\"row\">2</th>\r\n<td>Jacob</td>\r\n<td>Thornton</td>\r\n<td>@fat</td>\r\n</tr>\r\n<tr>\r\n<th scope=\"row\">3</th>\r\n<td>Larry</td>\r\n<td>the Bird</td>\r\n<td>@twitter</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(360, 61, '_course_payment_application', 'field_5b42afb4fe095'),
(361, 61, 'course_info', ''),
(362, 61, '_course_info', 'field_5b42afb4fy095'),
(363, 105, '_edit_last', '1'),
(364, 105, '_edit_lock', '1531103889:1'),
(365, 105, 'faq_type', 'yoga'),
(366, 105, '_faq_type', 'field_5b399bh57803a'),
(367, 106, '_edit_last', '1'),
(368, 106, '_edit_lock', '1531103808:1'),
(369, 106, 'faq_type', 'general'),
(370, 106, '_faq_type', 'field_5b399bh57803a'),
(371, 33, '_thumbnail_id', '62'),
(372, 109, '_edit_last', '1'),
(373, 109, '_edit_lock', '1531105580:1'),
(374, 109, 'faq_type', 'general'),
(375, 109, '_faq_type', 'field_5b399bh57803a'),
(376, 110, '_edit_last', '1'),
(377, 110, '_edit_lock', '1531105867:1'),
(378, 110, 'faq_type', 'yoga'),
(379, 110, '_faq_type', 'field_5b399bh57803a'),
(380, 102, 'wpcf7cf_options', 'a:1:{i:0;a:4:{s:8:\"if_field\";s:2:\"-1\";s:8:\"operator\";s:6:\"equals\";s:8:\"if_value\";s:0:\"\";s:10:\"then_field\";s:2:\"-1\";}}'),
(381, 38, '_thumbnail_id', '57'),
(382, 61, 'course_image_one', '57'),
(383, 61, '_course_image_one', 'field_5b425f61fed31'),
(384, 61, 'course_image_two', '62'),
(385, 61, '_course_image_two', 'field_5b425f61fed32'),
(386, 61, 'course_image_three', '56'),
(387, 61, '_course_image_three', 'field_5b425f61fed33'),
(388, 61, 'course_image_four', '54'),
(389, 61, '_course_image_four', 'field_5b425f61fed34'),
(390, 61, 'course_image_five', '48'),
(391, 61, '_course_image_five', 'field_5b425f61fed35'),
(399, 116, '_edit_last', '1'),
(400, 116, '_edit_lock', '1531579914:1'),
(401, 116, 'video_id', 'JEgrZvFcMdQ'),
(402, 116, '_video_id', 'field_5b399bc57763a'),
(403, 117, '_edit_last', '1'),
(404, 117, '_edit_lock', '1531579927:1'),
(405, 117, 'video_id', 'h8r5rbUmBzs'),
(406, 117, '_video_id', 'field_5b399bc57763a'),
(407, 118, '_form', '<div class=\"row\">\n		<div class=\"col-12 col-md-6\">\n			<div class=\"form-group form-datepicker\"><label for=\"birthday\">Birthday</label>[date* birthday min:1920-01-01 max:2018-07-31 id:BDY class:BDY placeholder \"Birthday\"]	\n			</div></div>\n		<div class=\"col-12 col-md-6\">\n			<div class=\"form-group\">\n				[text contact-lastname class:form-control placeholder \"Last Name\"]\n			</div></div>\n	</div>\n	<div class=\"row\">\n		<div class=\"col-12 col-sm-6\">\n			<div class=\"form-group\">\n				[email contact-email class:form-control placeholder \"Email\"]	\n			</div></div>\n		<div class=\"col-12 col-sm-6\">\n			<div class=\"form-group\">\n				<label> Registering for course: *\n[select* menu-708 class:form-control \"1. 200 Hour TTC @Puerto Escondido, Oaxaca - April 4th 2019\" \"2. YIN Yoga TTC @Puerto Escondido, Oaxaca - April 30th 2019\" \"3. 200 Hour TTC @San Francisco, Nayarit - November 3th, 2019\" \"4. YIN Yoga TTC @San Francisco, Nayarit - November 29th 2019\" \"5. Prenatal Yoga TTC @San Francisco, Nayarit - January 10th 2020\" \"6. Yoga Nidra @San Francisco, Nayarit - January 22th 2020\" \"7. YIN Yoga TTC @San Francisco, Nayarit - February 3th 2020\"] </label>\n			</div></div>\n	</div>\n<div class=\"row\">\n		<div class=\"col-12 col-sm-6\">\n			<div class=\"form-group form-datepicker\"><label for=\"birthday\">Birthday</label>[date* birthday min:1920-01-01 max:2018-07-31 id:BDY class:BDY placeholder \"Birthday\"]	\n			</div></div>\n		<div class=\"col-12 col-sm-6\">\n			<div class=\"form-check form-check-inline\"> Select gender:   \n  [radio gender class:form-check-input default:1 \"Male\" \"Female\" \"Rather not say\"]\n</div></div>\n	</div>\n	<div class=\"row\">\n		<div class=\"col\">\n			<div class=\"form-group\">\n				[textarea contact-textarea class:form-control placeholder \"Message\"]</div></div>\n	</div>\n	<div class=\"row\">\n		<div class=\"col-12 col-sm-6 offset-sm-6 col-md-4 offset-md-8\">\n			[submit class:btn class:btn-secondary class:btn-block \"Send\"]</div></div>'),
(408, 118, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:41:\"Trimurti Yoga Contact \"[contact-subject]\"\";s:6:\"sender\";s:62:\"[contact-lastname] [contact-name] <gerry_gonzalez@hotmail.com>\";s:9:\"recipient\";s:26:\"gerry_gonzalez@hotmail.com\";s:4:\"body\";s:215:\"From: [contact-lastname] , [contact-name] <[contact-email]>\nSubject: Trimurti Yoga Contact \"[contact-subject]\"\n\nForm Message:\n[contact-textarea]\n\n-- \nThis e-mail was sent from a contact form on Trimurti Yoga Website\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(409, 118, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"Trimurti Yoga \"[your-subject]\"\";s:6:\"sender\";s:42:\"Trimurti Yoga <gerry_gonzalez@hotmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:119:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Trimurti Yoga (//localhost:3000/trimurti)\";s:18:\"additional_headers\";s:36:\"Reply-To: gerry_gonzalez@hotmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(410, 118, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(411, 118, '_additional_settings', ''),
(412, 118, '_locale', 'en_US'),
(414, 118, 'wpcf7cf_options', 'a:0:{}'),
(415, 61, 'course_featured_desc', 'A strategic combination of Asanas, Pranayama, Meditation and MFR to create this unique 10-day program focused on rebalancing the energy and our chakras, to nourish and nurture parasympathetic nervous system, and to learn the theory behind it. Incorporate to your practice and teaching Yoga Nidra, Chakra Balancing Techniques and Meridian Yoga with Acupressure &amp; Myofascial Release Techniques.\r\n<ul>\r\n 	<li>Small Groups (Restricted)</li>\r\n 	<li>Yoga Alliance Recognized</li>\r\n 	<li>Teaching Practice Oriented</li>\r\n 	<li>10 days - 9 nights</li>\r\n 	<li>Accommodation &amp; Food Included</li>\r\n</ul>'),
(416, 61, '_course_featured_desc', 'field_5b42afc7fy095'),
(417, 55, 'course_featured_desc', 'A strategic combination of Asanas, Pranayama, Meditation and MFR to create this unique 10-day program focused on rebalancing the energy and our chakras, to nourish and nurture parasympathetic nervous system, and to learn the theory behind it. Incorporate to your practice and teaching Yoga Nidra, Chakra Balancing Techniques and Meridian Yoga with Acupressure &amp; Myofascial Release Techniques.\r\n<ul>\r\n 	<li>Small Groups (Restricted)</li>\r\n 	<li>Yoga Alliance Recognized</li>\r\n 	<li>Teaching Practice Oriented</li>\r\n 	<li>10 days - 9 nights</li>\r\n 	<li>Accommodation &amp; Food Included</li>\r\n</ul>'),
(418, 55, '_course_featured_desc', 'field_5b42afc7fy095'),
(419, 55, 'course_accommodation_options', ''),
(420, 55, '_course_accommodation_options', 'field_5b42abb4fe095'),
(421, 55, 'course_payment_application', ''),
(422, 55, '_course_payment_application', 'field_5b42afb4fe095'),
(423, 55, 'course_info', ''),
(424, 55, '_course_info', 'field_5b42afb4fy095'),
(425, 55, 'course_image_one', ''),
(426, 55, '_course_image_one', 'field_5b425f61fed31'),
(427, 55, 'course_image_two', ''),
(428, 55, '_course_image_two', 'field_5b425f61fed32'),
(429, 55, 'course_image_three', ''),
(430, 55, '_course_image_three', 'field_5b425f61fed33'),
(431, 55, 'course_image_four', ''),
(432, 55, '_course_image_four', 'field_5b425f61fed34'),
(433, 55, 'course_image_five', ''),
(434, 55, '_course_image_five', 'field_5b425f61fed35'),
(435, 17, 'course_featured_desc', 'A strategic combination of Asanas, Pranayama, Meditation and MFR to create this unique 10-day program focused on rebalancing the energy and our chakras, to nourish and nurture parasympathetic nervous system, and to learn the theory behind it. Incorporate to your practice and teaching Yoga Nidra, Chakra Balancing Techniques and Meridian Yoga with Acupressure &amp; Myofascial Release Techniques.\r\n<ul>\r\n 	<li>Small Groups (Restricted)</li>\r\n 	<li>Yoga Alliance Recognized</li>\r\n 	<li>Teaching Practice Oriented</li>\r\n 	<li>10 days - 9 nights</li>\r\n 	<li>Accommodation &amp; Food Included</li>\r\n</ul>'),
(436, 17, '_course_featured_desc', 'field_5b42afc7fy095'),
(437, 17, 'course_accommodation_options', ''),
(438, 17, '_course_accommodation_options', 'field_5b42abb4fe095'),
(439, 17, 'course_payment_application', ''),
(440, 17, '_course_payment_application', 'field_5b42afb4fe095'),
(441, 17, 'course_info', ''),
(442, 17, '_course_info', 'field_5b42afb4fy095'),
(443, 17, 'course_image_one', ''),
(444, 17, '_course_image_one', 'field_5b425f61fed31'),
(445, 17, 'course_image_two', ''),
(446, 17, '_course_image_two', 'field_5b425f61fed32'),
(447, 17, 'course_image_three', ''),
(448, 17, '_course_image_three', 'field_5b425f61fed33'),
(449, 17, 'course_image_four', ''),
(450, 17, '_course_image_four', 'field_5b425f61fed34'),
(451, 17, 'course_image_five', ''),
(452, 17, '_course_image_five', 'field_5b425f61fed35'),
(477, 61, 'course_teacher', 'a:2:{i:0;s:2:\"85\";i:1;s:2:\"86\";}'),
(478, 61, '_course_teacher', 'field_5bd89030197ad'),
(479, 61, 'course_teachers', 'a:2:{i:0;s:2:\"85\";i:1;s:2:\"86\";}'),
(480, 61, '_course_teachers', 'field_5bd89030197ad'),
(481, 55, 'course_teachers', 'a:1:{i:0;s:2:\"86\";}'),
(482, 55, '_course_teachers', 'field_5bd89030197ad'),
(485, 86, 'teacher_course1', 'a:2:{i:0;s:2:\"61\";i:1;s:2:\"17\";}'),
(486, 86, '_teacher_course1', 'field_5bd897b3bb799');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-23 05:30:29', '2018-06-23 05:30:29', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-23 05:30:29', '2018-06-23 05:30:29', '', 0, 'http://localhost:8888/trimurti/?p=1', 0, 'post', '', 1),
(3, 1, '2018-06-23 05:30:29', '2018-06-23 05:30:29', '<h2>Who we are</h2><p>Our website address is: http://localhost:8888/trimurti.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-06-23 05:30:29', '2018-06-23 05:30:29', '', 0, 'http://localhost:8888/trimurti/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-06-24 17:51:53', '2018-06-24 17:51:53', '[grey-bg]sample text[/grey-bg]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-04 21:16:52', '2018-07-04 21:16:52', '', 0, 'http://localhost:8888/trimurti/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-06-24 17:51:53', '2018-06-24 17:51:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-06-24 17:51:53', '2018-06-24 17:51:53', '', 5, 'http://localhost:8888/trimurti/2018/06/24/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-06-24 17:52:01', '2018-06-24 17:52:01', '<div class=\"section\">\r\n<p class=\"section-header\">History</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n</div>\r\n[grey-bg]\r\n<div class=\"section\">\r\n<p class=\"section-header\">History</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n</div>\r\n[/grey-bg]\r\n<div class=\"section\">\r\n<p class=\"section-header\">History</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n</div>', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-07-05 01:11:43', '2018-07-05 01:11:43', '', 0, 'http://localhost:8888/trimurti/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-06-24 17:52:01', '2018-06-24 17:52:01', '', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-06-24 17:52:01', '2018-06-24 17:52:01', '', 7, 'http://localhost:8888/trimurti/2018/06/24/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-06-24 17:52:34', '2018-06-24 17:52:34', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2018-06-27 17:45:05', '2018-06-27 17:45:05', '', 0, 'http://localhost:8888/trimurti/?p=10', 1, 'nav_menu_item', '', 0),
(14, 1, '2018-06-26 03:18:32', '2018-06-26 03:18:32', '', 'trimurti-yoga-logo', '', 'inherit', 'open', 'closed', '', 'trimurti-yoga-logo', '', '', '2018-06-26 03:18:32', '2018-06-26 03:18:32', '', 0, 'http://localhost:8888/trimurti/wp-content/uploads/2018/06/trimurti-yoga-logo.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2018-06-26 04:27:38', '2018-06-26 04:27:38', 'Lorem ipsum dolor amet adaptogen cloud bread hoodie iPhone, XOXO skateboard bitters farm-to-table jianbing coloring book gochujang narwhal knausgaard. Asymmetrical tousled tacos +1 mustache roof party, wolf leggings. Vegan chillwave hoodie, narwhal scenester gentrify slow-carb waistcoat la croix. Deep v sustainable coloring book narwhal. Bitters ennui chicharrones distillery tote bag gluten-free. Cornhole pork belly prism raw denim snackwave tacos truffaut XOXO cray bushwick literally. Mumblecore fixie cloud bread art party actually.\r\n\r\nRamps heirloom pour-over echo park, everyday carry tote bag copper mug. Adaptogen meditation squid normcore taxidermy affogato. Helvetica craft beer skateboard fingerstache drinking vinegar keytar. Locavore sartorial narwhal portland pok pok shaman. Drinking vinegar hashtag fixie VHS kogi polaroid yuccie franzen forage shabby chic. Vegan pug cloud bread, live-edge try-hard plaid XOXO sustainable master cleanse viral.', '200 HR Teacher Training Course', 'Ramps heirloom pour-over echo park, everyday carry tote bag copper mug. Adaptogen meditation squid normcore taxidermy affogato.', 'publish', 'closed', 'closed', '', '200-hr-teacher-training-course', '', '', '2018-07-20 12:19:24', '2018-07-20 12:19:24', '', 0, 'http://localhost:8888/trimurti/?post_type=course&#038;p=17', 0, 'course', '', 0),
(23, 1, '2018-06-27 03:10:50', '2018-06-27 03:10:50', 'Lorem ipsum dolor amet tofu helvetica farm-to-table </br>\r\nvinyl vexillologist pabst chicharrones succulents. </br>\r\nDIY butcher microdosing humblebrag lo-fi yr.\r\n<a href=\"#\">xx.xxx.xxx</a></br>\r\n<a href=\"#\">xx.xxx.xxx</a>', 'San Francisco, Nayarit', '', 'publish', 'closed', 'closed', '', 'san-francisco-nayarit', '', '', '2018-06-27 13:33:32', '2018-06-27 13:33:32', '', 0, 'http://localhost:8888/trimurti/?post_type=flocation&#038;p=23', 0, 'flocation', '', 0),
(24, 1, '2018-06-27 03:11:46', '2018-06-27 03:11:46', '<a href=\"#\">xx.xxx.xxx</a>\r\n<a href=\"#\">xx.xxx.xxx</a>', 'Puerto Escondido, Oaxaca', '', 'publish', 'closed', 'closed', '', 'puerto-escondido-oaxaca', '', '', '2018-06-27 13:07:33', '2018-06-27 13:07:33', '', 0, 'http://localhost:8888/trimurti/?post_type=flocation&#038;p=24', 0, 'flocation', '', 0),
(25, 1, '2018-06-27 13:33:30', '2018-06-27 13:33:30', 'Lorem ipsum dolor amet tofu helvetica farm-to-table </br>\nvinyl vexillologist pabst chicharrones succulents. </br>\nDIY butcher microdosing humblebrag lo-fi yr.\n<a href=\"#\">xx.xxx.xxx</a></br>\n<a href=\"#\">xx.xxx.xxx</a>', 'San Francisco, Nayarit', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2018-06-27 13:33:30', '2018-06-27 13:33:30', '', 23, 'http://localhost:8888/trimurti/23-autosave-v1/', 0, 'revision', '', 0),
(26, 1, '2018-06-27 13:35:57', '2018-06-27 13:35:57', '', '<i class=\"fab fa-facebook-f\"></i>', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-06-27 14:28:13', '2018-06-27 14:28:13', '', 0, 'http://localhost:8888/trimurti/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-06-27 13:43:42', '2018-06-27 13:43:42', '', '<i class=\"fab fa-twitter\"></i>', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-06-27 14:28:13', '2018-06-27 14:28:13', '', 0, 'http://localhost:8888/trimurti/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2018-06-27 14:17:47', '2018-06-27 14:17:47', '', '<i class=\"fab fa-instagram\"></i>', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-06-27 14:28:13', '2018-06-27 14:28:13', '', 0, 'http://localhost:8888/trimurti/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2018-06-27 17:43:23', '2018-06-27 17:43:23', '', 'Teachers', '', 'publish', 'closed', 'closed', '', 'teachers', '', '', '2018-07-08 17:07:27', '2018-07-08 17:07:27', '', 0, 'http://localhost:8888/trimurti/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-06-27 17:43:23', '2018-06-27 17:43:23', '', 'Teacher Training', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-27 17:43:23', '2018-06-27 17:43:23', '', 29, 'http://localhost:8888/trimurti/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-06-27 17:43:38', '2018-06-27 17:43:38', '', 'Courses', '', 'publish', 'closed', 'closed', '', 'courses', '', '', '2018-07-06 15:29:08', '2018-07-06 15:29:08', '', 0, 'http://localhost:8888/trimurti/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-06-27 17:43:38', '2018-06-27 17:43:38', '', 'Upcoming Courses', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-06-27 17:43:38', '2018-06-27 17:43:38', '', 31, 'http://localhost:8888/trimurti/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-06-27 17:43:50', '2018-06-27 17:43:50', '', 'FAQS', '', 'publish', 'closed', 'closed', '', 'faqs', '', '', '2018-07-09 02:40:47', '2018-07-09 02:40:47', '', 0, 'http://localhost:8888/trimurti/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-06-27 17:43:50', '2018-06-27 17:43:50', '', 'FAQS', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-27 17:43:50', '2018-06-27 17:43:50', '', 33, 'http://localhost:8888/trimurti/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-06-27 17:43:56', '2018-06-27 17:43:56', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Trimurti Yoga Mexico</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\"><div class=\"col\"><p class=\"section-header\">Contact Us</p></div></div>\r\n[contact-form-7 id=\"118\" title=\"Contact Page Form\"]	\r\n</div>', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-07-15 18:52:41', '2018-07-15 18:52:41', '', 0, 'http://localhost:8888/trimurti/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-06-27 17:43:56', '2018-06-27 17:43:56', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-06-27 17:43:56', '2018-06-27 17:43:56', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-06-27 17:44:28', '2018-06-27 17:44:28', 'lkanlknjalkjalkja', 'Enroll Now', '', 'publish', 'closed', 'closed', '', 'enroll-now', '', '', '2018-07-10 04:06:33', '2018-07-10 04:06:33', '', 0, 'http://localhost:8888/trimurti/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-06-27 17:44:28', '2018-06-27 17:44:28', '', 'Enroll Now', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-06-27 17:44:28', '2018-06-27 17:44:28', '', 38, 'http://localhost:8888/trimurti/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-06-27 17:45:05', '2018-06-27 17:45:05', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2018-06-27 17:45:05', '2018-06-27 17:45:05', '', 0, 'http://localhost:8888/trimurti/?p=40', 6, 'nav_menu_item', '', 0),
(41, 1, '2018-06-27 17:45:05', '2018-06-27 17:45:05', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2018-06-27 17:45:05', '2018-06-27 17:45:05', '', 0, 'http://localhost:8888/trimurti/?p=41', 5, 'nav_menu_item', '', 0),
(42, 1, '2018-06-27 17:45:05', '2018-06-27 17:45:05', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2018-06-27 17:45:05', '2018-06-27 17:45:05', '', 0, 'http://localhost:8888/trimurti/?p=42', 4, 'nav_menu_item', '', 0),
(43, 1, '2018-06-27 17:45:05', '2018-06-27 17:45:05', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-06-27 17:45:05', '2018-06-27 17:45:05', '', 0, 'http://localhost:8888/trimurti/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2018-06-27 17:45:05', '2018-06-27 17:45:05', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2018-06-27 17:45:05', '2018-06-27 17:45:05', '', 0, 'http://localhost:8888/trimurti/?p=44', 2, 'nav_menu_item', '', 0),
(45, 1, '2018-06-27 20:05:00', '2018-06-27 20:05:00', '', 'Teachers', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-27 20:05:00', '2018-06-27 20:05:00', '', 29, 'http://localhost:8888/trimurti/29-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-06-27 20:05:12', '2018-06-27 20:05:12', '', 'Courses', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-06-27 20:05:12', '2018-06-27 20:05:12', '', 31, 'http://localhost:8888/trimurti/31-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-06-27 20:30:45', '2018-06-27 20:30:45', '', 'Enroll Now', '', 'publish', 'closed', 'closed', '', 'enroll-now', '', '', '2018-06-27 20:30:45', '2018-06-27 20:30:45', '', 0, 'http://localhost:8888/trimurti/?post_type=home_slide&#038;p=47', 0, 'home_slide', '', 0),
(48, 1, '2018-06-27 20:30:37', '2018-06-27 20:30:37', '', 'any', '', 'inherit', 'open', 'closed', '', 'any', '', '', '2018-06-27 20:30:37', '2018-06-27 20:30:37', '', 47, 'http://localhost:8888/trimurti/wp-content/uploads/2018/06/any.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-06-27 20:41:20', '2018-06-27 20:41:20', '', 'Second Slide', '', 'publish', 'closed', 'closed', '', 'second-slide', '', '', '2018-06-27 20:41:20', '2018-06-27 20:41:20', '', 0, 'http://localhost:8888/trimurti/?post_type=home_slide&#038;p=49', 0, 'home_slide', '', 0),
(50, 1, '2018-06-27 20:41:16', '2018-06-27 20:41:16', '', 'tech', '', 'inherit', 'open', 'closed', '', 'tech', '', '', '2018-06-27 20:41:16', '2018-06-27 20:41:16', '', 49, 'http://localhost:8888/trimurti/wp-content/uploads/2018/06/tech.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-06-27 20:53:34', '2018-06-27 20:53:34', '', 'Test Slide', '', 'publish', 'closed', 'closed', '', 'test-slide', '', '', '2018-06-27 20:53:34', '2018-06-27 20:53:34', '', 0, 'http://localhost:8888/trimurti/?post_type=home_slide&#038;p=51', 0, 'home_slide', '', 0),
(52, 1, '2018-06-27 20:53:31', '2018-06-27 20:53:31', '', 'tech-1', '', 'inherit', 'open', 'closed', '', 'tech-1', '', '', '2018-06-27 20:53:31', '2018-06-27 20:53:31', '', 51, 'http://localhost:8888/trimurti/wp-content/uploads/2018/06/tech-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-06-27 20:54:07', '2018-06-27 20:54:07', '', 'Fourth Slide', '', 'publish', 'closed', 'closed', '', 'fourth-slide', '', '', '2018-06-27 20:54:07', '2018-06-27 20:54:07', '', 0, 'http://localhost:8888/trimurti/?post_type=home_slide&#038;p=53', 0, 'home_slide', '', 0),
(54, 1, '2018-06-27 20:54:05', '2018-06-27 20:54:05', '', 'arch', '', 'inherit', 'open', 'closed', '', 'arch', '', '', '2018-06-27 20:54:05', '2018-06-27 20:54:05', '', 53, 'http://localhost:8888/trimurti/wp-content/uploads/2018/06/arch.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-06-29 01:57:40', '2018-06-29 01:57:40', 'Lorem ipsum dolor amet tofu helvetica farm-to-table vinyl vexillologist pabst chicharrones succulents. DIY butcher microdosing humblebrag lo-fi yr. Kitsch drinking vinegar heirloom hella vegan kombucha taiyaki pinterest you probably haven\'t heard of them cronut palo santo craft beer church-key lo-fi cardigan. Ennui VHS freegan humblebrag bitters butcher scenester yuccie kickstarter ethical tumblr chicharrones vaporware locavore chia. Snackwave letterpress woke freegan hammock. Hella tumeric portland, adaptogen vice banjo deep v.', 'Yin Yoga Teacher Training Course', 'Lorem ipsum dolor amet tofu helvetica farm-to-table vinyl vexillologist pabst chicharrones succulents. DIY butcher microdosing humblebrag lo-fi yr.', 'publish', 'closed', 'closed', '', 'yin-yoga-ttc', '', '', '2018-10-30 17:36:22', '2018-10-30 17:36:22', '', 0, 'http://localhost:8888/trimurti/?post_type=course&#038;p=55', 0, 'course', '', 0),
(56, 1, '2018-06-29 01:57:29', '2018-06-29 01:57:29', '', 'YogaCircleDronie', '', 'inherit', 'open', 'closed', '', 'yogacircledronie', '', '', '2018-06-29 01:57:29', '2018-06-29 01:57:29', '', 55, 'http://localhost:8888/trimurti/wp-content/uploads/2018/06/YogaCircleDronie.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-06-29 02:01:45', '2018-06-29 02:01:45', '', 'DCIM100MEDIADJI_0214.JPG', 'DCIM100MEDIADJI_0214.JPG', 'inherit', 'open', 'closed', '', 'dcim100mediadji_0214-jpg', '', '', '2018-06-29 02:01:45', '2018-06-29 02:01:45', '', 17, 'http://localhost:8888/trimurti/wp-content/uploads/2018/06/DJI_0214.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-07-02 03:36:10', '2018-07-02 03:36:10', 'Truffaut brunch readymade, try-hard lyft cloud bread umami VHS. Umami vice disrupt, wolf salvia shabby chic put a bird on it cloud bread you probably haven\'t heard of them dreamcatcher copper mug. Venmo kinfolk blog, yr tbh 90\'s waistcoat health goth small batch twee jianbing. Bespoke shaman distillery, hammock authentic celiac knausgaard.', '100 HR Teacher Training Course', 'Venmo kinfolk blog, yr tbh 90\'s waistcoat health goth small batch twee jianbing. Bespoke shaman distillery, hammock authentic celiac knausgaard.', 'publish', 'closed', 'closed', '', '100-hr-teacher-training-course', '', '', '2018-10-30 17:35:43', '2018-10-30 17:35:43', '', 0, 'http://localhost:8888/trimurti/?post_type=course&#038;p=61', 0, 'course', '', 0),
(62, 1, '2018-07-02 03:55:21', '2018-07-02 03:55:21', '', '025', '', 'inherit', 'open', 'closed', '', '025', '', '', '2018-07-02 03:55:21', '2018-07-02 03:55:21', '', 61, 'http://localhost:8888/trimurti/wp-content/uploads/2018/07/025.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-07-02 04:06:16', '2018-07-02 04:06:16', '<p class=\"h1\">Sample Tex</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-02 04:06:16', '2018-07-02 04:06:16', '', 5, 'http://localhost:8888/trimurti/5-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-07-02 04:07:46', '2018-07-02 04:07:46', '[grey-bg]\r\n<p class=\"h1\">Sample Tex</p>\r\n[/grey-bg]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-02 04:07:46', '2018-07-02 04:07:46', '', 5, 'http://localhost:8888/trimurti/5-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-07-04 18:49:19', '2018-07-04 18:49:19', 'Lorem ipsum dolor amet try-hard plaid viral organic raw denim tousled freegan yr heirloom live-edge cred offal deep v. Swag irony literally enamel pin neutra, wayfarers direct trade four loko bespoke. Vinyl iPhone kogi four dollar toast sustainable. Waistcoat scenester normcore yr freegan, leggings iceland 90\'s echo park vegan meggings hashtag pour-over shoreditch tattooed. Post-ironic irony green juice, iceland scenester wolf pop-up poutine. Fingerstache keytar jean shorts, chia heirloom gentrify dreamcatcher forage narwhal air plant beard subway tile enamel pin bespoke.\r\n\r\nLorem ipsum dolor amet try-hard plaid viral organic raw denim tousled freegan yr heirloom live-edge cred offal deep v. Swag irony literally enamel pin neutra, wayfarers direct trade four loko bespoke. Vinyl iPhone kogi four dollar toast sustainable. Waistcoat scenester normcore yr freegan, leggings iceland 90\'s echo park vegan meggings hashtag pour-over shoreditch tattooed. Post-ironic irony green juice, iceland scenester wolf pop-up poutine. Fingerstache keytar jean shorts, chia heirloom gentrify dreamcatcher forage narwhal air plant beard subway tile enamel pin bespoke.', 'San Francisco, Nayarit', ' Fingerstache keytar jean shorts, chia heirloom gentrify dreamcatcher forage narwhal air plant beard subway tile enamel pin bespoke.', 'publish', 'closed', 'closed', '', 'san-francisco-nayarit', '', '', '2018-07-06 12:56:38', '2018-07-06 12:56:38', '', 0, 'http://localhost:8888/trimurti/?post_type=site&#038;p=66', 0, 'site', '', 0),
(67, 1, '2018-07-04 18:49:57', '2018-07-04 18:49:57', 'Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.', 'Puerto Escondido, Oaxaca', 'Where the jungle meets the ocean', 'publish', 'closed', 'closed', '', 'puerto-escondido-oaxaca', '', '', '2018-07-10 02:16:23', '2018-07-10 02:16:23', '', 0, 'http://localhost:8888/trimurti/?post_type=site&#038;p=67', 0, 'site', '', 0),
(68, 1, '2018-07-04 21:15:23', '2018-07-04 21:15:23', '[grey-bg]<p class=\"h1\">Sample Tex</p>[/grey-bg]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2018-07-04 21:15:23', '2018-07-04 21:15:23', '', 5, 'http://localhost:8888/trimurti/5-autosave-v1/', 0, 'revision', '', 0),
(69, 1, '2018-07-04 21:15:25', '2018-07-04 21:15:25', '[grey-bg]<p class=\"h1\">Sample Tex</p>[/grey-bg]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-04 21:15:25', '2018-07-04 21:15:25', '', 5, 'http://localhost:8888/trimurti/5-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-07-04 21:16:05', '2018-07-04 21:16:05', '[grey-bg]<span class=\"h1\">Sample Tex</span>[/grey-bg]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-04 21:16:05', '2018-07-04 21:16:05', '', 5, 'http://localhost:8888/trimurti/5-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-07-04 21:16:42', '2018-07-04 21:16:42', '[grey-bg]sample text/grey-bg]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-04 21:16:42', '2018-07-04 21:16:42', '', 5, 'http://localhost:8888/trimurti/5-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-07-04 21:16:52', '2018-07-04 21:16:52', '[grey-bg]sample text[/grey-bg]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-04 21:16:52', '2018-07-04 21:16:52', '', 5, 'http://localhost:8888/trimurti/5-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-07-04 22:30:49', '2018-07-04 22:30:49', 'Cold-pressed iceland yuccie salvia shaman echo park.', 'Name Lastname', '', 'publish', 'closed', 'closed', '', 'name-lastname', '', '', '2018-07-04 22:30:49', '2018-07-04 22:30:49', '', 0, 'http://localhost:8888/trimurti/?post_type=testimonial&#038;p=73', 0, 'testimonial', '', 0),
(74, 1, '2018-07-04 22:31:06', '2018-07-04 22:31:06', 'Cold-pressed iceland yuccie salvia shaman echo park.', 'Middle Name Lastname', '', 'publish', 'closed', 'closed', '', 'middle-name-lastname', '', '', '2018-07-04 22:31:06', '2018-07-04 22:31:06', '', 0, 'http://localhost:8888/trimurti/?post_type=testimonial&#038;p=74', 0, 'testimonial', '', 0),
(75, 1, '2018-07-04 22:31:22', '2018-07-04 22:31:22', 'Cold-pressed iceland yuccie salvia shaman echo park.', 'Sample Name', '', 'publish', 'closed', 'closed', '', 'sample-name', '', '', '2018-07-04 22:31:22', '2018-07-04 22:31:22', '', 0, 'http://localhost:8888/trimurti/?post_type=testimonial&#038;p=75', 0, 'testimonial', '', 0),
(76, 1, '2018-07-04 22:50:05', '2018-07-04 22:50:05', 'Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-04 22:50:05', '2018-07-04 22:50:05', '', 7, 'http://localhost:8888/trimurti/7-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-07-05 00:54:36', '2018-07-05 00:54:36', '<div class=\"section\">\r\n	<p class=\"section-header\">History</p>\r\n	<p class=\"text-center px-3\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\r\n	</p>\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-05 00:54:36', '2018-07-05 00:54:36', '', 7, 'http://localhost:8888/trimurti/7-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-07-05 00:59:19', '2018-07-05 00:59:19', '<div class=\"section\">\n	<p class=\"section-header\">History</p>\n	<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\n	</p>\n	<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\n	</p>\n</div>\n[bg-grey}\n<div class=\"section\">\n	<p class=\"section-header\">History</p>\n	<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\n	</p>\n	<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\n	</p>\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2018-07-05 00:59:19', '2018-07-05 00:59:19', '', 7, 'http://localhost:8888/trimurti/7-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2018-07-05 00:56:53', '2018-07-05 00:56:53', '<div class=\"section\">\r\n	<p class=\"section-header\">History</p>\r\n	<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\r\n	</p>\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-05 00:56:53', '2018-07-05 00:56:53', '', 7, 'http://localhost:8888/trimurti/7-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-07-05 00:58:18', '2018-07-05 00:58:18', '<div class=\"section\">\r\n	<p class=\"section-header\">History</p>\r\n	<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\r\n	</p>\r\n	<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\r\n	</p>\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-05 00:58:18', '2018-07-05 00:58:18', '', 7, 'http://localhost:8888/trimurti/7-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-07-05 00:59:31', '2018-07-05 00:59:31', '<div class=\"section\">\r\n	<p class=\"section-header\">History</p>\r\n	<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\r\n	</p>\r\n	<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\r\n	</p>\r\n</div>\r\n[bg-grey]\r\n<div class=\"section\">\r\n	<p class=\"section-header\">History</p>\r\n	<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\r\n	</p>\r\n	<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.\r\n	</p>\r\n</div>\r\n[/bg-grey]', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-05 00:59:31', '2018-07-05 00:59:31', '', 7, 'http://localhost:8888/trimurti/7-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-07-05 00:59:53', '2018-07-05 00:59:53', '<div class=\"section\">\r\n<p class=\"section-header\">History</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n\r\n</div>\r\n[bg-grey]\r\n<div class=\"section\">\r\n<p class=\"section-header\">History</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n\r\n</div>\r\n[/bg-grey]', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-05 00:59:53', '2018-07-05 00:59:53', '', 7, 'http://localhost:8888/trimurti/7-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-07-05 01:00:28', '2018-07-05 01:00:28', '<div class=\"section\">\r\n<p class=\"section-header\">History</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n\r\n</div>\r\n[grey-bg]\r\n<div class=\"section\">\r\n<p class=\"section-header\">History</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n\r\n</div>\r\n[/grey-bg]', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-05 01:00:28', '2018-07-05 01:00:28', '', 7, 'http://localhost:8888/trimurti/7-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-07-05 01:11:43', '2018-07-05 01:11:43', '<div class=\"section\">\r\n<p class=\"section-header\">History</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n</div>\r\n[grey-bg]\r\n<div class=\"section\">\r\n<p class=\"section-header\">History</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n</div>\r\n[/grey-bg]\r\n<div class=\"section\">\r\n<p class=\"section-header\">History</p>\r\n<p class=\"section-description\">Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.</p>\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-05 01:11:43', '2018-07-05 01:11:43', '', 7, 'http://localhost:8888/trimurti/7-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-07-06 14:26:01', '2018-07-06 14:26:01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam fugiat quia similique, illo quis molestias provident qui consequatur accusantium sequi pariatur adipisci ea, quibusdam totam numquam quos rem ex vel.', 'Arya Murty', 'Practicing yoga Lorem ipsum dolor.', 'publish', 'closed', 'closed', '', 'arya-murty', '', '', '2018-07-08 17:35:54', '2018-07-08 17:35:54', '', 0, 'http://localhost:8888/trimurti/?post_type=teacher&#038;p=85', 0, 'teacher', '', 0),
(86, 1, '2018-07-06 14:35:18', '2018-07-06 14:35:18', 'Cold-pressed iceland yuccie salvia shaman echo park. Keffiyeh aesthetic twee tousled blue bottle normcore, banjo quinoa trust fund raw denim pork belly tofu biodiesel austin paleo. Retro DIY before they sold out cloud bread, health goth man bun neutra fixie wolf copper mug chambray. Pok pok unicorn coloring book bespoke migas meditation woke vinyl pinterest. Food truck tumeric taxidermy vegan PBR&amp;B prism kale chips kinfolk +1 flexitarian tilde adaptogen. You probably haven\'t heard of them vinyl sustainable ethical unicorn. Cornhole tumblr forage, migas distillery actually fashion axe vinyl succulents.', 'Prianca Sharma', 'Cold-pressed iceland yuccie salvia shaman echo park. ', 'publish', 'closed', 'closed', '', 'prianca-sharma-yoga-teacher', '', '', '2018-10-30 18:56:29', '2018-10-30 18:56:29', '', 0, 'http://localhost:8888/trimurti/?post_type=teacher&#038;p=86', 0, 'teacher', '', 0),
(88, 1, '2018-07-08 17:14:39', '2018-07-08 17:14:39', '', 'Sample Teacher', '', 'publish', 'closed', 'closed', '', 'sample-teacher', '', '', '2018-07-08 17:14:39', '2018-07-08 17:14:39', '', 0, 'http://localhost:8888/trimurti/?post_type=teacher&#038;p=88', 0, 'teacher', '', 0),
(90, 1, '2018-07-08 19:13:06', '2018-07-08 19:13:06', '', 'any', '', 'inherit', 'open', 'closed', '', 'any-2', '', '', '2018-07-08 19:13:06', '2018-07-08 19:13:06', '', 55, 'http://localhost:8888/trimurti/wp-content/uploads/2018/06/any-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2018-07-08 19:32:44', '2018-07-08 19:32:44', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Other TRIMURTI Yoga Schools</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n		</div>\r\n	</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-08 19:32:44', '2018-07-08 19:32:44', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-07-08 19:35:47', '2018-07-08 19:35:47', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Other TRIMURTI Yoga Schools</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n		</div>\r\n	</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-08 19:35:47', '2018-07-08 19:35:47', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(93, 1, '2018-07-08 19:36:30', '2018-07-08 19:36:30', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Other TRIMURTI Yoga Schools</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n		</div>\r\n	</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-08 19:36:30', '2018-07-08 19:36:30', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-07-08 19:43:30', '2018-07-08 19:43:30', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Other TRIMURTI Yoga Schools</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">Dunedin, New Zealand</p>\r\n				<address>Studio Tula, First Floor,\r\n				Bing Harris Biuilding, 286 Princess Street	\r\n				Dunedin, NZ</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-globe-americas\"></i> <a href=\"trimurtiyoga.com\" target=\"_blank\">trimurtiyoga.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:uttam@trimurtiyoga.com\">uttam@trimurtiyoga.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:9198650678855\">+91 986506 78855</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-08 19:43:30', '2018-07-08 19:43:30', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-07-08 19:47:31', '2018-07-08 19:47:31', '<div class=\"container\">\n	<div class=\"row\">\n		<div class=\"col\">\n			<p class=\"section-header\">Other TRIMURTI Yoga Schools</p>\n		</div>\n	</div>\n	<div class=\"row\">\n		<div class=\"col-12 col-md-6\">\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\n<div class=\"content-site\">\n				<p class=\"site-title\">Tailwind Jungle Lodge</p>\n				<address>Jalisco - Puerto Vallarta, Monteon, Nayarit, Mexico</address>\n				<ul class=\"nav flex-column\">\n					<li>\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\n					</li>\n					<li>\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:9198650678855\">+521 55 48891654</a>\n					</li>\n				</ul>\n			</div>\n		</div>\n	</div>\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2018-07-08 19:47:31', '2018-07-08 19:47:31', '', 35, 'http://localhost:8888/trimurti/35-autosave-v1/', 0, 'revision', '', 0),
(96, 1, '2018-07-08 19:55:05', '2018-07-08 19:55:05', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Other TRIMURTI Yoga Schools</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">Tailwind Jungle Lodge</p>\r\n				<address>Jalisco - Puerto Vallarta, Monteon, Nayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-08 19:55:05', '2018-07-08 19:55:05', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-07-08 19:55:39', '2018-07-08 19:55:39', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Other TRIMURTI Yoga Schools</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-08 19:55:39', '2018-07-08 19:55:39', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-07-08 19:56:20', '2018-07-08 19:56:20', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Other TRIMURTI Yoga Schools</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-08 19:56:20', '2018-07-08 19:56:20', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-07-08 19:56:52', '2018-07-08 19:56:52', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Other TRIMURTI Yoga Schools</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"400\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"400\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-08 19:56:52', '2018-07-08 19:56:52', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-07-08 19:59:10', '2018-07-08 19:59:10', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Trimurti Yoga Mexico</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"400\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"400\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-08 19:59:10', '2018-07-08 19:59:10', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-07-08 19:59:26', '2018-07-08 19:59:26', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Trimurti Yoga Mexico</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-08 19:59:26', '2018-07-08 19:59:26', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-07-08 20:03:43', '2018-07-08 20:03:43', '[group group-172][/group]<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nTrimurti Yoga \"[your-subject]\"\n[your-name] <gerry_gonzalez@hotmail.com>\ngerry_gonzalez@hotmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Trimurti Yoga (http://localhost:8888/trimurti)\nReply-To: [your-email]\n\n\n\n\nTrimurti Yoga \"[your-subject]\"\nTrimurti Yoga <gerry_gonzalez@hotmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Trimurti Yoga (http://localhost:8888/trimurti)\nReply-To: gerry_gonzalez@hotmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-07-09 04:33:43', '2018-07-09 04:33:43', '', 0, 'http://localhost:8888/trimurti/?post_type=wpcf7_contact_form&#038;p=102', 0, 'wpcf7_contact_form', '', 0),
(105, 1, '2018-07-09 02:37:27', '2018-07-09 02:37:27', 'Selfies kombucha hashtag, air plant aesthetic tousled everyday carry green juice retro yr biodiesel artisan flannel. Skateboard mustache woke jean shorts waistcoat master cleanse. Etsy deep v swag bicycle rights paleo squid. Gentrify pabst locavore tilde vape narwhal raw denim. 8-bit kombucha hella beard pitchfork typewriter edison bulb chambray.', 'Sample Question', '', 'publish', 'closed', 'closed', '', 'sample-question', '', '', '2018-07-09 02:39:17', '2018-07-09 02:39:17', '', 0, 'http://localhost:8888/trimurti/?post_type=faq&#038;p=105', 0, 'faq', '', 0),
(106, 1, '2018-07-09 02:37:37', '2018-07-09 02:37:37', 'Selfies kombucha hashtag, air plant aesthetic tousled everyday carry green juice retro yr biodiesel artisan flannel. Skateboard mustache woke jean shorts waistcoat master cleanse. Etsy deep v swag bicycle rights paleo squid. Gentrify pabst locavore tilde vape narwhal raw denim. 8-bit kombucha hella beard pitchfork typewriter edison bulb chambray.', 'Sample Q', '', 'publish', 'closed', 'closed', '', 'sample-q', '', '', '2018-07-09 02:39:10', '2018-07-09 02:39:10', '', 0, 'http://localhost:8888/trimurti/?post_type=faq&#038;p=106', 0, 'faq', '', 0),
(109, 1, '2018-07-09 03:06:13', '2018-07-09 03:06:13', 'alnajlnajnakjna', 'bakbakaah', '', 'publish', 'closed', 'closed', '', 'bakbakaah', '', '', '2018-07-09 03:06:13', '2018-07-09 03:06:13', '', 0, 'http://localhost:8888/trimurti/?post_type=faq&#038;p=109', 0, 'faq', '', 0),
(110, 1, '2018-07-09 03:08:51', '2018-07-09 03:08:51', 'ldjnkjssjlskjslkjs', 'yoga smaple', '', 'publish', 'closed', 'closed', '', 'yoga-smaple', '', '', '2018-07-09 03:08:51', '2018-07-09 03:08:51', '', 0, 'http://localhost:8888/trimurti/?post_type=faq&#038;p=110', 0, 'faq', '', 0),
(111, 1, '2018-07-10 02:16:20', '2018-07-10 02:16:20', 'Plaid keytar waistcoat, paleo mlkshk slow-carb actually wolf roof party occupy venmo austin YOLO. Pok pok flannel tattooed YOLO shoreditch chicharrones, pug tousled man braid forage activated charcoal. Readymade asymmetrical ramps tousled pok pok, hell of mixtape health goth helvetica. Tattooed wayfarers intelligentsia, vinyl mustache beard slow-carb post-ironic ugh single-origin coffee. 8-bit put a bird on it cornhole, next level taiyaki vegan waistcoat tbh williamsburg venmo mlkshk yr four loko.', 'Puerto Escondido, Oaxaca', 'Where the jungle meets the ocean', 'inherit', 'closed', 'closed', '', '67-autosave-v1', '', '', '2018-07-10 02:16:20', '2018-07-10 02:16:20', '', 67, 'http://localhost:8888/trimurti/67-autosave-v1/', 0, 'revision', '', 0),
(112, 1, '2018-07-10 04:06:22', '2018-07-10 04:06:22', 'lkanlknjalkjalkja', 'Enroll Now', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-07-10 04:06:22', '2018-07-10 04:06:22', '', 38, 'http://localhost:8888/trimurti/38-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-07-14 14:47:54', '2018-07-14 14:47:54', '', 'Home Video', '', 'publish', 'closed', 'closed', '', 'home-video', '', '', '2018-07-14 14:47:54', '2018-07-14 14:47:54', '', 0, 'http://localhost:8888/trimurti/?post_type=video&#038;p=116', 0, 'video', '', 0),
(117, 1, '2018-07-14 14:54:24', '2018-07-14 14:54:24', '', 'Sample', '', 'publish', 'closed', 'closed', '', 'sample', '', '', '2018-07-14 14:54:24', '2018-07-14 14:54:24', '', 0, 'http://localhost:8888/trimurti/?post_type=video&#038;p=117', 0, 'video', '', 0),
(118, 1, '2018-07-15 17:58:15', '2018-07-15 17:58:15', '<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<div class=\"form-group form-datepicker\"><label for=\"birthday\">Birthday</label>[date* birthday min:1920-01-01 max:2018-07-31 id:BDY class:BDY placeholder \"Birthday\"]	\r\n			</div></div>\r\n		<div class=\"col-12 col-md-6\">\r\n			<div class=\"form-group\">\r\n				[text contact-lastname class:form-control placeholder \"Last Name\"]\r\n			</div></div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-sm-6\">\r\n			<div class=\"form-group\">\r\n				[email contact-email class:form-control placeholder \"Email\"]	\r\n			</div></div>\r\n		<div class=\"col-12 col-sm-6\">\r\n			<div class=\"form-group\">\r\n				<label> Registering for course: *\r\n[select* menu-708 class:form-control \"1. 200 Hour TTC @Puerto Escondido, Oaxaca - April 4th 2019\" \"2. YIN Yoga TTC @Puerto Escondido, Oaxaca - April 30th 2019\" \"3. 200 Hour TTC @San Francisco, Nayarit - November 3th, 2019\" \"4. YIN Yoga TTC @San Francisco, Nayarit - November 29th 2019\" \"5. Prenatal Yoga TTC @San Francisco, Nayarit - January 10th 2020\" \"6. Yoga Nidra @San Francisco, Nayarit - January 22th 2020\" \"7. YIN Yoga TTC @San Francisco, Nayarit - February 3th 2020\"] </label>\r\n			</div></div>\r\n	</div>\r\n<div class=\"row\">\r\n		<div class=\"col-12 col-sm-6\">\r\n			<div class=\"form-group form-datepicker\"><label for=\"birthday\">Birthday</label>[date* birthday min:1920-01-01 max:2018-07-31 id:BDY class:BDY placeholder \"Birthday\"]	\r\n			</div></div>\r\n		<div class=\"col-12 col-sm-6\">\r\n			<div class=\"form-check form-check-inline\"> Select gender:   \r\n  [radio gender class:form-check-input default:1 \"Male\" \"Female\" \"Rather not say\"]\r\n</div></div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<div class=\"form-group\">\r\n				[textarea contact-textarea class:form-control placeholder \"Message\"]</div></div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-sm-6 offset-sm-6 col-md-4 offset-md-8\">\r\n			[submit class:btn class:btn-secondary class:btn-block \"Send\"]</div></div>\n1\nTrimurti Yoga Contact \"[contact-subject]\"\n[contact-lastname] [contact-name] <gerry_gonzalez@hotmail.com>\ngerry_gonzalez@hotmail.com\nFrom: [contact-lastname] , [contact-name] <[contact-email]>\r\nSubject: Trimurti Yoga Contact \"[contact-subject]\"\r\n\r\nForm Message:\r\n[contact-textarea]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Trimurti Yoga Website\n\n\n\n\n\nTrimurti Yoga \"[your-subject]\"\nTrimurti Yoga <gerry_gonzalez@hotmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Trimurti Yoga (//localhost:3000/trimurti)\nReply-To: gerry_gonzalez@hotmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Page Form', '', 'publish', 'closed', 'closed', '', 'contact-page-form', '', '', '2018-07-17 16:19:57', '2018-07-17 16:19:57', '', 0, 'http://localhost:8888/trimurti/?post_type=wpcf7_contact_form&#038;p=118', 0, 'wpcf7_contact_form', '', 0),
(119, 1, '2018-07-15 18:08:45', '2018-07-15 18:08:45', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Trimurti Yoga Mexico</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Contact Us</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			[contact-form-7 id=\"118\" title=\"Contact Page Form\"]\r\n		</div>\r\n	</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-15 18:08:45', '2018-07-15 18:08:45', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-07-15 18:11:28', '2018-07-15 18:11:28', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Trimurti Yoga Mexico</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Contact Us</p>\r\n		</div>\r\n	</div>\r\n	[contact-form-7 id=\"118\" title=\"Contact Page Form\"]	\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-15 18:11:28', '2018-07-15 18:11:28', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-07-15 18:51:51', '2018-07-15 18:51:51', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Trimurti Yoga Mexico</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Contact Us</p>\r\n		</div>\r\n	</div>[contact-form-7 id=\"118\" title=\"Contact Page Form\"]	\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-15 18:51:51', '2018-07-15 18:51:51', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-07-15 18:52:41', '2018-07-15 18:52:41', '<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col\">\r\n			<p class=\"section-header\">Trimurti Yoga Mexico</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n<div class=\"col-12 col-md-6\">\r\n			<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29814.01329755079!2d-105.40624731794716!3d20.922308607553028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x84213d67abc38d7b%3A0x59f9d63fe7edc329!2sTailwind+Jungle+Lodge!5e0!3m2!1sen!2sus!4v1531078579671\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n<div class=\"content-site\">\r\n				<p class=\"site-title\">San Francisco, Nayarit</p>\r\n				<address>Tailwind Jungle Lodge\r\nJalisco - Puerto Vallarta, Monteon,\r\nNayarit, Mexico</address>\r\n				<ul class=\"nav flex-column\">\r\n					<li>\r\n						<i class=\"fas fa-envelope\"></i> <a href=\"mailto:trimurtiyogamexico@gmail.com\">trimurtiyogamexico@gmail.com</a>\r\n					</li>\r\n					<li>\r\n						<i class=\"fas fa-phone\"></i> <a href=\"tel:5215548891654\">+521 55 48891654</a>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"row\"><div class=\"col\"><p class=\"section-header\">Contact Us</p></div></div>\r\n[contact-form-7 id=\"118\" title=\"Contact Page Form\"]	\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-15 18:52:41', '2018-07-15 18:52:41', '', 35, 'http://localhost:8888/trimurti/35-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main_nav', 'main_nav', 0),
(3, 'Featured', 'featured', 0),
(4, 'Featured', 'featured', 0),
(5, 'footer_social', 'footer_social', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(17, 3, 0),
(26, 5, 0),
(27, 5, 0),
(28, 5, 0),
(40, 2, 0),
(41, 2, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'post_tag', '', 0, 1),
(4, 4, 'category', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"62c7242959b1f1e5c0448cdc9cb5182f245f26011fa9476b19997a9861b8b3e8\";a:4:{s:10:\"expiration\";i:1541090715;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1540917915;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '123'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:11:\"css-classes\";i:3;s:3:\"xfn\";i:4;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&editor=html&hidetb=1'),
(21, 1, 'wp_user-settings-time', '1531096480'),
(22, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(23, 1, 'nav_menu_recently_edited', '5'),
(24, 1, 'closedpostboxes_course', 'a:0:{}'),
(25, 1, 'metaboxhidden_course', 'a:4:{i:0;s:23:\"acf-group_5bd88ce57c8f0\";i:1;s:23:\"acf-group_5bd88ce57c8a0\";i:2;s:23:\"acf-group_5bd88ce57c938\";i:3;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$ByjaJNLlP4uUluk6yFG5EchGPqNGlv1', 'admin', 'gerry_gonzalez@hotmail.com', '', '2018-06-23 05:30:29', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

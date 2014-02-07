
-- *** STRUCTURE: `tbl_fields_author` ***
DROP TABLE IF EXISTS `tbl_fields_author`;
CREATE TABLE `tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_author` ***

-- *** STRUCTURE: `tbl_fields_checkbox` ***
DROP TABLE IF EXISTS `tbl_fields_checkbox`;
CREATE TABLE `tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') NOT NULL DEFAULT 'on',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (11, 16, 'off', 'Disable comments on this entry');

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_date` ***
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (14, 4, 'yes');

-- *** STRUCTURE: `tbl_fields_datemodified` ***
DROP TABLE IF EXISTS `tbl_fields_datemodified`;
CREATE TABLE `tbl_fields_datemodified` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') NOT NULL DEFAULT 'yes',
  `editable` enum('yes','no') NOT NULL DEFAULT 'no',
  `mode` enum('normal','disabled','hidden') NOT NULL DEFAULT 'normal',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_datemodified` ***
INSERT INTO `tbl_fields_datemodified` (`id`, `field_id`, `pre_populate`, `editable`, `mode`) VALUES (5, 14, 'no', 'no', 'hidden');

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (63, 1, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (2, 7, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (64, 10, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (65, 11, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (66, 15, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (57, 17, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (58, 21, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (59, 22, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (60, 23, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (45, 30, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (46, 31, NULL);

-- *** STRUCTURE: `tbl_fields_select` ***
DROP TABLE IF EXISTS `tbl_fields_select`;
CREATE TABLE `tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') NOT NULL DEFAULT 'yes',
  `static_options` text,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  `sort_options` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_select` ***
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `static_options`, `dynamic_options`, `sort_options`) VALUES (36, 5, 'no', 'no', 'draft, published', NULL, 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `static_options`, `dynamic_options`, `sort_options`) VALUES (37, 13, 'no', 'no', NULL, 1, 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `static_options`, `dynamic_options`, `sort_options`) VALUES (33, 24, 'no', 'no', 'Draft, Published', NULL, 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `static_options`, `dynamic_options`, `sort_options`) VALUES (25, 28, 'no', 'no', 'draft, published', NULL, 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `static_options`, `dynamic_options`, `sort_options`) VALUES (26, 29, 'no', 'no', 'no, yes', NULL, 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `static_options`, `dynamic_options`, `sort_options`) VALUES (38, 35, 'no', 'no', 'new, approved, rejected', NULL, 'no');

-- *** STRUCTURE: `tbl_fields_stage` ***
DROP TABLE IF EXISTS `tbl_fields_stage`;
CREATE TABLE `tbl_fields_stage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `constructable` smallint(1) DEFAULT '0',
  `destructable` smallint(1) DEFAULT '0',
  `draggable` smallint(1) DEFAULT '0',
  `droppable` smallint(1) DEFAULT '0',
  `searchable` smallint(1) DEFAULT '0',
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_stage` ***
INSERT INTO `tbl_fields_stage` (`id`, `field_id`, `constructable`, `destructable`, `draggable`, `droppable`, `searchable`, `context`) VALUES (22, 9, 1, 1, 1, 0, 1, 'subsectionmanager');
INSERT INTO `tbl_fields_stage` (`id`, `field_id`, `constructable`, `destructable`, `draggable`, `droppable`, `searchable`, `context`) VALUES (21, 26, 1, 1, 1, 0, 1, 'subsectionmanager');

-- *** STRUCTURE: `tbl_fields_stage_sorting` ***
DROP TABLE IF EXISTS `tbl_fields_stage_sorting`;
CREATE TABLE `tbl_fields_stage_sorting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `order` text,
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_stage_sorting` ***
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (12, 1, 26, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (2, 6, 9, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (7, 10, 9, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (10, 5, 26, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (17, 11, 9, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (16, 11, 26, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (11, 5, 9, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (13, 1, 9, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (25, 25, 9, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (24, 25, 26, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (20, 26, 26, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (21, 26, 9, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (31, 35, 9, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (30, 35, 26, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (45, 37, 9, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (44, 37, 26, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (55, 43, 9, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (54, 43, 26, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (63, 58, 9, 0, NULL);
INSERT INTO `tbl_fields_stage_sorting` (`id`, `entry_id`, `field_id`, `order`, `context`) VALUES (62, 58, 26, 0, NULL);

-- *** STRUCTURE: `tbl_fields_subsectionmanager` ***
DROP TABLE IF EXISTS `tbl_fields_subsectionmanager`;
CREATE TABLE `tbl_fields_subsectionmanager` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) NOT NULL,
  `filter_tags` text,
  `caption` text,
  `droptext` text,
  `included_fields` text,
  `allow_multiple` tinyint(1) DEFAULT '0',
  `show_preview` tinyint(1) DEFAULT '0',
  `lock` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_subsectionmanager` ***
INSERT INTO `tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `included_fields`, `allow_multiple`, `show_preview`, `lock`) VALUES (21, 9, 2, NULL, '{$caption}', '{$alt}', '6,7,8:formatted', 1, 0, 0);
INSERT INTO `tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `included_fields`, `allow_multiple`, `show_preview`, `lock`) VALUES (20, 26, 4, NULL, '{$title}', '{$intro}', '17,18:formatted,19:formatted,20:formatted,21,22,23,25', 1, 0, 0);

-- *** STRUCTURE: `tbl_fields_taglist` ***
DROP TABLE IF EXISTS `tbl_fields_taglist`;
CREATE TABLE `tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) DEFAULT NULL,
  `pre_populate_source` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_taglist` ***

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (58, 2, 'textileplusinline', 2);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (59, 3, 'ckeditor', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (3, 8, 'textileplusinline', 2);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (60, 12, 'textileplus', 5);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (51, 18, 'textileplus', 4);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (52, 19, 'textileplus', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (53, 20, 'textileplus', 12);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (40, 27, 'ckeditor', 20);

-- *** STRUCTURE: `tbl_fields_upload` ***
DROP TABLE IF EXISTS `tbl_fields_upload`;
CREATE TABLE `tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) NOT NULL,
  `validator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_upload` ***
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (1, 6, '/workspace/img/attached', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (6, 25, '/workspace/img/attached', '/\\.(?:bmp|gif|jpe?g|png)$/i');

-- *** STRUCTURE: `tbl_entries_data_1` ***
DROP TABLE IF EXISTS `tbl_entries_data_1`;
CREATE TABLE `tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_1` ***
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 25, 'a-little-update', 'A Little Update');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 26, 'chili-cookoff', 'Chili Cookoff!');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 35, 'the-fall-cooking-season-is-starting', 'The Fall Cooking Season is Starting!');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 37, 'in-the-spirit-of-oktoberfest', 'In The Spirit of Oktoberfest...');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 43, 'project-pizza', 'Project: PIZZA!');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 58, 'pp-chucks-restaurant', 'PP: Chuck\'s Restaurant');

-- *** STRUCTURE: `tbl_entries_data_10` ***
DROP TABLE IF EXISTS `tbl_entries_data_10`;
CREATE TABLE `tbl_entries_data_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_10` ***
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 52, 'ryan-hanks', 'Ryan hanks');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 53, 'andrew', 'Andrew');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 54, 'joel-jernstad', 'Joel Jernstad');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 55, 'andrew', 'Andrew');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 64, 'rabia', 'Rabia');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 67, 'nxionhy', 'nxionhy');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 68, 'rvqqoxiwcqx', 'rvqqoxiwcqx');

-- *** STRUCTURE: `tbl_entries_data_11` ***
DROP TABLE IF EXISTS `tbl_entries_data_11`;
CREATE TABLE `tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_11` ***
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 52, 'ryandhanks-gmailcom', 'Ryandhanks@gmail.com');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 53, 'andrew-rewdycom', 'andrew@rewdy.com');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 54, 'joeljernstad-yahoocom', 'joeljernstad@yahoo.com');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 55, 'andrew-rewdycom', 'andrew@rewdy.com');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 64, 'bjornth-userssourceforgenet', 'bjornth@users.sourceforge.net');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 67, 'dglfmi-yjjuhfcom', 'dglfmi@yjjuhf.com');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 68, 'tbnojw-gprzvwcom', 'tbnojw@gprzvw.com');

-- *** STRUCTURE: `tbl_entries_data_12` ***
DROP TABLE IF EXISTS `tbl_entries_data_12`;
CREATE TABLE `tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_12` ***
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 52, 'Have you thought about considering red rosa? They have four locations in the Midwest http://www.redrossa.com/mobile/locations.php but then again at least pagliai\'s and wig and pen are also in other cities. ', '<p>Have you thought about considering red rosa? They have four locations in the Midwest http://www.redrossa.com/mobile/locations.php but then again at least pagliai<span class=\"rsquo squo\">&#8217;</span>s and wig and pen are also in other cities. </p>');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (28, 53, '@rynomite, I considered Red Rossa, but I had disqualified it thinking it was a chain. I think Pagliai\'s is a local place with a second location. I don\'t know anything really about Wig and Pen\'s. I\'ll have to look into it...', '<p>@rynomite, I considered Red Rossa, but I had disqualified it thinking it was a chain. I think Pagliai<span class=\"rsquo squo\">&#8217;</span>s is a local place with a second location. I don<span class=\"rsquo squo\">&#8217;</span>t know anything really about Wig and Pen<span class=\"rsquo squo\">&#8217;</span>s. I<span class=\"rsquo squo\">&#8217;</span>ll have to look into it<span class=\"ellipsis\">&#8230;</span></p>');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 54, 'Sounds like fun! I believe Wig & Pen has an Iowa City location. Have you thought of adding Great Plains in Ames? It\'s a bit of a drive, but many people rave about it. ', '<p>Sounds like fun! I believe Wig <span class=\"amp\">&#38;</span> Pen has an Iowa City location. Have you thought of adding Great Plains in Ames? It<span class=\"rsquo squo\">&#8217;</span>s a bit of a drive, but many people rave about it. </p>');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (32, 55, '@Joel, My uncle friggin\' owns that place. I\'ve thought about going there, but that would be central Iowa, not Des Moines area. :( I might remove the place in Colfax for the same reason.', '<p>@Joel, My uncle friggin<span class=\"rsquo squo\">&#8217;</span> owns that place. I<span class=\"rsquo squo\">&#8217;</span>ve thought about going there, but that would be central Iowa, not Des Moines area. :( I might remove the place in Colfax for the same reason.</p>');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 64, 'its not about ebony and bright its about eicths a single thing he falls short of. Its about honesty yet another characteristic he does not have. He gets the great unwashed masses owned by the US believing that they\'re going to all get no price medicine. I have a pal that work well in a properly getting corporation as well as the day time shortly right after this shithole costs has gone by they were definitely lined up out of gate to get hold of their insurance policies charge cards. Do not these idiots be aware that it may bring 4 a long time coming from all people obtaining taxed out our asses preceding to they are competent to fund this. It claims this proper within costs that it\'s going to bring influence in 2014. The balance are not able to be repealed , the sole position that may perhaps be accomplished could well be to vote republicans into place of work that will vote in opposition to financing this payment', '<p>its not about ebony and bright its about eicths a single thing he falls short of. Its about honesty yet another characteristic he does not have. He gets the great unwashed masses owned by the US believing that they<span class=\"rsquo squo\">&#8217;</span>re going to all get no price medicine. I have a pal that work well in a properly getting corporation as well as the day time shortly right after this shithole costs has gone by they were definitely lined up out of gate to get hold of their insurance policies charge cards. Do not these idiots be aware that it may bring 4 a long time coming from all people obtaining taxed out our asses preceding to they are competent to fund this. It claims this proper within costs that it<span class=\"rsquo squo\">&#8217;</span>s going to bring influence in 2014. The balance are not able to be repealed , the sole position that may perhaps be accomplished could well be to vote republicans into place of work that will vote in opposition to financing this payment</p>');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 67, 'iYYzFE  <a href=\"http://zxsjixwmeeri.com/\">zxsjixwmeeri</a>, [url=http://aptojhxivcnf.com/]aptojhxivcnf[/url], [link=http://ulnzokkrbrmd.com/]ulnzokkrbrmd[/link], http://zudgjkcucxem.com/', '<p>iYYzFE  <a href=\"http://zxsjixwmeeri.com/\">zxsjixwmeeri</a>, [url=http://aptojhxivcnf.com/]aptojhxivcnf[/url], [link=http://ulnzokkrbrmd.com/]ulnzokkrbrmd[/link], http://zudgjkcucxem.com/</p>');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (38, 68, 'fvlfe6  <a href=\"http://jahvqeeeeaob.com/\">jahvqeeeeaob</a>, [url=http://nmeusmtkzcnr.com/]nmeusmtkzcnr[/url], [link=http://ftklknkymhft.com/]ftklknkymhft[/link], http://bdtfxiybtdts.com/', '<p>fvlfe6  <a href=\"http://jahvqeeeeaob.com/\">jahvqeeeeaob</a>, [url=http://nmeusmtkzcnr.com/]nmeusmtkzcnr[/url], [link=http://ftklknkymhft.com/]ftklknkymhft[/link], http://bdtfxiybtdts.com/</p>');

-- *** STRUCTURE: `tbl_entries_data_13` ***
DROP TABLE IF EXISTS `tbl_entries_data_13`;
CREATE TABLE `tbl_entries_data_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_13` ***
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 52, 'project-pizza', 'Project: PIZZA!');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 53, 'project-pizza', 'Project: PIZZA!');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 54, 'project-pizza', 'Project: PIZZA!');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 55, 'project-pizza', 'Project: PIZZA!');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 64, 'project-pizza', 'Project: PIZZA!');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 67, 'the-fall-cooking-season-is-starting', 'The Fall Cooking Season is Starting!');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 68, 'the-fall-cooking-season-is-starting', 'The Fall Cooking Season is Starting!');

-- *** STRUCTURE: `tbl_entries_data_14` ***
DROP TABLE IF EXISTS `tbl_entries_data_14`;
CREATE TABLE `tbl_entries_data_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_14` ***
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (25, 52, '2012-03-01T21:12:00-06:00', 1330657920, 1330657920);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (27, 53, '2012-03-01T21:16:00-06:00', 1330658160, 1330658160);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (29, 54, '2012-03-02T08:27:00-06:00', 1330698420, 1330698420);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (31, 55, '2012-03-02T09:11:00-06:00', 1330701060, 1330701060);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (35, 64, '2012-03-28T11:16:00-05:00', 1332951360, 1332951360);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (36, 67, '2012-08-21T04:56:00-05:00', 1345542960, 1345542960);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (37, 68, '2012-09-05T00:30:00-05:00', 1346823000, 1346823000);

-- *** STRUCTURE: `tbl_entries_data_15` ***
DROP TABLE IF EXISTS `tbl_entries_data_15`;
CREATE TABLE `tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_15` ***
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 53, 'http-tastelicious', 'http://tastelicio.us');
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 55, 'http-tastelicious', 'http://tastelicio.us');
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 64, 'http-wwwfacebookcom-profilephp-id=100003405669571', 'http://www.facebook.com/profile.php?id=100003405669571');
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 67, 'http-gvueqxfhysbpcom', 'http://gvueqxfhysbp.com/');
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 68, 'http-daiinmhcqxeqcom', 'http://daiinmhcqxeq.com/');

-- *** STRUCTURE: `tbl_entries_data_16` ***
DROP TABLE IF EXISTS `tbl_entries_data_16`;
CREATE TABLE `tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_16` ***
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (14, 26, 'no');
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (16, 25, 'no');
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (20, 35, 'no');
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (28, 37, 'no');
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (34, 43, 'no');
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (39, 58, 'no');

-- *** STRUCTURE: `tbl_entries_data_17` ***
DROP TABLE IF EXISTS `tbl_entries_data_17`;
CREATE TABLE `tbl_entries_data_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_17` ***
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 17, 'curried-israeli-couscous', 'Curried Israeli Couscous');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 20, 'new-mexico-pepper-sauce', 'New Mexico Pepper Sauce');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 21, 'butternut-squash-and-jalapeno-soup', 'Butternut Squash & Jalapeno Soup');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 22, 'corn-and-potato-chowder', 'Corn & Potato Chowder');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 32, 'basic-gnocchi', 'Basic Gnocchi');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 33, 'chicken-and-gnocchi-soup', 'Chicken & Gnocchi Soup');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 36, 'beer-cheese-dip', 'Beer Cheese Dip');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 65, 'grilled-curry-chicken-salad', 'Grilled Curry Chicken Salad');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 66, 'curried-ranch-dressing', 'Curried Ranch Dressing');

-- *** STRUCTURE: `tbl_entries_data_18` ***
DROP TABLE IF EXISTS `tbl_entries_data_18`;
CREATE TABLE `tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_18` ***
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 17, 'This delicious recipe for Israeli couscous is quick and simple. Add some grilled chicken and veggies and you have a great meal.', '<p>This delicious recipe for Israeli couscous is quick and simple. Add some grilled chicken and veggies and you have a great meal.</p>');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 20, 'This delicious sauce has a smokey, cherry, and mildly spicy taste. It is made with dried New Mexico Peppers that you can find at pretty much any grocery store in the Mexican food section or in the produce section. (\"More info about New Mexico Peppers\":http://www.specialtyproduce.com/produce/Dried_New_Mexico_Chile_Peppers_426.php)', '<p>This delicious sauce has a smokey, cherry, and mildly spicy taste. It is made with dried New Mexico Peppers that you can find at pretty much any grocery store in the Mexican food section or in the produce section. (<a href=\"http://www.specialtyproduce.com/produce/Dried_New_Mexico_Chile_Peppers_426.php\">More info about New Mexico Peppers</a>)</p>');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 21, 'This delicious little number is a rich, sweet, and spicy soup made from butternut squash. It is made from a simple combination of butternut squash, a smoked jalapeno, and \"New Mexico Pepper sauce\":/recipes/view/new-mexico-pepper-sauce/.', '<p>This delicious little number is a rich, sweet, and spicy soup made from butternut squash. It is made from a simple combination of butternut squash, a smoked jalapeno, and <a href=\"/recipes/view/new-mexico-pepper-sauce/\">New Mexico Pepper sauce</a>.</p>');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 22, 'This is quick and simple recipe makes a delicious, cheesy soup. It would be great with some fresh-baked, crusty bread or grilled sandies.', '<p>This is quick and simple recipe makes a delicious, cheesy soup. It would be great with some fresh-baked, crusty bread or grilled sandies.</p>');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 32, '\"Gnocchi\":http://en.wikipedia.org/wiki/Gnocchi are a soft, pillowy pasta often made from potato, flour, and egg. This is a very simple recipe that I love to use. While they might seem difficult to make at first, they really are pretty simple once you get the hang of it.', '<p><a href=\"http://en.wikipedia.org/wiki/Gnocchi\">Gnocchi</a> are a soft, pillowy pasta often made from potato, flour, and egg. This is a very simple recipe that I love to use. While they might seem difficult to make at first, they really are pretty simple once you get the hang of it.</p>');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 33, 'The other day my dear friend became ill and, naturally, I felt the need to make soup for him. I threw together some stuff together and it turned out pretty well. Today I share with you my newest creation, Chicken and Gnocchi Soup.', '<p>The other day my dear friend became ill and, naturally, I felt the need to make soup for him. I threw together some stuff together and it turned out pretty well. Today I share with you my newest creation, Chicken and Gnocchi Soup.</p>');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (28, 36, 'A simple and delicious beer cheese dip/fondue.', '<p>A simple and delicious beer cheese dip/fondue.</p>');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 65, 'In my attempts at eating more healthily, I\'ve come up with this very simple recipe. It features lean chicken, nutrient-rich spinach, and a small amount of fats for flavor.', '<p>In my attempts at eating more healthily, I<span class=\"rsquo squo\">&#8217;</span>ve come up with this very simple recipe. It features lean chicken, nutrient-rich spinach, and a small amount of fats for flavor.</p>');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (35, 66, 'This dressing was invented to go with my <a href=\"http://tastelicio.us/recipes/view/grilled-curry-chicken-salad/\">Grilled Curry Chicken Salad</a>. It\'s super simple, but really delicious.', '<p>This dressing was invented to go with my <a href=\"http://tastelicio.us/recipes/view/grilled-curry-chicken-salad/\">Grilled Curry Chicken Salad</a>. It<span class=\"rsquo squo\">&#8217;</span>s super simple, but really delicious.</p>');

-- *** STRUCTURE: `tbl_entries_data_19` ***
DROP TABLE IF EXISTS `tbl_entries_data_19`;
CREATE TABLE `tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_19` ***
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 17, '_for the couscous_\r\nOlive oil\r\n1 cup Israeli Couscous\r\n1 1/2 cup chicken stock\r\n2 tsp madras curry powder\r\n1-2 tbsp sugar\r\n2-3 tsp lemon juice\r\n1/2 cup chopped onion\r\n1 clove garlic chopped\r\n\r\n_for the meat_\r\n2 pork loin chops (you could also use chicken breasts if you wanted)\r\nolive oil\r\nsalt, pepper, curry powder', '<p><em>for the couscous</em><br/>\nOlive oil<br/>\n1 cup Israeli Couscous<br/>\n1 1/2 cup chicken stock<br/>\n2 tsp madras curry powder<br/>\n1-2 tbsp sugar<br/>\n2-3 tsp lemon juice<br/>\n1/2 cup chopped onion<br/>\n1 clove garlic chopped</p><p><em>for the meat</em><br/>\n2 pork loin chops (you could also use chicken breasts if you wanted)<br/>\nolive oil<br/>\nsalt, pepper, curry powder</p>');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 20, '6-10 dried New Mexico Peppers\r\n2 Tbsp Melted Butter\r\n2 Tbsp Sugar\r\n2 Tsp Salt\r\n1 Tsp Onion Powder\r\n1 Tsp Garlic Powder\r\n1 Tsp Cumin\r\n1 Tbsp Lemon Juice', '<p>6-10 dried New Mexico Peppers<br/>\n2 Tbsp Melted Butter<br/>\n2 Tbsp Sugar<br/>\n2 Tsp Salt<br/>\n1 Tsp Onion Powder<br/>\n1 Tsp Garlic Powder<br/>\n1 Tsp Cumin<br/>\n1 Tbsp Lemon Juice</p>');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 21, '2 Butternut Squash\r\n1 Smoked jalapeño (You can substitute chipotle powder or canned chipotle peppers in adobo if you want, but these are both very spicy so use them sparingly.)\r\n1 tsp Salt (+/- to taste)\r\n2 c Chicken stock\r\n1 tsp Onion powder\r\n1 tsp Garlic powder\r\n1/2 tsp White pepper\r\n1/2-1 c New Mexico Pepper Sauce (+/- to taste, sauce is mildly spicy)\r\n1/2-1 c half & half or buttermilk (+/- to taste)', '<p>2 Butternut Squash<br/>\n1 Smoked jalape&#241;o (You can substitute chipotle powder or canned chipotle peppers in adobo if you want, but these are both very spicy so use them sparingly.)<br/>\n1 tsp Salt (+/- to taste)<br/>\n2 c Chicken stock<br/>\n1 tsp Onion powder<br/>\n1 tsp Garlic powder<br/>\n1/2 tsp White pepper<br/>\n1/2-1 c New Mexico Pepper Sauce (+/- to taste, sauce is mildly spicy)<br/>\n1/2-1 c half <span class=\"amp\">&#38;</span> half or buttermilk (+/- to taste)</p>');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 22, '5-6 medium-sized potatoes, peeled & chopped\r\n1 10 oz can of Campbell\'s cheddar cheese\r\n1/2-1 c shredded cheese (use your favorite kind; cheddar, monterrey jack, or co-jack are all good)\r\n4 pieces of bacon, cooked & chopped (use 1/4-1/2 cup of real bacon bits instead for convenience)\r\n1/2 onion, diced (used dried, chopped onion instead of you\'d like—about 2 tbsp or so)\r\n1 15 oz can of whole kernel corn\r\n1/2 c sour cream (alternatively, you could use buttermilk)\r\n2 tbsp butter\r\n1 tsp black pepper\r\n1 tsp red pepper flakes (Chipotle pepper flakes here taste awesome)\r\n1/2 tsp cumin\r\n1 tsp Ranch dressing powder (optional)\r\n1/2 tsp thyme\r\nSalk to taste', '<p>5-6 medium-sized potatoes, peeled <span class=\"amp\">&#38;</span> chopped<br/>\n1 10 oz can of Campbell<span class=\"rsquo squo\">&#8217;</span>s cheddar cheese<br/>\n1/2-1 c shredded cheese (use your favorite kind; cheddar, monterrey jack, or co-jack are all good)<br/>\n4 pieces of bacon, cooked <span class=\"amp\">&#38;</span> chopped (use 1/4-1/2 cup of real bacon bits instead for convenience)<br/>\n1/2 onion, diced (used dried, chopped onion instead of you<span class=\"rsquo squo\">&#8217;</span>d like?<span class=\"dash\">&#8212;</span>?about 2 tbsp or so)<br/>\n1 15 oz can of whole kernel corn<br/>\n1/2 c sour cream (alternatively, you could use buttermilk)<br/>\n2 tbsp butter<br/>\n1 tsp black pepper<br/>\n1 tsp red pepper flakes (Chipotle pepper flakes here taste awesome)<br/>\n1/2 tsp cumin<br/>\n1 tsp Ranch dressing powder (optional)<br/>\n1/2 tsp thyme<br/>\nSalk to taste</p>');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 32, '2 large russet potatoes\r\n1 egg\r\n1-2 c flour\r\nsalt to taste', '<p>2 large russet potatoes<br/>\n1 egg<br/>\n1-2 c flour<br/>\nsalt to taste</p>');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 33, '1 Recipe of Basic Gnocchi (\"recipe here\":/recipes/view/basic-gnocchi/ or you can use store-bought)\r\n4-6 c of vegetable or chicken stock (depending on how broth-y you want it)\r\n2 tbsp butter\r\n1/2 c chopped celery\r\n1/2 c chopped carrots\r\n1/4 c chopped leeks\r\n1 medium onion, chopped\r\n2 cloves of garlic, smashed\r\n2 tbsp flour (optional. just to thicken the soup.)\r\n1-2 c cooked chicken\r\n1/2 c sweet corn\r\n1 in fresh rosemary (optional. +/-)\r\nsalt & black pepper to taste\r\n\r\n\r\n_Because this is a soup, these are all approximate measurements. Adjust to your liking._', '<p>1 Recipe of Basic Gnocchi (<a href=\"/recipes/view/basic-gnocchi/\">recipe here</a> or you can use store-bought)<br/>\n4-6 c of vegetable or chicken stock (depending on how broth-y you want it)<br/>\n2 tbsp butter<br/>\n1/2 c chopped celery<br/>\n1/2 c chopped carrots<br/>\n1/4 c chopped leeks<br/>\n1 medium onion, chopped<br/>\n2 cloves of garlic, smashed<br/>\n2 tbsp flour (optional. just to thicken the soup.)<br/>\n1-2 c cooked chicken<br/>\n1/2 c sweet corn<br/>\n1 in fresh rosemary (optional. +/-)<br/>\nsalt <span class=\"amp\">&#38;</span> black pepper to taste</p><p><em>Because this is a soup, these are all approximate measurements. Adjust to your liking.</em></p>');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (28, 36, '2 tbsp butter\r\n2 tsp bacon grease (optional)\r\n1/4 c chopped onions\r\n2 tbsp flour\r\n1 c beer (of choice, I used an amber ale)\r\n3 tbsp half and half\r\n3/4 c milk\r\n1/4 tsp garlic salt (more or less to taste)\r\n2 c (~1 lb) cheddar cheese, shredded\r\na dash or two of nutmeg (optional)', '<p>2 tbsp butter<br/>\n2 tsp bacon grease (optional)<br/>\n1/4 c chopped onions<br/>\n2 tbsp flour<br/>\n1 c beer (of choice, I used an amber ale)<br/>\n3 tbsp half and half<br/>\n3/4 c milk<br/>\n1/4 tsp garlic salt (more or less to taste)<br/>\n2 c (~1 lb) cheddar cheese, shredded<br/>\na dash or two of nutmeg (optional)</p>');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (35, 66, '1 c buttermilk\r\n1 c real mayonaise\r\n1 packet of Hidden Valley ranch seasoning\r\n4 tbsp curry powder\r\n1 tbsp tikka masala spice blend (If you can find it. I used <a href=\"http://allspiceonline.com/shop/rubs-blends/tikka-masala\">this one</a>.)\r\n1/2 tsp cinnamon\r\n1 tbsp peanut butter', '<p>1 c buttermilk<br/>\n1 c real mayonaise<br/>\n1 packet of Hidden Valley ranch seasoning<br/>\n4 tbsp curry powder<br/>\n1 tbsp tikka masala spice blend (If you can find it. I used <a href=\"http://allspiceonline.com/shop/rubs-blends/tikka-masala\">this one</a>.)<br/>\n1/2 tsp cinnamon<br/>\n1 tbsp peanut butter</p>');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 65, '1 chicken breast\r\n1 tbsp good curry powder\r\npinch of salt\r\n1 tsp olive oil\r\n3 c spinach (more or less as you like)\r\n1 green onion\r\nAny other vegetables you like\r\n2-3 tbsp toasted sliced almonds\r\n2 tbsp <a href=\"http://tastelicio.us/recipes/view/curried-ranch-dressing/\">curried ranch dressing</a>', '<p>1 chicken breast<br/>\n1 tbsp good curry powder<br/>\npinch of salt<br/>\n1 tsp olive oil<br/>\n3 c spinach (more or less as you like)<br/>\n1 green onion<br/>\nAny other vegetables you like<br/>\n2-3 tbsp toasted sliced almonds<br/>\n2 tbsp <a href=\"http://tastelicio.us/recipes/view/curried-ranch-dressing/\">curried ranch dressing</a></p>');

-- *** STRUCTURE: `tbl_entries_data_2` ***
DROP TABLE IF EXISTS `tbl_entries_data_2`;
CREATE TABLE `tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_2` ***
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 25, 'Just a little update on m\'site!', 'Just a little update on m<span class=\"rsquo squo\">&#8217;</span>site!');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 26, 'Bam! We\'ve did it. Read about my latest event...', 'Bam! We<span class=\"rsquo squo\">&#8217;</span>ve did it. Read about my latest event<span class=\"ellipsis\">&#8230;</span>');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 35, 'It\'s cooking season and I have some stuff to share with you. Check out my new recipes.', 'It<span class=\"rsquo squo\">&#8217;</span>s cooking season and I have some stuff to share with you. Check out my new recipes.');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (39, 37, 'This weekend my coworkers and I had a little dip contest. Being that it is October, I decided that beer cheese would be appropriate. Here\'s my recipe.', 'This weekend my coworkers and I had a little dip contest. Being that it is October, I decided that beer cheese would be appropriate. Here<span class=\"rsquo squo\">&#8217;</span>s my recipe.');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 43, 'Last summer a friend of mine, who recently moved to town, asked me where to get pizza in town. I didn\'t know what to tell him.', 'Last summer a friend of mine, who recently moved to town, asked me where to get pizza in town. I didn<span class=\"rsquo squo\">&#8217;</span>t know what to tell him.');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (50, 58, 'Project: PIZZA! For the first official project pizza visit and review we went to Chuck\'s Restaurant in Highland Park.', 'Project: PIZZA! For the first official project pizza visit and review we went to Chuck<span class=\"rsquo squo\">&#8217;</span>s Restaurant in Highland Park.');

-- *** STRUCTURE: `tbl_entries_data_20` ***
DROP TABLE IF EXISTS `tbl_entries_data_20`;
CREATE TABLE `tbl_entries_data_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_20` ***
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 17, 'Drizzle olive oil in pan. Add couscous and cook for 2-3 minutes until slightly browned. Add lemon juice and garlic then stir till the juice is evaporated. Add stir the curry powder and 1 tbsp of sugar into the chicken stock then add to the couscous. Add the onions and let cook until the couscous is cooked--15-20 minutes. About half-way through, taste the liquid and add more sugar and salt if it is needed.\r\n\r\nFor the meat, rinse and cut off excess fat. Mix 2-3 tbsp of curry powder, salt, and pepper together and pat onto each side of the meat. Heat olive oil in a pan, and fry the meet until done.\r\n\r\nSlice meet into strips and place on top of mounded couscous.\r\n\r\n_Serving Tips:_ You could chop up some fresh herbs or drizzle a tasty yogurt sauce over the top to really kick it up a notch.', '<p>Drizzle olive oil in pan. Add couscous and cook for 2-3 minutes until slightly browned. Add lemon juice and garlic then stir till the juice is evaporated. Add stir the curry powder and 1 tbsp of sugar into the chicken stock then add to the couscous. Add the onions and let cook until the couscous is cooked?<span class=\"dash\">&#8212;</span>?15-20 minutes. About half-way through, taste the liquid and add more sugar and salt if it is needed.</p><p>For the meat, rinse and cut off excess fat. Mix 2-3 tbsp of curry powder, salt, and pepper together and pat onto each side of the meat. Heat olive oil in a pan, and fry the meet until done.</p><p>Slice meet into strips and place on top of mounded couscous.</p><p><em>Serving Tips:</em> You could chop up some fresh herbs or drizzle a tasty yogurt sauce over the top to really kick it up a notch.</p>');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 20, 'Begin by rinsing your peppers in warm water. Once they\'ve been washed, soak them in hot water for 20-30 minutes. This will soften them up and partially rehydrate them. Once the peppers are soft, drain them, and remove the stems and seeds. To do this, you can use a knife to cut the stem off, then scrape the seeds out.\r\n\r\nAfter all the peppers have been deseeded and destemmed, put them in a blender and add about an inch of water in the bottom of the blender. Blend the peppers until they are smooth.\r\n\r\nAfter they are blended, you will need to sieve the mixture to remove the skin and other large particles. Pour the mixture into a wire sieve over a medium-large bowl and stir them around in the sieve until all of the liquid has passed through. You can use a rubber spatchula to push the liquid through more quickly.\r\n\r\nWhen you have finished straining the mixture, discard the portion that didn\'t pass through sieve. The strained peppers are the base for the sauce.\r\n\r\nAdd the other ingredients and stir. When ingredients are mixed in, the sauce is finished.\r\n\r\nUse in soups, on burritos, enchiladas, and for anything else you want.', '<p>Begin by rinsing your peppers in warm water. Once they<span class=\"rsquo squo\">&#8217;</span>ve been washed, soak them in hot water for 20-30 minutes. This will soften them up and partially rehydrate them. Once the peppers are soft, drain them, and remove the stems and seeds. To do this, you can use a knife to cut the stem off, then scrape the seeds out.</p><p>After all the peppers have been deseeded and destemmed, put them in a blender and add about an inch of water in the bottom of the blender. Blend the peppers until they are smooth.</p><p>After they are blended, you will need to sieve the mixture to remove the skin and other large particles. Pour the mixture into a wire sieve over a medium-large bowl and stir them around in the sieve until all of the liquid has passed through. You can use a rubber spatchula to push the liquid through more quickly.</p><p>When you have finished straining the mixture, discard the portion that didn<span class=\"rsquo squo\">&#8217;</span>t pass through sieve. The strained peppers are the base for the sauce.</p><p>Add the other ingredients and stir. When ingredients are mixed in, the sauce is finished.</p><p>Use in soups, on burritos, enchiladas, and for anything else you want.</p>');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 21, 'Cut the squash in half and, using a spoon, scoop out and remove the seeds. Place both halves face down and bake in a 350° F oven until tender (usually about an hour). Remove from oven and let set until it\'s cool enough to touch.\r\n\r\nNow, scoop out the flesh from the harder skins and place into food processor or blender. It should come out easily if it\'s still a little warm. (Depending on the size of your squash and blender, you might have to blend it one half at a time.)\r\n\r\nBefore removing from blender, add the Jalapeno and blend to evenly incorporate into the squash. (If you\'re blending in batches, just add it to one of them, then when you mix it all back together it will get mixed in fine.)\r\n\r\nFinally, move all the squash/jalapeno mixture to a stock pot to cook. Add Chicken stock, onion powder, garlic powder, white pepper, and pepper sauce.\r\n\r\nAt this point, nothing needs to cook really, but you\'re just bringing the soup up to the proper heat and melding the flavors together.\r\n\r\nIn the last 10 minutes of cooking, add the buttermilk. You may add it earlier, but adding it at the end ensures it doesn\'t separate from cooking too long.\r\n\r\nThat\'s all. Enjoy. Garnish with Crème fraiche, sour cream, bacon, or whatever you like.', '<p>Cut the squash in half and, using a spoon, scoop out and remove the seeds. Place both halves face down and bake in a 350&#176; F oven until tender (usually about an hour). Remove from oven and let set until it<span class=\"rsquo squo\">&#8217;</span>s cool enough to touch.</p><p>Now, scoop out the flesh from the harder skins and place into food processor or blender. It should come out easily if it<span class=\"rsquo squo\">&#8217;</span>s still a little warm. (Depending on the size of your squash and blender, you might have to blend it one half at a time.)</p><p>Before removing from blender, add the Jalapeno and blend to evenly incorporate into the squash. (If you<span class=\"rsquo squo\">&#8217;</span>re blending in batches, just add it to one of them, then when you mix it all back together it will get mixed in fine.)</p><p>Finally, move all the squash/jalapeno mixture to a stock pot to cook. Add Chicken stock, onion powder, garlic powder, white pepper, and pepper sauce.</p><p>At this point, nothing needs to cook really, but you<span class=\"rsquo squo\">&#8217;</span>re just bringing the soup up to the proper heat and melding the flavors together.</p><p>In the last 10 minutes of cooking, add the buttermilk. You may add it earlier, but adding it at the end ensures it doesn<span class=\"rsquo squo\">&#8217;</span>t separate from cooking too long.</p><p>That<span class=\"rsquo squo\">&#8217;</span>s all. Enjoy. Garnish with Cr&#232;me fraiche, sour cream, bacon, or whatever you like.</p>');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 22, 'Cook potatoes in boiling water till you can pierce them with a fork. Be careful not to overcook them, or they will fall apart before you\'re finished.\r\n\r\nWhen the potatoes are finished, drain most of the water, but leave enough water in the pan to almost cover the potatoes. Add the cheddar cheese and bacon, then stir until the water and the cheese sauce have mixed together.\r\n\r\nNext add the onions, black pepper, red pepper, cumin, Ranch seasoning, and thyme. Stir together. Add salt to taste.\r\n\r\nLet this mixture heat up, but before it gets to boiling add the remaining ingredients—cream, cheese, butter, and corn.\r\n\r\nLet everything heat up to just under boiling. Remove from heat and serve.\r\n\r\nGarnish with a dollop of crème fraiche (or thinned sour cream as a sub), parsley, and red pepper flakes and it will knock your socks off.', '<p>Cook potatoes in boiling water till you can pierce them with a fork. Be careful not to overcook them, or they will fall apart before you<span class=\"rsquo squo\">&#8217;</span>re finished.</p><p>When the potatoes are finished, drain most of the water, but leave enough water in the pan to almost cover the potatoes. Add the cheddar cheese and bacon, then stir until the water and the cheese sauce have mixed together.</p><p>Next add the onions, black pepper, red pepper, cumin, Ranch seasoning, and thyme. Stir together. Add salt to taste.</p><p>Let this mixture heat up, but before it gets to boiling add the remaining ingredients?<span class=\"dash\">&#8212;</span>?cream, cheese, butter, and corn.</p><p>Let everything heat up to just under boiling. Remove from heat and serve.</p><p>Garnish with a dollop of cr&#232;me fraiche (or thinned sour cream as a sub), parsley, and red pepper flakes and it will knock your socks off.</p>');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 32, 'First, get the potatoes ready to mash: peel them, chop them in large, evenly-sized cubes and boil them in salted water till they are soft.\r\n\r\nNext, put the cooked, drained potatoes into either a mixer or food processor. Mix or process them till they are smooth. At this point, go ahead and add salt to taste. You want gnocchi that are flavorful, but not overly salty as you\'ll probably serve them with a sauce.\r\n\r\nAdd in the egg and mix/process till smooth. Add 1 cup of flour. This will not be enough for the whole recipe, but it will start to make the potatoes more of a dough. You can continue to add flour a little bit at a time till the dough is just firm enough to turn out onto a floured bread cloth. \r\n\r\n*Note:* You want to add enough flour you can work with the dough easily, but the more flour you add the firmer the gnocchi will be. Add less flour if you want a softer pasta, add more if you want it firmer. This is where experimentation will pay off--find your favorite balance.\r\n\r\nWork the dough (not really kneading, though), till you have a ball. \r\n\r\nNext, you\'ll form your gnocchi. There are a variety of techniques for this, but this is what is easiest for me:\r\n\r\nFlatten the ball of dough out some. With a knife, slice off about an inch. Roll the strip of dough on the floured area and stretch out into a string about inch (or slightly smaller) in diameter. With your knife, slice segments of an inch (or so) off. You can leave the gnocchi shaped like this, or you can  press each piece with your thumb to make them flatter.\r\n\r\nBoil the little pasta lumps for 4-6 minutes. They will float when they are done cooking. After they are cooked, you can toss them with any sauce you want. ', '<p>First, get the potatoes ready to mash: peel them, chop them in large, evenly-sized cubes and boil them in salted water till they are soft.</p><p>Next, put the cooked, drained potatoes into either a mixer or food processor. Mix or process them till they are smooth. At this point, go ahead and add salt to taste. You want gnocchi that are flavorful, but not overly salty as you<span class=\"rsquo squo\">&#8217;</span>ll probably serve them with a sauce.</p><p>Add in the egg and mix/process till smooth. Add 1 cup of flour. This will not be enough for the whole recipe, but it will start to make the potatoes more of a dough. You can continue to add flour a little bit at a time till the dough is just firm enough to turn out onto a floured bread cloth. </p><p><strong>Note:</strong> You want to add enough flour you can work with the dough easily, but the more flour you add the firmer the gnocchi will be. Add less flour if you want a softer pasta, add more if you want it firmer. This is where experimentation will pay off?<span class=\"dash\">&#8212;</span>?find your favorite balance.</p><p>Work the dough (not really kneading, though), till you have a ball. </p><p>Next, you<span class=\"rsquo squo\">&#8217;</span>ll form your gnocchi. There are a variety of techniques for this, but this is what is easiest for me:</p><p>Flatten the ball of dough out some. With a knife, slice off about an inch. Roll the strip of dough on the floured area and stretch out into a string about inch (or slightly smaller) in diameter. With your knife, slice segments of an inch (or so) off. You can leave the gnocchi shaped like this, or you can  press each piece with your thumb to make them flatter.</p><p>Boil the little pasta lumps for 4-6 minutes. They will float when they are done cooking. After they are cooked, you can toss them with any sauce you want. </p>');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 33, 'This is super easy:\r\n\r\n# Melt the butter in a medium sauce pan or stock pot. Saute the vegetables (except the corn).\r\n# Add the stock. Bring up to heat.\r\n# Once the soup is boiling, mix the flour with about equal parts of water and make a paste. Add it to the boiling soup. This thickens it up just slightly and makes for a more \"hearty\" feeling soup in the end.\r\n# Add the chicken and corn. From this point, you don\'t necessarily want the soup to simmer very long. Chicken that is boiled too long gets tough and nasty.\r\n# Let the chicken chillax in the soup for a few minutes to heat up.\r\n# Add the rosemary. Rosemary will lose flavor if it is cooks too long.\r\n# Add the salt and pepper to get the taste right.\r\n\r\nServe! That\'s it.', '<p>This is super easy:</p><ol><li>Melt the butter in a medium sauce pan or stock pot. Saute the vegetables (except the corn).</li>\n		<li>Add the stock. Bring up to heat.</li>\n		<li>Once the soup is boiling, mix the flour with about equal parts of water and make a paste. Add it to the boiling soup. This thickens it up just slightly and makes for a more <span class=\"ldquo dquo\">&#8220;</span>hearty<span class=\"rdquo dquo\">&#8221;</span> feeling soup in the end.</li>\n		<li>Add the chicken and corn. From this point, you don<span class=\"rsquo squo\">&#8217;</span>t necessarily want the soup to simmer very long. Chicken that is boiled too long gets tough and nasty.</li>\n		<li>Let the chicken chillax in the soup for a few minutes to heat up.</li>\n		<li>Add the rosemary. Rosemary will lose flavor if it is cooks too long.</li>\n	</ol><ol><li>Add the salt and pepper to get the taste right.</li>\n	</ol><p>Serve! That<span class=\"rsquo squo\">&#8217;</span>s it.</p>');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (28, 36, 'Melt butter and bacon grease in a sauce pan. Add onions and saute until tender.\r\n\r\nAdd flour and cook for 1 minute. Add the beer and whisk quickly. Continue to add the half and half and milk as the mixture is heating up. Stir continuously until sauce begins to thicken. Once the sauce becomes bubbly, remove from heat. Add garlic salt (and other spices if you want to try adding anything additional).\r\n\r\n(Optionally here, if you prefer a smoother sauce, you can strain the sauce to remove the onions.)\r\n\r\nWhile the sauce is still hot, add the cheese and stir slowly to melt. Once cheese is melted, add the nutmeg.\r\n\r\nNOTE: If you have trouble getting all the cheese to melt, you can return the sauce to a low heat, _however be warned_ because cheese that is cooked too long or at too high of temperature will break down and become grainy. This is not ideal, so be careful if you choose to do so.\r\n\r\nServe while hot with pretzels, crusty bread, or whatever.', '<p>Melt butter and bacon grease in a sauce pan. Add onions and saute until tender.</p><p>Add flour and cook for 1 minute. Add the beer and whisk quickly. Continue to add the half and half and milk as the mixture is heating up. Stir continuously until sauce begins to thicken. Once the sauce becomes bubbly, remove from heat. Add garlic salt (and other spices if you want to try adding anything additional).</p><p>(Optionally here, if you prefer a smoother sauce, you can strain the sauce to remove the onions.)</p><p>While the sauce is still hot, add the cheese and stir slowly to melt. Once cheese is melted, add the nutmeg.</p><p>NOTE: If you have trouble getting all the cheese to melt, you can return the sauce to a low heat, <em>however be warned</em> because cheese that is cooked too long or at too high of temperature will break down and become grainy. This is not ideal, so be careful if you choose to do so.</p><p>Serve while hot with pretzels, crusty bread, or whatever.</p>');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 65, 'Mix the curry powder and salt together. Coat the chicken breast in the mixture (like a dry rub). You can let it set  for a while to let the flavor sink in or just move on to the next step.\r\n\r\nWhen you\'re ready to cook the chicken, brush or spray (if you have an olive oil sprayer) the chicken with a light coat of olive oil. Put the chicken on the grill and cook through.\r\n\r\nMeanwhile, on a plate or in a bowl, make a bed with the spinach, top with the green onions and whatever other veggies you\'ve decided to use (I like slicing some Thai chili peppers for some more heat). When the chicken is finished, slice it and spread it on top of the spinach. Finally, lightly drizzle the dressing on the salad then spread on the almonds.\r\n\r\nThat\'s it. Enjoy.', '<p>Mix the curry powder and salt together. Coat the chicken breast in the mixture (like a dry rub). You can let it set  for a while to let the flavor sink in or just move on to the next step.</p><p>When you<span class=\"rsquo squo\">&#8217;</span>re ready to cook the chicken, brush or spray (if you have an olive oil sprayer) the chicken with a light coat of olive oil. Put the chicken on the grill and cook through.</p><p>Meanwhile, on a plate or in a bowl, make a bed with the spinach, top with the green onions and whatever other veggies you<span class=\"rsquo squo\">&#8217;</span>ve decided to use (I like slicing some Thai chili peppers for some more heat). When the chicken is finished, slice it and spread it on top of the spinach. Finally, lightly drizzle the dressing on the salad then spread on the almonds.</p><p>That<span class=\"rsquo squo\">&#8217;</span>s it. Enjoy.</p>');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (35, 66, 'It\'s pretty easy: combine everything, mix.\r\n\r\n*Note: This recipe is <em>not</em> low-fat, but it is pretty low-carb. Just saying.', '<p>It<span class=\"rsquo squo\">&#8217;</span>s pretty easy: combine everything, mix.</p><p>*Note: This recipe is <em>not</em> low-fat, but it is pretty low-carb. Just saying.</p>');

-- *** STRUCTURE: `tbl_entries_data_21` ***
DROP TABLE IF EXISTS `tbl_entries_data_21`;
CREATE TABLE `tbl_entries_data_21` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_21` ***
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 17, '3-4-servings', '3-4 servings');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 32, '4-servings', '4 servings');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 33, '6-8-cups', '6-8 cups');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 36, '3-cups', '3 cups');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 65, '1-salad', '1 Salad');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 66, '16-oz', '16 oz');

-- *** STRUCTURE: `tbl_entries_data_22` ***
DROP TABLE IF EXISTS `tbl_entries_data_22`;
CREATE TABLE `tbl_entries_data_22` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_22` ***
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 17, '5-min', '5 min');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 20, '15-min', '15 min');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 21, '15-min', '15 min');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 22, '30-min', '30 min');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 32, '30-40-min', '30-40 min');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 33, '30-min', '30 min');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 36, '15-minutes', '15 minutes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 65, '20-minutes', '20 minutes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 66, '5-min', '5 min');

-- *** STRUCTURE: `tbl_entries_data_23` ***
DROP TABLE IF EXISTS `tbl_entries_data_23`;
CREATE TABLE `tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_23` ***
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 17, '20-30-min', '20-30 min');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 21, '90-min', '90 min');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 20, '15-min', '15 min');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 22, '40-min', '40 min');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 32, '30-40-min', '30-40 min');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 33, '45-min', '45 min');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 36, '15-minutes', '15 minutes');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 65, '20-minutes', '20 minutes');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 66, '5-min', '5 min');

-- *** STRUCTURE: `tbl_entries_data_24` ***
DROP TABLE IF EXISTS `tbl_entries_data_24`;
CREATE TABLE `tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_24` ***
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 17, 'published', 'Published');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 20, 'published', 'Published');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 21, 'published', 'Published');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 22, 'published', 'Published');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 32, 'published', 'Published');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 33, 'published', 'Published');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 36, 'published', 'Published');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 65, 'published', 'Published');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 66, 'published', 'Published');

-- *** STRUCTURE: `tbl_entries_data_25` ***
DROP TABLE IF EXISTS `tbl_entries_data_25`;
CREATE TABLE `tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_25` ***
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (4, 17, '/img/attached/3_5896956882702925134001362330449465891637n.jpg', 156567, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-05-13T12:54:12-05:00\";s:5:\"width\";i:720;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (8, 20, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (11, 21, '/img/attached/7_iowa-interactive-006.jpg', 48745, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-10-03T12:02:26-05:00\";s:5:\"width\";i:600;s:6:\"height\";i:450;}');
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (10, 22, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (20, 32, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (19, 33, '/img/attached/gnocchi-soup.jpg', 232127, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-10-04T15:32:19-05:00\";s:5:\"width\";i:800;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (28, 36, '/img/attached/beer-cheese-dip-2.jpg', 476244, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-10-24T17:01:22-05:00\";s:5:\"width\";i:938;s:6:\"height\";i:687;}');
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (37, 65, '/img/attached/curry-chicken-salad.jpeg', 144049, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-06-07T11:19:23-05:00\";s:5:\"width\";i:612;s:6:\"height\";i:612;}');
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (35, 66, NULL, NULL, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_26` ***
DROP TABLE IF EXISTS `tbl_entries_data_26`;
CREATE TABLE `tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_26` ***
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (13, 35, 33);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (12, 35, 32);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (20, 37, 36);

-- *** STRUCTURE: `tbl_entries_data_27` ***
DROP TABLE IF EXISTS `tbl_entries_data_27`;
CREATE TABLE `tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_27` ***
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 23, '<div id=\"cse\" style=\"width: 100%;\">\r\n	Loading</div>\r\n<script src=\"//www.google.com/jsapi\" type=\"text/javascript\"></script><script type=\"text/javascript\"> \r\n  google.load(\'search\', \'1\', {language : \'en\'});\r\n  google.setOnLoadCallback(function() {\r\n    var customSearchControl = new google.search.CustomSearchControl(\'008814207370013865509:zm-cecgeq24\');\r\n    customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);\r\n    customSearchControl.draw(\'cse\');\r\n    if (getQuery()) { customSearchControl.execute(getQuery()); }\r\n  }, true);\r\n</script><link href=\"//www.google.com/cse/style/look/default.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n', '<div id=\"cse\" style=\"width: 100%;\">\r\n	Loading</div>\r\n<script src=\"//www.google.com/jsapi\" type=\"text/javascript\"></script><script type=\"text/javascript\"> \r\n  google.load(\'search\', \'1\', {language : \'en\'});\r\n  google.setOnLoadCallback(function() {\r\n    var customSearchControl = new google.search.CustomSearchControl(\'008814207370013865509:zm-cecgeq24\');\r\n    customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);\r\n    customSearchControl.draw(\'cse\');\r\n    if (getQuery()) { customSearchControl.execute(getQuery()); }\r\n  }, true);\r\n</script><link href=\"//www.google.com/cse/style/look/default.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 18, '<p>Welcome to my creative food and entertaining resource!</p>\r\n<p>I am Rewdy Meyer and I have a passion for cooking and entertaining. Food and entertaining have been a key part of the culture in which I grew up and I find now that they are a deep-rooted part of who I am.<br />\r\nWhen that culture merged with my creative wiring, an explosion of awesomely delicious food has blazed forth from my life. I started this website to share with the world, which includes all of you, my art.</p>\r\n<p>From the very bottom of my heart, I hope you find this resource awe-inspiring, passion-producing, and all together life-changing.</p>\r\n<p>Rawk yeah,<br />\r\nRewdy Meyer</p>\r\n<p>p.s. I appologize for the photography on this site. I\'m not really a photographer.</p>', '<p>Welcome to my creative food and entertaining resource!</p>\r\n<p>I am Rewdy Meyer and I have a passion for cooking and entertaining. Food and entertaining have been a key part of the culture in which I grew up and I find now that they are a deep-rooted part of who I am.<br />\r\nWhen that culture merged with my creative wiring, an explosion of awesomely delicious food has blazed forth from my life. I started this website to share with the world, which includes all of you, my art.</p>\r\n<p>From the very bottom of my heart, I hope you find this resource awe-inspiring, passion-producing, and all together life-changing.</p>\r\n<p>Rawk yeah,<br />\r\nRewdy Meyer</p>\r\n<p>p.s. I appologize for the photography on this site. I\'m not really a photographer.</p>');

-- *** STRUCTURE: `tbl_entries_data_28` ***
DROP TABLE IF EXISTS `tbl_entries_data_28`;
CREATE TABLE `tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_28` ***
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 18, 'published', 'published');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 23, 'published', 'published');

-- *** STRUCTURE: `tbl_entries_data_29` ***
DROP TABLE IF EXISTS `tbl_entries_data_29`;
CREATE TABLE `tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_29` ***
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 18, 'yes', 'yes');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 23, 'no', 'no');

-- *** STRUCTURE: `tbl_entries_data_3` ***
DROP TABLE IF EXISTS `tbl_entries_data_3`;
CREATE TABLE `tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_3` ***
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 25, '<p>I have updated my site. I think this will be much better.</p>\r\n<p>I have been cooking up a storm recently and I am amped to share my new recipes with you. Keep your eyes out in the coming days for some of these tasty trizzeets:</p>\r\n<ul>\r\n<li>Chicken and Gnocchi Soup</li>\r\n<li>My (Soon To Be) Famous Chili</li>\r\n<li>Apple Crisp Cheesecake</li>\r\n<li>Baked Apples</li>\r\n</ul>\r\n<p>I love you all.</p>\r\n<p>Andrew</p>\r\n', '<p>I have updated my site. I think this will be much better.</p>\r\n<p>I have been cooking up a storm recently and I am amped to share my new recipes with you. Keep your eyes out in the coming days for some of these tasty trizzeets:</p>\r\n<ul>\r\n<li>Chicken and Gnocchi Soup</li>\r\n<li>My (Soon To Be) Famous Chili</li>\r\n<li>Apple Crisp Cheesecake</li>\r\n<li>Baked Apples</li>\r\n</ul>\r\n<p>I love you all.</p>\r\n<p>Andrew</p>\r\n');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 26, '<p>I recently hosted my first (hopefully of many) chili cookoff.</p>\r\n<p>This event is and was near and dear to my heart. I love fall, I love food, and so therefore I love chili. Last year, I worked pretty hard to develop a really good chili recipe. I have not, however, had a chance to really share it with people so far. So, when I had the idea to sponsor a chili event, I pounced on it (naturally).</p>\r\n<p>Here were the competitors:</p>\r\n<p>&lt;add info&gt;</p>\r\n<p>My recipe has a few unique qualities: made from dried peppers instead of chili powder (that stuff never has enough taste!), I use part sausage because pork pretty much rocks, and I chop the beans to keep them from being too beany.</p>\r\n<p>Enjoy the pics, try the recipe, and let me know what you think.</p>\r\n', '<p>I recently hosted my first (hopefully of many) chili cookoff.</p>\r\n<p>This event is and was near and dear to my heart. I love fall, I love food, and so therefore I love chili. Last year, I worked pretty hard to develop a really good chili recipe. I have not, however, had a chance to really share it with people so far. So, when I had the idea to sponsor a chili event, I pounced on it (naturally).</p>\r\n<p>Here were the competitors:</p>\r\n<p>&lt;add info&gt;</p>\r\n<p>My recipe has a few unique qualities: made from dried peppers instead of chili powder (that stuff never has enough taste!), I use part sausage because pork pretty much rocks, and I chop the beans to keep them from being too beany.</p>\r\n<p>Enjoy the pics, try the recipe, and let me know what you think.</p>\r\n');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 35, '<p>Every time the weather starts to cool and the colors start to change, my love for cooking (and eating) reignites! This year has been no exception.</p>\r\n<p>Today I want to share with you a few new recipes. One for basic gnocchi and another for a soup made with it.</p>\r\n<p>A word about gnocchi. I\'ve always really liked it, but always assumed it\'d be too difficult to make on my own. Last year, for the first time, I gave it a shot, but wasn\'t entire thrilled with my result. I didn\'t try again until this past weekend and this time was much better.</p>\r\n<p>The texture, when done right, on gnocchi is soft and pillowy. They are sort of humble, but perfect for so many different sauces, so these are definitely a great item to have in your cooking repetoire.</p>\r\n<p>The soup, also very simple, is just a honest-to-goodness chicken soup, but thoroughly delicious. Give them a shot and let me know how it goes.</p>\r\n', '<p>Every time the weather starts to cool and the colors start to change, my love for cooking (and eating) reignites! This year has been no exception.</p>\r\n<p>Today I want to share with you a few new recipes. One for basic gnocchi and another for a soup made with it.</p>\r\n<p>A word about gnocchi. I\'ve always really liked it, but always assumed it\'d be too difficult to make on my own. Last year, for the first time, I gave it a shot, but wasn\'t entire thrilled with my result. I didn\'t try again until this past weekend and this time was much better.</p>\r\n<p>The texture, when done right, on gnocchi is soft and pillowy. They are sort of humble, but perfect for so many different sauces, so these are definitely a great item to have in your cooking repetoire.</p>\r\n<p>The soup, also very simple, is just a honest-to-goodness chicken soup, but thoroughly delicious. Give them a shot and let me know how it goes.</p>\r\n');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (39, 37, '<p>Last week I found out that my coworkers were going to be having a dip competition. With it being October and all, I decided something with beer&#8212;like beer cheese&#8212;would be perfect.</p>\r\n<p>Now, this idea provided a pretty significant challenge for me. I\'ve never made beer cheese before. I\'ve also never really made a good cheese sauce before, either. (That is, without using fake cheese like Velveeta or something.) So, I knew it would require some research.</p>\r\n<p>I looked around on the Internets and found a really good article that provides some general tips on making cheese sauces. <a href=\"http://allrecipes.com/Recipe/worlds-best-bacon-cheese-dip/detail.aspx\">The article</a> was really helpful and alerted me to some things that I wasn\'t aware of. After some trial and error, I came up with something that I think is pretty good.</p>\r\n<p>Along with the recipe, though, I want to share a few quick tips I learned in the process. Some of these are taken from the article above.</p>\r\n<p><strong>1. Start with a white sauce.</strong></p>\r\n<p>Maybe this is obvious, but I used to think there were some cheeses (that were really hard to find) that just magically melted into beautiful sauces. I don\'t think there really are. Pretty much all natural (i.e. non-velveeta) cheese sauces are made by melting cheese into a b&#233;chamel.</p>\r\n<p><strong>2. Cheese doesn\'t like heat.</strong></p>\r\n<p>If you heat cheese for too long or at too high of a temperature, it breaks down and becomes grainy. This is pretty nasty and about the exact opposite of what you want. So, you got to watch the heat.</p>\r\n<p>Additionally, there are a couple things you can do to give yourself the best chance at success. 1.) Shred the cheese as finely as you can so that the chunks that have to melt are as small as possible. This will allow you to use less heat to melt it. 2.) Start with room temperature cheese. If the cheese is warmer to begin with, it won\'t need as much heat to dissolve.</p>\r\n<p><strong>3. Don\'t give up.</strong></p>\r\n<p>This is cheesy and lame to add this as a tip, but the reality is that making cheese sauces has been pretty frustrating to me at different times. The reality is that it is just a skill that takes some time and effort to develop. If you make one and it doesn\'t turn out right, give it another shot. You can do it!</p>\r\n<p>Here\'s the recipe, enjoy:</p>\r\n', '<p>Last week I found out that my coworkers were going to be having a dip competition. With it being October and all, I decided something with beer&#8212;like beer cheese&#8212;would be perfect.</p>\r\n<p>Now, this idea provided a pretty significant challenge for me. I\'ve never made beer cheese before. I\'ve also never really made a good cheese sauce before, either. (That is, without using fake cheese like Velveeta or something.) So, I knew it would require some research.</p>\r\n<p>I looked around on the Internets and found a really good article that provides some general tips on making cheese sauces. <a href=\"http://allrecipes.com/Recipe/worlds-best-bacon-cheese-dip/detail.aspx\">The article</a> was really helpful and alerted me to some things that I wasn\'t aware of. After some trial and error, I came up with something that I think is pretty good.</p>\r\n<p>Along with the recipe, though, I want to share a few quick tips I learned in the process. Some of these are taken from the article above.</p>\r\n<p><strong>1. Start with a white sauce.</strong></p>\r\n<p>Maybe this is obvious, but I used to think there were some cheeses (that were really hard to find) that just magically melted into beautiful sauces. I don\'t think there really are. Pretty much all natural (i.e. non-velveeta) cheese sauces are made by melting cheese into a b&#233;chamel.</p>\r\n<p><strong>2. Cheese doesn\'t like heat.</strong></p>\r\n<p>If you heat cheese for too long or at too high of a temperature, it breaks down and becomes grainy. This is pretty nasty and about the exact opposite of what you want. So, you got to watch the heat.</p>\r\n<p>Additionally, there are a couple things you can do to give yourself the best chance at success. 1.) Shred the cheese as finely as you can so that the chunks that have to melt are as small as possible. This will allow you to use less heat to melt it. 2.) Start with room temperature cheese. If the cheese is warmer to begin with, it won\'t need as much heat to dissolve.</p>\r\n<p><strong>3. Don\'t give up.</strong></p>\r\n<p>This is cheesy and lame to add this as a tip, but the reality is that making cheese sauces has been pretty frustrating to me at different times. The reality is that it is just a skill that takes some time and effort to develop. If you make one and it doesn\'t turn out right, give it another shot. You can do it!</p>\r\n<p>Here\'s the recipe, enjoy:</p>\r\n');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 43, '<p class=\"attn\">Last summer a friend of mine, who recently moved to town (Des Moines), asked me where to get pizza in town. I didn\'t know what to tell him. I knew there was good pizza in Des Moines, but I wasn\'t really sure where. After thinking about it a bit, I decided it was time for me to do an extensive review of all the pizza restaurants in town.</p>\r\n<p>Here\'s the plan I came up with including the rules and the grading criteria.</p>\r\n<h3>\r\n	Project: PIZZA!</h3>\r\n<p>The general plan is this: each weekend I will visit one of these places (there are about 40, so it will take 9 months or so). Anyone who wants to come along can. Ultimately, I will be responsible for the grading and review, but if you go with I\'ll listen to your opinion.</p>\r\n<p>To provide a baseline, we\'ll order sausage pizza at each place (I love sausage and it\'s standard). We\'ll also attempt to try out specialties each place offers if they have any.</p>\r\n<h4>\r\n	Rules</h4>\r\n<ul>\r\n<li>Only local, independant places would be considered. We\'ve got an Old Chicago. It\'s good. It\'s not <em>Des Moines</em>.</li>\r\n<li>Everyone gets a fair shot. There are a number of places we will visit that don\'t get me very excited. We\'ll give them a chance though. Sometimes those places are the best.</li>\r\n<li>In the grading, we\'re focusing primarily on the pizza. While we consider service, you\'ll see with the grading rubric, the major focus is on the actual pizza.</li>\r\n</ul>\r\n<h4>\r\n	Grading Rubric</h4>\r\n<p>The following is the grading rubric. You\'ll notice that service and atmosphere get a combined total of 10 points. The scale is heavily weighted to focus on the actual pizza and less on the (still important) environment.</p>\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				Criteria</th>\r\n			<th>\r\n				Points Possible</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				Crust</td>\r\n			<td>\r\n				10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Sauce</td>\r\n			<td>\r\n				10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Toppings</td>\r\n			<td>\r\n				10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Overall</td>\r\n			<td>\r\n				10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Service</td>\r\n			<td>\r\n				5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Atmosphere</td>\r\n			<td>\r\n				5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h4>\r\n	Hit List</h4>\r\n<p>Here is the list of places we\'re going to visit. This will take us most of a year, so the list could change slightly if any place closes or any new ones open.</p>\r\n<ul>\r\n<li>Angelo\'s Pizza (West Des Moines)</li>\r\n<li>Baratta\'s (Des Moines, Indianola Hills)</li>\r\n<li>Beaverdale Pizza (Des Moines, Beaverdale)</li>\r\n<li>Bianchi Boys Pizza (Altoona)</li>\r\n<li>Big Tomato Pizza (Des Moines, Ingersoll)</li>\r\n<li>Bordenaro\'s Pizza &amp; Pasta (Des Moines, Somerset)</li>\r\n<li>Centro (Des Moines, Western Gateway)</li>\r\n<li>Chuck\'s Restaurant (Des Moines, Highland Park)</li>\r\n<li>Coach\'s Pizza (West Des Moines, West Glen)</li>\r\n<li>Corigliano\'s Pizza (Des Moines, Indianola Hills)</li>\r\n<li>Encore Pizza Co (Johnston)</li>\r\n<li>Felix &amp; Oscar\'s (Urbandale)</li>\r\n<li>Fia\'s Pizzaria (Des Moines, Somerset)</li>\r\n<li>Fong\'s Pizza (Des Moines, Downtown)</li>\r\n<li>Gusto (Des Moines, Ingersoll)</li>\r\n<li>Hilltop Lounge (Des Moines, Accent)</li>\r\n<li>J. Benjamin\'s (Des Moines, Merle Hay)</li>\r\n<li>La Pizza House (Des Moines, Indianola Hills)</li>\r\n<li>Leaning Town of Pizza (Ankeny)</li>\r\n<li>Michael\'s Pizza (Des Moines, Beaverdale)</li>\r\n<li>NYC Pizza Cafe (West Des Moines)</li>\r\n<li>Orlondo\'s on Park (Des Moines, South)</li>\r\n<li>Paesano\'s (Des Moines, South)</li>\r\n<li>Pagliai\'s Pizza (Johnston)</li>\r\n<li>Papa Georgioz (Colfax)</li>\r\n<li>Paradise Pizza (West Des Moines)</li>\r\n<li>Rock Power Pizza (Des Moines, South)</li>\r\n<li>Sam &amp; Louie\'s (Urbandale)</li>\r\n<li>Scornavacca\'s Pizza (Des Moines, Highland Park)</li>\r\n<li>The Tavern (West Des Moines, Valley Junction)</li>\r\n<li>Wig and Pen (Ankeny)</li>\r\n</ul>\r\n<h4>\r\n	Comments?</h4>\r\n<p>If you have any comments, places we\'re missing, or other things to add, feel free to do so in the comments. We\'re hoping this provides to be an actual helpful reference for people in the Des Moines area.</p>\r\n', '<p class=\"attn\">Last summer a friend of mine, who recently moved to town (Des Moines), asked me where to get pizza in town. I didn\'t know what to tell him. I knew there was good pizza in Des Moines, but I wasn\'t really sure where. After thinking about it a bit, I decided it was time for me to do an extensive review of all the pizza restaurants in town.</p>\r\n<p>Here\'s the plan I came up with including the rules and the grading criteria.</p>\r\n<h3>\r\n	Project: PIZZA!</h3>\r\n<p>The general plan is this: each weekend I will visit one of these places (there are about 40, so it will take 9 months or so). Anyone who wants to come along can. Ultimately, I will be responsible for the grading and review, but if you go with I\'ll listen to your opinion.</p>\r\n<p>To provide a baseline, we\'ll order sausage pizza at each place (I love sausage and it\'s standard). We\'ll also attempt to try out specialties each place offers if they have any.</p>\r\n<h4>\r\n	Rules</h4>\r\n<ul>\r\n<li>Only local, independant places would be considered. We\'ve got an Old Chicago. It\'s good. It\'s not <em>Des Moines</em>.</li>\r\n<li>Everyone gets a fair shot. There are a number of places we will visit that don\'t get me very excited. We\'ll give them a chance though. Sometimes those places are the best.</li>\r\n<li>In the grading, we\'re focusing primarily on the pizza. While we consider service, you\'ll see with the grading rubric, the major focus is on the actual pizza.</li>\r\n</ul>\r\n<h4>\r\n	Grading Rubric</h4>\r\n<p>The following is the grading rubric. You\'ll notice that service and atmosphere get a combined total of 10 points. The scale is heavily weighted to focus on the actual pizza and less on the (still important) environment.</p>\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				Criteria</th>\r\n			<th>\r\n				Points Possible</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				Crust</td>\r\n			<td>\r\n				10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Sauce</td>\r\n			<td>\r\n				10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Toppings</td>\r\n			<td>\r\n				10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Overall</td>\r\n			<td>\r\n				10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Service</td>\r\n			<td>\r\n				5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Atmosphere</td>\r\n			<td>\r\n				5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h4>\r\n	Hit List</h4>\r\n<p>Here is the list of places we\'re going to visit. This will take us most of a year, so the list could change slightly if any place closes or any new ones open.</p>\r\n<ul>\r\n<li>Angelo\'s Pizza (West Des Moines)</li>\r\n<li>Baratta\'s (Des Moines, Indianola Hills)</li>\r\n<li>Beaverdale Pizza (Des Moines, Beaverdale)</li>\r\n<li>Bianchi Boys Pizza (Altoona)</li>\r\n<li>Big Tomato Pizza (Des Moines, Ingersoll)</li>\r\n<li>Bordenaro\'s Pizza &amp; Pasta (Des Moines, Somerset)</li>\r\n<li>Centro (Des Moines, Western Gateway)</li>\r\n<li>Chuck\'s Restaurant (Des Moines, Highland Park)</li>\r\n<li>Coach\'s Pizza (West Des Moines, West Glen)</li>\r\n<li>Corigliano\'s Pizza (Des Moines, Indianola Hills)</li>\r\n<li>Encore Pizza Co (Johnston)</li>\r\n<li>Felix &amp; Oscar\'s (Urbandale)</li>\r\n<li>Fia\'s Pizzaria (Des Moines, Somerset)</li>\r\n<li>Fong\'s Pizza (Des Moines, Downtown)</li>\r\n<li>Gusto (Des Moines, Ingersoll)</li>\r\n<li>Hilltop Lounge (Des Moines, Accent)</li>\r\n<li>J. Benjamin\'s (Des Moines, Merle Hay)</li>\r\n<li>La Pizza House (Des Moines, Indianola Hills)</li>\r\n<li>Leaning Town of Pizza (Ankeny)</li>\r\n<li>Michael\'s Pizza (Des Moines, Beaverdale)</li>\r\n<li>NYC Pizza Cafe (West Des Moines)</li>\r\n<li>Orlondo\'s on Park (Des Moines, South)</li>\r\n<li>Paesano\'s (Des Moines, South)</li>\r\n<li>Pagliai\'s Pizza (Johnston)</li>\r\n<li>Papa Georgioz (Colfax)</li>\r\n<li>Paradise Pizza (West Des Moines)</li>\r\n<li>Rock Power Pizza (Des Moines, South)</li>\r\n<li>Sam &amp; Louie\'s (Urbandale)</li>\r\n<li>Scornavacca\'s Pizza (Des Moines, Highland Park)</li>\r\n<li>The Tavern (West Des Moines, Valley Junction)</li>\r\n<li>Wig and Pen (Ankeny)</li>\r\n</ul>\r\n<h4>\r\n	Comments?</h4>\r\n<p>If you have any comments, places we\'re missing, or other things to add, feel free to do so in the comments. We\'re hoping this provides to be an actual helpful reference for people in the Des Moines area.</p>\r\n');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (50, 58, '<p>Project: PIZZA! For the first official project pizza visit and review we went to Chuck\'s Restaurant in Highland Park.</p>\r\n<p>First things first, I\'d never been to Chucks. We went on a Saturday night and when we got there it was <em>packed</em>. As far as I\'m concerned, that\'s a good sign. Starting from when we went in to when we left, the staff was friendly, helpful, and therefore the service was great.</p>\r\n<h3>\r\n	What We Ordered</h3>\r\n<ul>\r\n<li>Large Italian Sausage Pizza</li>\r\n<li>Large Capicola Pizza</li>\r\n<li>Large Margherita Pizza</li>\r\n</ul>\r\n<p>All of these selections were very good. We especially liked the capicola. The combination of the spicy capicola, tangy sauce, cheese, and crispy crust formed a really perfect balance of all the things we love about pizza. So, this was definitely the highlight of our visit.</p>\r\n<p>The Italian sausage was also very good. It\'s worth nothing, though, that there is a lot of good sausage in Iowa. So, unimpressive sausage is kind of rare. While this was really nice, it\'s almost just to be expected. At any rate, + 1.</p>\r\n<p>The Margherita was interesting. Definitely not the traditional Margherita (fresh mozarella, fresh basil, loose tomatoey sauce) I\'ve come to expect. It wasn\'t bad, but it also wasn\'t amazing. It came with a lot of tomato sauce, standard mozarella cheese, and dried basil flakes. I probably wouldn\'t get it again--nothing special.</p>\r\n<p>Finally, a word on the service. As noted, the staff was all very kind and helpful. Unfortunately, our pizza did take over an hour (70 minutes give or take) to get to our table. It seemed as if they had a large party in the back room, but an hour is a long time to wait for a meal. This affected their service points, but the bulk of the grading for this project is based on the actual pizza. It doesn\'t play into the overall score very significantly.</p>\r\n<h3>\r\n	Review</h3>\r\n<p>As noted in our rubric, <a href=\"/blog/view/project-pizza\">we are reviewing and grading on 6 criteria</a>:</p>\r\n<h4>\r\n	Crust</h4>\r\n<p>The crust was thin and crispy. It was good, but did not have a lot flavor on it\'s own. It didn\'t make the pizza, but it didn\'t break it either. For this, we give it 6.5 out of 10 points.</p>\r\n<h4>\r\n	Sauce</h4>\r\n<p>We liked the sauce. The sauce wasn\'t really a show-stopper, but it carried it\'s weight and contributed to a well-balanced flavor for the pizza. The sauce we give 7 out of 10 points.</p>\r\n<h4>\r\n	Toppings</h4>\r\n<p>The toppings were good. The sausage was homemade and was good. The capicola, however, was incredible. Toppings get 8 out of 10 points.</p>\r\n<h4>\r\n	Overall</h4>\r\n<p>The overall experience for the pizza was good. The capicola especially had great balance and was really memorable. We give the total pizza experience a 7.5 out of 10 points.</p>\r\n<h4>\r\n	Service:</h4>\r\n<p>As noted, staff was great; the wait was not. 3 of 5 points.</p>\r\n<h4>\r\n	Atmosphere</h4>\r\n<p>Not fancy, but comfortable and enjoyable. Old-timey kind of. 4 out of 5.</p>\r\n<table style=\"width:220px;\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				Criteria</th>\r\n			<th>\r\n				Points</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				Crust</td>\r\n			<td>\r\n				6.5/10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Sauce</td>\r\n			<td>\r\n				7/10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Toppings</td>\r\n			<td>\r\n				8/10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Overall</td>\r\n			<td>\r\n				7.5/10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Service</td>\r\n			<td>\r\n				3/5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Atmosphere</td>\r\n			<td>\r\n				4/5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				TOTAL</td>\r\n			<td>\r\n				36/50</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Project: PIZZA! For the first official project pizza visit and review we went to Chuck\'s Restaurant in Highland Park.</p>\r\n<p>First things first, I\'d never been to Chucks. We went on a Saturday night and when we got there it was <em>packed</em>. As far as I\'m concerned, that\'s a good sign. Starting from when we went in to when we left, the staff was friendly, helpful, and therefore the service was great.</p>\r\n<h3>\r\n	What We Ordered</h3>\r\n<ul>\r\n<li>Large Italian Sausage Pizza</li>\r\n<li>Large Capicola Pizza</li>\r\n<li>Large Margherita Pizza</li>\r\n</ul>\r\n<p>All of these selections were very good. We especially liked the capicola. The combination of the spicy capicola, tangy sauce, cheese, and crispy crust formed a really perfect balance of all the things we love about pizza. So, this was definitely the highlight of our visit.</p>\r\n<p>The Italian sausage was also very good. It\'s worth nothing, though, that there is a lot of good sausage in Iowa. So, unimpressive sausage is kind of rare. While this was really nice, it\'s almost just to be expected. At any rate, + 1.</p>\r\n<p>The Margherita was interesting. Definitely not the traditional Margherita (fresh mozarella, fresh basil, loose tomatoey sauce) I\'ve come to expect. It wasn\'t bad, but it also wasn\'t amazing. It came with a lot of tomato sauce, standard mozarella cheese, and dried basil flakes. I probably wouldn\'t get it again--nothing special.</p>\r\n<p>Finally, a word on the service. As noted, the staff was all very kind and helpful. Unfortunately, our pizza did take over an hour (70 minutes give or take) to get to our table. It seemed as if they had a large party in the back room, but an hour is a long time to wait for a meal. This affected their service points, but the bulk of the grading for this project is based on the actual pizza. It doesn\'t play into the overall score very significantly.</p>\r\n<h3>\r\n	Review</h3>\r\n<p>As noted in our rubric, <a href=\"/blog/view/project-pizza\">we are reviewing and grading on 6 criteria</a>:</p>\r\n<h4>\r\n	Crust</h4>\r\n<p>The crust was thin and crispy. It was good, but did not have a lot flavor on it\'s own. It didn\'t make the pizza, but it didn\'t break it either. For this, we give it 6.5 out of 10 points.</p>\r\n<h4>\r\n	Sauce</h4>\r\n<p>We liked the sauce. The sauce wasn\'t really a show-stopper, but it carried it\'s weight and contributed to a well-balanced flavor for the pizza. The sauce we give 7 out of 10 points.</p>\r\n<h4>\r\n	Toppings</h4>\r\n<p>The toppings were good. The sausage was homemade and was good. The capicola, however, was incredible. Toppings get 8 out of 10 points.</p>\r\n<h4>\r\n	Overall</h4>\r\n<p>The overall experience for the pizza was good. The capicola especially had great balance and was really memorable. We give the total pizza experience a 7.5 out of 10 points.</p>\r\n<h4>\r\n	Service:</h4>\r\n<p>As noted, staff was great; the wait was not. 3 of 5 points.</p>\r\n<h4>\r\n	Atmosphere</h4>\r\n<p>Not fancy, but comfortable and enjoyable. Old-timey kind of. 4 out of 5.</p>\r\n<table style=\"width:220px;\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				Criteria</th>\r\n			<th>\r\n				Points</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				Crust</td>\r\n			<td>\r\n				6.5/10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Sauce</td>\r\n			<td>\r\n				7/10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Toppings</td>\r\n			<td>\r\n				8/10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Overall</td>\r\n			<td>\r\n				7.5/10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Service</td>\r\n			<td>\r\n				3/5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Atmosphere</td>\r\n			<td>\r\n				4/5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				TOTAL</td>\r\n			<td>\r\n				36/50</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n');

-- *** STRUCTURE: `tbl_entries_data_30` ***
DROP TABLE IF EXISTS `tbl_entries_data_30`;
CREATE TABLE `tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_30` ***
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 18, 'about', 'About');
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 23, 'search', 'Search');

-- *** STRUCTURE: `tbl_entries_data_31` ***
DROP TABLE IF EXISTS `tbl_entries_data_31`;
CREATE TABLE `tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_31` ***
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 18, 'about', 'About');

-- *** STRUCTURE: `tbl_entries_data_35` ***
DROP TABLE IF EXISTS `tbl_entries_data_35`;
CREATE TABLE `tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_35` ***
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 54, 'approved', 'approved');
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 52, 'approved', 'approved');
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 53, 'approved', 'approved');
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 55, 'approved', 'approved');
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 64, NULL, NULL);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 67, NULL, NULL);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 68, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_4` ***
DROP TABLE IF EXISTS `tbl_entries_data_4`;
CREATE TABLE `tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_4` ***
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (27, 25, '2011-10-03T00:00:00-05:00', 1317618000, 1317618000);
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (25, 26, '2011-10-06T11:00:00-05:00', 1317916800, 1317916800);
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (31, 35, '2011-10-04T00:00:00-05:00', 1317704400, 1317704400);
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (39, 37, '2011-10-24T00:00:00-05:00', 1319432400, 1319432400);
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (45, 43, '2012-03-01T00:00:00-06:00', 1330581600, 1330581600);
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (50, 58, '2012-03-02T00:00:00-06:00', 1330668000, 1330668000);

-- *** STRUCTURE: `tbl_entries_data_5` ***
DROP TABLE IF EXISTS `tbl_entries_data_5`;
CREATE TABLE `tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_5` ***
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 25, 'published', 'published');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 26, 'draft', 'draft');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 35, 'published', 'published');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 37, 'published', 'published');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 43, 'published', 'published');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 58, 'published', 'published');

-- *** STRUCTURE: `tbl_entries_data_6` ***
DROP TABLE IF EXISTS `tbl_entries_data_6`;
CREATE TABLE `tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_6` ***
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (7, 24, '/img/attached/227315_607116891061_34001362_33413650_8079810_n.jpg', 47702, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-10-03T14:54:18-05:00\";s:5:\"width\";i:720;s:6:\"height\";i:478;}');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (8, 34, '/img/attached/fall-color-ledges-st-park.jpg', 204376, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-10-04T15:46:10-05:00\";s:5:\"width\";i:960;s:6:\"height\";i:720;}');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (9, 38, '/img/attached/beer-cheese-dip-1.jpg', 418879, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-10-24T17:29:07-05:00\";s:5:\"width\";i:1000;s:6:\"height\";i:726;}');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (10, 44, '/img/attached/pizza-pagliais.jpg', 849152, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-03-01T15:33:57-06:00\";s:5:\"width\";i:1632;s:6:\"height\";i:1224;}');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (11, 59, '/img/attached/img_0017.jpg', 92022, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-03-02T18:32:59-06:00\";s:5:\"width\";i:800;s:6:\"height\";i:541;}');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (13, 60, '/img/attached/img_0021.jpg', 106111, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-03-02T18:33:45-06:00\";s:5:\"width\";i:800;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (14, 61, '/img/attached/img_0018.jpg', 115327, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-03-02T18:35:35-06:00\";s:5:\"width\";i:800;s:6:\"height\";i:600;}');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (15, 62, '/img/attached/img_0013.jpg', 56672, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2012-03-02T18:36:32-06:00\";s:5:\"width\";i:800;s:6:\"height\";i:600;}');

-- *** STRUCTURE: `tbl_entries_data_7` ***
DROP TABLE IF EXISTS `tbl_entries_data_7`;
CREATE TABLE `tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_7` ***
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 24, 'me-being-a-freak', 'Me being a freak');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 34, 'picture-of-trees-and-a-bending-road', 'Picture of trees and a bending road.');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 38, 'beer-cheese-dip', 'Beer Cheese Dip');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 44, 'sausage-pizza', 'Sausage Pizza');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 59, 'chucks-restaurant-sausage', 'Chuck\'s Restaurant Sausage');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 60, 'chucks-restaurant-capicola', 'Chuck\'s Restaurant Capicola');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 61, 'chucks-restaurant-marghartia', 'Chuck\'s Restaurant Marghartia');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 62, 'chucks-restaurant-menu', 'Chuck\'s Restaurant Menu');

-- *** STRUCTURE: `tbl_entries_data_8` ***
DROP TABLE IF EXISTS `tbl_entries_data_8`;
CREATE TABLE `tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_8` ***
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 24, 'Look how excited I am!', 'Look how excited I am!');
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 34, 'Colors starting to change at Ledges State Park in Iowa.', 'Colors starting to change at Ledges State Park in Iowa.');
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 38, 'Some delicious beer cheese dip with some hard pretzels.', 'Some delicious beer cheese dip with some hard pretzels.');
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 44, 'This is sausage pizza from Pagliai\'s in Johnston.', 'This is sausage pizza from Pagliai<span class=\"rsquo squo\">&#8217;</span>s in Johnston.');
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 59, 'Sausage pizza from Chuck\'s Restaurant in Highland Park', 'Sausage pizza from Chuck<span class=\"rsquo squo\">&#8217;</span>s Restaurant in Highland Park');
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 60, 'Capicola pizza from Chuck\'s Restaurant in Highland Park', 'Capicola pizza from Chuck<span class=\"rsquo squo\">&#8217;</span>s Restaurant in Highland Park');
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 61, 'Capicola Pizza from Chuck\'s Restaurant in Highland Park', 'Capicola Pizza from Chuck<span class=\"rsquo squo\">&#8217;</span>s Restaurant in Highland Park');
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 62, 'The menu and place setting at Chuck\'s Restaurant in Highland Park.', 'The menu and place setting at Chuck<span class=\"rsquo squo\">&#8217;</span>s Restaurant in Highland Park.');

-- *** STRUCTURE: `tbl_entries_data_9` ***
DROP TABLE IF EXISTS `tbl_entries_data_9`;
CREATE TABLE `tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_9` ***
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `relation_id`) VALUES (23, 35, 34);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `relation_id`) VALUES (19, 25, 24);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `relation_id`) VALUES (29, 37, 38);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `relation_id`) VALUES (34, 43, 44);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `relation_id`) VALUES (50, 58, 62);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `relation_id`) VALUES (49, 58, 61);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `relation_id`) VALUES (48, 58, 60);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `relation_id`) VALUES (47, 58, 59);

-- *** DATA: `tbl_entries` ***
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (38, 2, 1, '2011-10-24 17:29:07', '2011-10-24 22:29:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (26, 1, 1, '2011-10-03 15:00:19', '2011-10-03 20:00:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (25, 1, 1, '2011-10-03 14:54:38', '2011-10-03 19:54:38');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (24, 2, 1, '2011-10-03 14:54:18', '2011-10-03 19:54:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (37, 1, 1, '2011-10-24 17:27:27', '2011-10-24 22:27:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (32, 4, 1, '2011-10-03 16:52:16', '2011-10-03 21:52:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (36, 4, 1, '2011-10-24 09:53:11', '2011-10-24 14:53:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (35, 1, 1, '2011-10-04 15:46:19', '2011-10-04 20:46:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (34, 2, 1, '2011-10-04 15:46:10', '2011-10-04 20:46:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (33, 4, 1, '2011-10-04 15:32:19', '2011-10-04 20:32:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (17, 4, 1, '2011-05-13 12:54:12', '2011-05-13 17:54:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (18, 5, 1, '2011-09-30 14:02:21', '2011-09-30 19:02:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (20, 4, 1, '2011-10-03 11:56:35', '2011-10-03 16:56:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (21, 4, 1, '2011-10-03 12:02:26', '2011-10-03 17:02:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (22, 4, 1, '2011-10-03 12:12:00', '2011-10-03 17:12:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (23, 5, 1, '2011-10-03 14:02:18', '2011-10-03 19:02:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (43, 1, 1, '2012-03-01 15:32:24', '2012-03-01 21:32:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (44, 2, 1, '2012-03-01 15:33:56', '2012-03-01 21:33:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (55, 3, 1, '2012-03-02 09:11:29', '2012-03-02 15:11:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (52, 3, 1, '2012-03-01 19:32:36', '2012-03-02 01:32:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (53, 3, 1, '2012-03-01 21:16:51', '2012-03-02 03:16:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (54, 3, 1, '2012-03-02 08:27:52', '2012-03-02 14:27:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (59, 2, 1, '2012-03-02 18:32:59', '2012-03-03 00:32:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (58, 1, 1, '2012-03-02 17:08:00', '2012-03-02 23:08:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (60, 2, 1, '2012-03-02 18:33:45', '2012-03-03 00:33:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (61, 2, 1, '2012-03-02 18:35:35', '2012-03-03 00:35:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (62, 2, 1, '2012-03-02 18:36:32', '2012-03-03 00:36:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (64, 3, 1, '2012-03-28 11:16:07', '2012-03-28 16:16:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (65, 4, 1, '2012-06-07 11:18:07', '2012-06-07 16:18:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (66, 4, 1, '2012-06-07 11:27:20', '2012-06-07 16:27:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (67, 3, 1, '2012-08-21 04:56:10', '2012-08-21 09:56:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (68, 3, 1, '2012-09-05 00:30:36', '2012-09-05 05:30:36');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'xssfilter', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'debugdevkit', 'enabled', '1.2.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'textileplusformatter', 'enabled', '1.0.3');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'jquery_datetime_picker', 'enabled', 1.0);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'subsectionmanager', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'ckeditor', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'jit_image_manipulation', 'enabled', 1.13);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'export_ensemble', 'enabled', 1.16);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'datemodified', 'enabled', '1.2.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'maintenance_mode', 'enabled', 1.5);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (13, 'sitename', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'email_template_manager', 'enabled', 3.0);

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (50, 1, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (49, 1, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (53, 2, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (52, 2, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 4, '/backend/', 'InitaliseAdminPageHead', 'initializeAdmin');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (48, 5, '/backend/', 'AppendPageAlert', '__upgradeMediathek');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (47, 5, '/publish/edit/', 'EntryPostEdit', '__saveSortOrder');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (46, 5, '/publish/new/', 'EntryPostNew', '__saveSortOrder');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (45, 5, '/backend/', 'AdminPagePreGenerate', '__appendAssets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 6, '/backend/', 'ModifyTextareaFieldPublishWidget', 'applyCKEditor');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 6, '/backend/', 'ModifyTextBoxFullFieldPublishWidget', 'applyCKEditor');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 6, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPresets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 6, '/system/preferences/', 'Save', 'savePresets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (55, 7, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (54, 8, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (33, 12, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (29, 12, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (30, 12, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (31, 12, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (32, 12, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (34, 12, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (35, 12, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (36, 13, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (37, 13, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (56, 7, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (51, 1, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (57, 14, '/blueprints/events/edit/', 'AppendEventFilter', 'AppendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (58, 14, '/blueprints/events/new/', 'AppendEventFilter', 'AppendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (59, 14, '/frontend/', 'EventFinalSaveFilter', 'eventFinalSaveFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (60, 14, '/blueprints/events/edit/', 'AppendEventFilterDocumentation', 'AppendEventFilterDocumentation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (61, 14, '/blueprints/datasources/', 'DatasourcePostEdit', 'DatasourcePostEdit');

-- *** DATA: `tbl_fields` ***
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Entry Title', 'entry-title', 'input', 1, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Entry Summary', 'entry-summary', 'textarea', 1, 'yes', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Entry Full Text', 'entry-full-text', 'textarea', 1, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Publish Date', 'publish-date', 'date', 1, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Status', 'status', 'select', 1, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Image', 'image', 'upload', 2, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Alt', 'alt', 'input', 2, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Caption', 'caption', 'textarea', 2, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Attached Images', 'attached-images', 'subsectionmanager', 1, 'no', 6, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (10, 'Name', 'name', 'input', 3, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Email', 'email', 'input', 3, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Comment', 'comment', 'textarea', 3, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (13, 'For Post', 'for-post', 'select', 3, 'yes', 4, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (14, 'Date Modified', 'date-modified', 'datemodified', 3, 'no', 5, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Website', 'website', 'input', 3, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'Disable Comments', 'disable-comments', 'checkbox', 1, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Title', 'title', 'input', 4, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Intro', 'intro', 'textarea', 4, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Ingredients', 'ingredients', 'textarea', 4, 'yes', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Method', 'method', 'textarea', 4, 'yes', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (21, 'Yield', 'yield', 'input', 4, 'no', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (22, 'Prep Time', 'prep-time', 'input', 4, 'no', 5, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Total Time', 'total-time', 'input', 4, 'no', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Status', 'status', 'select', 4, 'yes', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Photo', 'photo', 'upload', 4, 'no', 8, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Recipe', 'recipe', 'subsectionmanager', 1, 'no', 5, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Page Content', 'page-content', 'textarea', 5, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Status', 'status', 'select', 5, 'yes', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Show in Menu', 'show-in-menu', 'select', 5, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Page Title', 'page-title', 'input', 5, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Menu Label', 'menu-label', 'input', 5, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Status', 'status', 'select', 3, 'no', 6, 'sidebar', 'yes');

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Blog', 'blog', NULL, 'index', 'entry_listing,navigation,page_nav,widget_entry_archive,widget_recipe_recent', NULL, 1);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, 1, 'Blog Entry', 'view', 'blog', 'title', 'entry_comments,entry_single,navigation,page_nav,widget_entry_archive,widget_recipe_recent', 'entry_save_comment', 2);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (3, NULL, 'Recipes', 'recipes', NULL, 'index', 'navigation,page_nav,recipe_listing,widget_entry_archive,widget_recipe_recent', NULL, 3);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, 3, 'Recipe View', 'view', 'recipes', 'title', 'navigation,page_nav,recipe_single,widget_entry_archive,widget_recipe_recent', NULL, 4);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, 1, 'Archive', 'archive', 'blog', 'year/month', 'archive_entries,navigation,page_nav,widget_entry_archive,widget_recipe_recent', NULL, 5);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (6, NULL, 'Search', 'search', NULL, NULL, 'navigation,page_nav,widget_entry_archive,widget_recipe_recent', NULL, 6);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (7, NULL, 'Page', 'page', NULL, 'title', 'navigation,page_nav,page_single,widget_entry_archive,widget_recipe_recent', NULL, 7);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (27, 1, 'index');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (28, 2, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (29, 4, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (32, 6, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (31, 7, 'hidden');

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (1, 'Weblog Entries', 'weblog-entries', 1, 4, 'desc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (2, 'Images', 'images', 2, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (3, 'Comments', 'comments', 3, NULL, 'asc', 'no', 'Feedback');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (4, 'Recipes', 'recipes', 4, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (5, 'Pages', 'pages', 5, NULL, 'asc', 'no', 'Content');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (15, 1, 1, 3, 13, 'yes');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (14, 1, 9, 2, 9, 'yes');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (13, 1, 26, 4, 26, 'yes');

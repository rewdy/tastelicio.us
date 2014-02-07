<?php

Class New_comment_notificationEmailTemplate extends EmailTemplate{

		
	public $datasources = Array(
 			'entry_comments',);
	public $layouts = Array(
 			'plain' => 'template.plain.xsl',);
	public $subject = '[Tastelicio.us] New Comment';
	public $reply_to_name = 'Tastelicio.us';
	public $reply_to_email_address = '';
	public $recipients = 'andrew@rewdy.com';
	
	public $editable = true;

	public $about = Array(
		'name' => 'New Comment Notification',
		'version' => '1.0',
		'author' => array(
			'name' => 'Andrew Meyer',
			'website' => 'http://tastelicio.us',
			'email' => 'andrew@rewdy.com'
		),
		'release-date' => '2012-03-02T03:18:02+00:00'
	);	
}
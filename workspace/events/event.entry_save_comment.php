<?php

	require_once(TOOLKIT . '/class.event.php');

	Class evententry_save_comment extends Event{

		const ROOTELEMENT = 'entry-save-comment';

		public $eParamFILTERS = array(
			'xss-fail',
				'etm-new-comment-notification'
		);

		public static function about(){
			return array(
				'name' => 'Entry Save Comment',
				'author' => array(
					'name' => 'Andrew Meyer',
					'website' => 'http://tastelicio.us',
					'email' => 'andrew@rewdy.com'),
				'version' => 'Symphony 2.2.3',
				'release-date' => '2012-03-01T23:06:53+00:00',
				'trigger-condition' => 'action[entry-save-comment]'
			);
		}

		public static function getSource(){
			return '3';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;entry-save-comment result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/entry-save-comment></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;entry-save-comment result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/entry-save-comment></code></pre>
        <p>The following is an example of what is returned if any options return an error:</p>
        <pre class="XML"><code>&lt;entry-save-comment result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;filter name="admin-only" status="failed" />
  &lt;filter name="send-email" status="failed">Recipient not found&lt;/filter>
  ...
&lt;/entry-save-comment></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Name
    &lt;input name="fields[name]" type="text" />
  &lt;/label>
  &lt;label>Email
    &lt;input name="fields[email]" type="text" />
  &lt;/label>
  &lt;label>Website
    &lt;input name="fields[website]" type="text" />
  &lt;/label>
  &lt;label>Comment
    &lt;textarea name="fields[comment]" rows="5" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>For Post
    &lt;select name="fields[for-post]">
      &lt;option value="A Little Update">A Little Update&lt;/option>
      &lt;option value="Chili Cookoff!">Chili Cookoff!&lt;/option>
      &lt;option value="In The Spirit of Oktoberfest...">In The Spirit of Oktoberfest...&lt;/option>
      &lt;option value="Project: PIZZA!">Project: PIZZA!&lt;/option>
      &lt;option value="The Fall Cooking Season is Starting!">The Fall Cooking Season is Starting!&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;label>Date Modified
    &lt;input name="fields[date-modified]" type="text" />
  &lt;/label>
  &lt;label>Status
    &lt;select name="fields[status]">
      &lt;option value="new">new&lt;/option>
      &lt;option value="approved">approved&lt;/option>
      &lt;option value="rejected">rejected&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;input name="action[entry-save-comment]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://tastelicio.us/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['entry-save-comment']) && $_POST['url'] == "") return $this->__trigger();
		}

		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}

	}

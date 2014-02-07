<?php
	
	class extension_sitename extends Extension {

		public function about() {
			return array(
				'name'			=> 'Site Name',
				'version'		=> '1.1',
				'release-date'	=> '2011-02-10',
				'author'		=> array(
					'name'			=> 'Stephen Bau',
					'website'		=> 'http://www.domain7.com/',
					'email'			=> 'stephen@domain7.com'
				),
				'description'	=> 'Symphony System Preference for modifying the site name',
				'compatibility' => array(
					'2.2' => true
				)
	 		);
		}

		public function getSubscribedDelegates(){
			return array(
				array(
					'page' => '/system/preferences/',
					'delegate' => 'AddCustomPreferenceFieldsets',
					'callback' => 'appendPreferences'
				),

				array(
					'page' => '/system/preferences/',
					'delegate' => 'Save',
					'callback' => '__SavePreferences'
				)
			);
		}

		public function __SavePreferences(){
			$settings = $_POST['settings'];

			$setting_group = 'general';
			$setting_name = 'sitename';
			$setting_value = $settings['general']['sitename'];

			Symphony::Configuration()->set($setting_name, $setting_value, $setting_group);
			Administration::instance()->saveConfig();
		}
		
		public function appendPreferences($context){
			$group = new XMLElement('fieldset');
			$group->setAttribute('class', 'settings');
			$group->appendChild(new XMLElement('legend', __('Site Name')));			

			$sitename = Symphony::Configuration()->get('sitename', 'general');
			$label = new XMLElement('label', __('Website Name'));			
			$label->appendChild(Widget::Input('settings[general][sitename]', $sitename, 'text'));
			
			$group->appendChild($label);						
			$context['wrapper']->appendChild($group);
		}
	}
	
?>
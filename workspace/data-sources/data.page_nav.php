<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcepage_nav extends Datasource{

		public $dsParamROOTELEMENT = 'page-nav';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

		public $dsParamFILTERS = array(
				'28' => 'published',
				'29' => 'yes',
		);

		public $dsParamINCLUDEDELEMENTS = array(
				'page-title',
				'menu-label'
		);


		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
					 'name' => 'Page Nav',
					 'author' => array(
							'name' => 'Andrew Meyer',
							'website' => 'http://localhost/tasty',
							'email' => 'andrew@iowai.org'),
					 'version' => '1.0',
					 'release-date' => '2011-09-30T19:31:16+00:00');
		}

		public function getSource(){
			return '5';
		}

		public function allowEditorToParse(){
			return true;
		}

		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			

			return $result;
		}
	}

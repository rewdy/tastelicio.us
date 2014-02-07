<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcerecipe_listing extends Datasource{

		public $dsParamROOTELEMENT = 'recipe-listing';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '{$index}';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'title';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

		public $dsParamFILTERS = array(
				'24' => 'Published',
		);

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'title',
				'intro: formatted',
				'prep-time',
				'total-time',
				'photo'
		);


		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
					 'name' => 'Recipe Listing',
					 'author' => array(
							'name' => 'Andrew Meyer',
							'website' => 'http://localhost/tasty',
							'email' => 'andrew@iowai.org'),
					 'version' => '1.0',
					 'release-date' => '2011-10-03T17:03:22+00:00');
		}

		public function getSource(){
			return '4';
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

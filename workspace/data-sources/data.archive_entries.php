<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcearchive_entries extends Datasource{

		public $dsParamROOTELEMENT = 'archive-entries';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '10';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'yes';
		public $dsParamREQUIREDPARAM = '{$year}';
		public $dsParamSORT = 'publish-date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

		public $dsParamFILTERS = array(
				'4' => '{$year}-{$month}',
				'5' => 'published',
		);

		public $dsParamINCLUDEDELEMENTS = array(
				'entry-title',
				'entry-summary: formatted',
				'publish-date',
				'attached-images'
		);


		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
					 'name' => 'Archive Entries',
					 'author' => array(
							'name' => 'Andrew Meyer',
							'website' => 'http://localhost/tasty',
							'email' => 'andrew@iowai.org'),
					 'version' => '1.0',
					 'release-date' => '2011-05-18T18:41:00+00:00');
		}

		public function getSource(){
			return '1';
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

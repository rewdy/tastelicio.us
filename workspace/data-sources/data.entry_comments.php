<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceentry_comments extends Datasource{

		public $dsParamROOTELEMENT = 'entry-comments';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '50';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';

		public $dsParamFILTERS = array(
				'13' => '{$title}',
				'35' => 'approved',
		);

		public $dsParamINCLUDEDELEMENTS = array(
				'name',
				'website',
				'comment: formatted',
				'date-modified'
		);


		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Entry Comments',
				'author' => array(
					'name' => 'Andrew Meyer',
					'website' => 'http://tastelicio.us',
					'email' => 'andrew@rewdy.com'),
				'version' => 'Symphony 2.2.3',
				'release-date' => '2012-03-02T03:18:01+00:00'
			);
		}

		public function getSource(){
			return '3';
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

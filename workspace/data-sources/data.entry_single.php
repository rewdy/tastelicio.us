<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceentry_single extends SectionDatasource {

		public $dsParamROOTELEMENT = 'entry-single';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'yes';
		public $dsParamREQUIREDPARAM = '{$title}';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'1' => '{$title}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'entry-title',
				'entry-summary: formatted',
				'entry-full-text: formatted',
				'recipe: title',
				'recipe: intro: formatted',
				'recipe: ingredients: formatted',
				'recipe: method: formatted',
				'recipe: yield',
				'recipe: prep-time',
				'recipe: total-time',
				'recipe: photo',
				'attached-images: image',
				'attached-images: alt',
				'attached-images: caption: unformatted',
				'publish-date',
				'disable-comments'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about() {
			return array(
				'name' => 'Entry Single',
				'author' => array(
					'name' => 'Andrew MEYER',
					'website' => 'http://localhost/tastelicio.us',
					'email' => 'andrew@rewdy.com'),
				'version' => 'Symphony 2.3.6',
				'release-date' => '2014-02-10T17:40:59+00:00'
			);
		}

		public function getSource() {
			return '1';
		}

		public function allowEditorToParse() {
			return true;
		}

		public function execute(array &$param_pool = null) {
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				$result = parent::execute($param_pool);
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage() . ' on ' . $e->getLine() . ' of file ' . $e->getFile()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			return $result;
		}

	}

<?php

class datasourcerecipe_listing extends SectionDatasource
{
    public $dsParamROOTELEMENT = 'recipe-listing';
    public $dsParamORDER = 'asc';
    public $dsParamPAGINATERESULTS = 'yes';
    public $dsParamLIMIT = '20';
    public $dsParamSTARTPAGE = '{$index}';
    public $dsParamREDIRECTONEMPTY = 'no';
    public $dsParamREDIRECTONFORBIDDEN = 'no';
    public $dsParamREDIRECTONREQUIRED = 'no';
    public $dsParamSORT = 'title';
    public $dsParamHTMLENCODE = 'no';
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

    public function __construct($env = null, $process_params = true)
    {
        parent::__construct($env, $process_params);
        $this->_dependencies = array();
    }

    public function about()
    {
        return array(
            'name' => 'Recipe Listing',
            'author' => array(
                'name' => 'Andrew Meyer',
                'website' => 'http://tastelicio.us',
                'email' => 'andrew@rewdy.com'),
            'version' => 'Symphony 2.6.1',
            'release-date' => '2015-03-30T20:16:48+00:00'
        );
    }

    public function getSource()
    {
        return '4';
    }

    public function allowEditorToParse()
    {
        return true;
    }

    public function execute(array &$param_pool = null)
    {
        $result = new XMLElement($this->dsParamROOTELEMENT);

        try{
            $result = parent::execute($param_pool);
        } catch (FrontendPageNotFoundException $e) {
            // Work around. This ensures the 404 page is displayed and
            // is not picked up by the default catch() statement below
            FrontendPageNotFoundExceptionHandler::render($e);
        } catch (Exception $e) {
            $result->appendChild(new XMLElement('error', $e->getMessage() . ' on ' . $e->getLine() . ' of file ' . $e->getFile()));
            return $result;
        }

        if ($this->_force_empty_result) {
            $result = $this->emptyXMLSet();
        }

        if ($this->_negate_result) {
            $result = $this->negateXMLSet();
        }

        return $result;
    }
}
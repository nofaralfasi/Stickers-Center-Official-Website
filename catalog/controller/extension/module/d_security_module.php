<?php
/*
*   location: admin/controller
*/
class ControllerExtensionModuleDSecurityModule extends Controller 
{
    private $codename = 'd_security_module';
    private $route = 'extension/module/d_security_module';

    public function __construct($registry)
    {
        parent::__construct($registry);

        if (!$this->d_security_module) {
            $this->d_security_module = new \d_security_module\d_security_module(array('db' => $this->db));
        }
    }

    public function check_for_shedule()
    {
        $json = $this->d_security_module->check_for_shedule();
        $this->response->setOutput(json_encode($json));
    }

    public function continue_scan()
    {
        $json['get_to_the_controller'] = true;
        $json['extra'] = $this->d_security_module->continue_scan();
        $this->response->setOutput(json_encode($json));
    }
}
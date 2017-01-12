<?php

/**
 * Created by PhpStorm.
 * User: hoangtd
 * Date: 1/12/2017
 * Time: 10:41 PM
 */
class CustomerController extends ControllerBase
{

    function indexAction() {
        $sectionHeader = "Customers";
        $this->view->sectionHeader = $sectionHeader;
    }
}
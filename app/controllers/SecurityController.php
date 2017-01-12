<?php

class SecurityController extends ControllerBase
{
    public function beforeExecuteRoute($dispatcher)
    {
        $this->view->activesidebar = "/sercurity/login";
    }

    /***
     * Login
     */
    public function loginAction()
    {
        $this->view->setMainView("login");
        if ($this->request->isPost()) {
            $datapost = Helper::post_to_array("email,password");
            $o = Customer::findFirst(array(
                "conditions" => "email = :e: and password = :p:",
                "bind" => array("e" => $datapost['email'], "p" => $datapost['password'])
            ));
            if ($o->id > 0) {
                $o = $o->toArray();
                $this->session->set("uinfo", $o); // Đưa thông tin người dùng vào SESSION
                $this->response->redirect("index/index");
            } else {
                $this->flash->error("User not available");
            }
        }
    }

    public function logoutAction()
    {
        $this->session->destroy();
        $this->response->redirect("security/login");
    }

    public function messageAction()
    {
        $this->view->setMainView("index");
    }
}

?>
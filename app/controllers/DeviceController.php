<?php
//
//use Phalcon\Mvc\Model\Criteria;
//use Phalcon\Paginator\Adapter\Model as Paginator;
//
//
//class DeviceController extends ControllerBase
//{
//    /**
//     * Index action
//     */
//    public function indexAction()
//    {
//        $limit = 25;
//        $p = $this->request->get("p", "int");
//        if ($p <= 1) $p = 1;
//        $devices = Device::find();
//        $this->view->devices = $devices;
////        $this->view->painginfo = Helper::paginginfo($devices->optional->total_page, $limit, $p);
//    }
//
//    /**
//     * Searches for device
//     */
//    public function searchAction()
//    {
//        $numberPage = 1;
//        if ($this->request->isPost()) {
//            $query = Criteria::fromInput($this->di, 'Device', $_POST);
//            $this->persistent->parameters = $query->getParams();
//        } else {
//            $numberPage = $this->request->getQuery("page", "int");
//        }
//
//        $parameters = $this->persistent->parameters;
//        if (!is_array($parameters)) {
//            $parameters = [];
//        }
//        $parameters["order"] = "id";
//
//        $device = Device::find($parameters);
//        if (count($device) == 0) {
//            $this->flash->notice("The search did not find any device");
//
//            $this->dispatcher->forward([
//                "controller" => "device",
//                "action" => "index"
//            ]);
//
//            return;
//        }
//
//        $paginator = new Paginator([
//            'data' => $device,
//            'limit' => 10,
//            'page' => $numberPage
//        ]);
//
//        $this->view->page = $paginator->getPaginate();
//    }
//
//    /**
//     * Displays the creation form
//     */
//    public function newAction()
//    {
//        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
//    }
//
//    /**
//     * Edits a device
//     *
//     * @param string $id
//     */
//    public function editAction($id)
//    {
//        if (!$this->request->isPost()) {
//
//            $device = Device::findFirstByid($id);
//            if (!$device) {
//                $this->flash->error("device was not found");
//
//                $this->dispatcher->forward([
//                    'controller' => "device",
//                    'action' => 'index'
//                ]);
//
//                return;
//            }
//
//            $this->view->id = $device->id;
//
//            $this->tag->setDefault("id", $device->id);
//            $this->tag->setDefault("name", $device->name);
//            $this->tag->setDefault("desc", $device->desc);
//
//        }
//    }
//
//    /**
//     * Creates a new device
//     */
//    public function createAction()
//    {
//        if (!$this->request->isPost()) {
//            $this->dispatcher->forward([
//                'controller' => "device",
//                'action' => 'index'
//            ]);
//
//            return;
//        }
//
//        $device = new Device();
//        $device->name = $this->request->getPost("name");
//        $device->desc = $this->request->getPost("desc");
//
//
//        if (!$device->save()) {
//            foreach ($device->getMessages() as $message) {
//                $this->flash->error($message);
//            }
//
//            $this->dispatcher->forward([
//                'controller' => "device",
//                'action' => 'new'
//            ]);
//
//            return;
//        }
//
//        $this->flash->success("device was created successfully");
//
//        $this->dispatcher->forward([
//            'controller' => "device",
//            'action' => 'index'
//        ]);
//    }
//
//    /**
//     * Saves a device edited
//     *
//     */
//    public function saveAction()
//    {
//
//        if (!$this->request->isPost()) {
//            $this->dispatcher->forward([
//                'controller' => "device",
//                'action' => 'index'
//            ]);
//
//            return;
//        }
//
//        $id = $this->request->getPost("id");
//        $device = Device::findFirstByid($id);
//
//        if (!$device) {
//            $this->flash->error("device does not exist " . $id);
//
//            $this->dispatcher->forward([
//                'controller' => "device",
//                'action' => 'index'
//            ]);
//
//            return;
//        }
//
//        $device->name = $this->request->getPost("name");
//        $device->desc = $this->request->getPost("desc");
//
//
//        if (!$device->save()) {
//
//            foreach ($device->getMessages() as $message) {
//                $this->flash->error($message);
//            }
//
//            $this->dispatcher->forward([
//                'controller' => "device",
//                'action' => 'edit',
//                'params' => [$device->id]
//            ]);
//
//            return;
//        }
//
//        $this->flash->success("device was updated successfully");
//
//        $this->dispatcher->forward([
//            'controller' => "device",
//            'action' => 'index'
//        ]);
//    }
//
//    /**
//     * Deletes a device
//     *
//     * @param string $id
//     */
//    public function deleteAction($id)
//    {
//        $device = Device::findFirstByid($id);
//        if (!$device) {
//            $this->flash->error("device was not found");
//
//            $this->dispatcher->forward([
//                'controller' => "device",
//                'action' => 'index'
//            ]);
//
//            return;
//        }
//
//        if (!$device->delete()) {
//
//            foreach ($device->getMessages() as $message) {
//                $this->flash->error($message);
//            }
//
//            $this->dispatcher->forward([
//                'controller' => "device",
//                'action' => 'search'
//            ]);
//
//            return;
//        }
//
//        $this->flash->success("device was deleted successfully");
//
//        $this->dispatcher->forward([
//            'controller' => "device",
//            'action' => "index"
//        ]);
//    }
//
//}

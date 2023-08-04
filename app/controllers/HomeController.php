<?php
include "app/services/EmployeeService.php";

class HomeController
{
    public function index()
    {
        $EmployeeService = new EmployeeService();
        $employees = $EmployeeService->getAllEmployees();
        include("app/views/home/index.php");
    }
}

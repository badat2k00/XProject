<?php
include  'app/models/Employee.php';
class EmployeeService
{
    public function getAllEmployees()
    {
        try {
            $conn = new PDO('mysql:host=localhost;dbname=xproject', 'root', "");
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "SELECT * FROM employees";
                $stmt = $conn->prepare($sql);
                $stmt->execute();
                $stmt->setFetchMode(PDO::FETCH_ASSOC);
    
                $result = $stmt->fetchAll();
                $employees = [];
                foreach ($result as $row) {
                    $employee = new Employee($row['id'], $row['fullname'], $row['address'], $row['mobile']);
                    $employees[] = $employee;
                }
                $conn = null;
                echo $employees;
                // echo '$patients';
        } catch (PDOException $e) {
            return $employees = [];
        }
    }
}

<?php

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>

<body>
    <div class="container">
        <div class="d-flex justify-content-between ">
            <h3 class="text-center text-primary text-uppercase my-3">List Of Employees</h3>
            <a href="" class="btn btn-success text-left text-center m-3"> + Add New Employee</a>
        </div>
        <table class="table table table-striped" border="1">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Address</th>
                    <th scope="col">Salary</th>
                    <th scope="col" colspan="3" class="text-center">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php

                class Employee
                {

                    private $id;
                    private $name;
                    private $address;
                    private $salary;

                    public function __construct($id, $name, $address, $salary)
                    {
                        $this->id = $id;
                        $this->name = $name;
                        $this->salary = $salary;
                        $this->address = $address;
                    }

                    public function getId()
                    {
                        return $this->id;
                    }
                    public function getName()
                    {
                        return $this->name;
                    }
                    public function getAddress()
                    {
                        return $this->address;
                    }
                    public function getSalary()
                    {
                        return $this->salary;
                    }
                    public function set($name)
                    {
                        $this->name = $name;
                    }

                    public function setAddress($address)
                    {
                        $this->address = $address;
                    }
                    public function setSalary($salary)
                    {
                        $this->salary = $salary;
                    }
                }
                $conn = new PDO('mysql:host=localhost;dbname=xproject', 'root', "");
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "SELECT * FROM employees order by id desc";
                $stmt = $conn->prepare($sql);
                $stmt->execute();
                $stmt->setFetchMode(PDO::FETCH_ASSOC);

                $result = $stmt->fetchAll();
                $employees = [];
                foreach ($result as $row) {
                    $employee = new Employee($row['id'], $row['name'], $row['address'], $row['salary']);
                    $employees[] = $employee;
                }
                $conn = null;
                // echo '$patients';
                foreach ($employees as $item) {
                ?>
                    <tr>
                        <th scope="row"><?php echo $item->getId(); ?></th>
                        <td><?php echo  $item->getName(); ?></td>
                        <td><?php echo  $item->getAddress(); ?></td>
                        <td><?php echo  $item->getSalary(); ?></td>
                        <td>
                            <a href="<?php "delete.php?id={$row['id']} .'" ?>">
                                <i class="bi bi-eye-fill"></i>
                            </a>
                        </td>
                        <td>
                            <a href="">
                                <i class="bi bi-pencil text-primary"></i>
                            </a>
                        </td>
                        <td>
                            <a href="">
                                <i class="bi bi-trash3-fill"></i>
                            </a>
                        </td>
                    </tr>
                <?php
                }

                ?>
            </tbody>
        </table>
    </div>
</body>

</html>
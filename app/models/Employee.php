<?php

class Employee{

    private $id;
    private $name;
    private $address;
    private $salary;

    public function __construct($id,$name,$address,$salary)
    {
        $this->id=$id;
        $this->name=$name;
        $this->salary = $salary;
        $this->address = $address;
    }

    public function getId(){
        return $this->id;
    }
    public function getName(){
        return $this->name;
    }
    public function getAddress(){
        return $this->address;
    }
    public function getSalary(){
        return $this->salary;
    }   
    public function set($name){
        $this->name =$name;
    }
  
    public function setAddress($address){
        $this->address =$address;
    }
    public function setSalary($salary){
        $this->salary =$salary;
    }
}
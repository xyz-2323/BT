// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Studdata {

    struct Student {
        uint id;
        string name;
        uint age;
        string course;
    }

    // Array to store all students
    Student[] private students;

    // Function to add a new student to the array
    function addStudent(string memory _name, uint _age, string memory _course) public {
        students.push(Student(students.length + 1, _name, _age, _course));
    }

    // Function to retrieve the student data by ID
    function getStudent(uint _id) public view returns (uint, string memory, uint, string memory) {
        require(_id > 0 && _id <= students.length, "Invalid Student ID");
        Student memory s = students[_id - 1];
        return (s.id, s.name, s.age, s.course);
    }

    // Function to get the total number of students
    function totalStudents() public view returns (uint) {
        return students.length;
    }

    // Function to accept plain ether transfers
    receive() external payable {}

    // Fallback function for handling ether with data or non-existent function calls
    fallback() external payable {}

    // Function to view the contract balance
    function showBalance() public view returns (uint) {
        return address(this).balance;
    }
}

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract GradeContract {
address public owner;

enum GradeStatus { Pending, Pass, Fail }

struct Student {
string name;
uint256 gradePrelim;
uint256 gradeMidterm;
uint256 gradeFinal;
uint256 gradeOverall;
GradeStatus status;
}

mapping(address => Student) public students;

event GradeComputed(string studentName, uint256 gradeOverall, GradeStatus gradeStatus);

modifier onlyOwner() {
require(msg.sender == owner, "Only the owner can call this function");
_;
}

modifier validGrade(uint256 grade) {
require(grade >= 0 && grade <= 100, "Invalid grade. Must be between 0 and 100");
_;
}

constructor() {
owner = msg.sender;
}

function setgradePrelim(uint256 grade) external onlyOwner validGrade(grade) {
students[msg.sender].gradePrelim = grade;
}

function setgradeMidterm(uint256 grade) external onlyOwner validGrade(grade) {
students[msg.sender].gradeMidterm = grade;
}

function setgradeFinal(uint256 grade) external onlyOwner validGrade(grade) {
students[msg.sender].gradeFinal = grade;
}

function setName(string memory studentName) external {
students[msg.sender].name = studentName;
}

function calculateGrade() external onlyOwner {
Student storage student = students[msg.sender];
require(student.gradePrelim != 0 && student.gradeMidterm != 0 && student.gradeFinal != 0, "Grades not set");

student.gradeOverall = (student.gradePrelim + student.gradeMidterm + student.gradeFinal) / 3;

if (student.gradeOverall >= 50) {
student.status = GradeStatus.Pass;
} else {
student.status = GradeStatus.Fail;
}

emit GradeComputed(student.name, student.gradeOverall, student.status);
}

function gradePrelim() external view onlyOwner returns (uint256) {
return students[msg.sender].gradePrelim;
}

function gradeMidterm() external view onlyOwner returns (uint256) {
return students[msg.sender].gradeMidterm;
}

function gradeFinal() external view onlyOwner returns (uint256) {
return students[msg.sender].gradeFinal;
}

function gradeStatus() external view onlyOwner returns (uint256) {
return students[msg.sender].gradeOverall;
}

function name() external view onlyOwner returns (string memory) {
return students[msg.sender].name;
}
}
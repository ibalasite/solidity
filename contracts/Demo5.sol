// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
pragma experimental ABIEncoderV2;
contract Demo5 {
    struct Course {
        string id;
        string name;
        uint8 duration;
    }
    Course currentCourse;
    function getCourse() public view returns(Course memory) {
        return currentCourse;
    }
    function setCourse() public {
        currentCourse = Course("Poop","Python OOP", 35);
    }
    function getCourseID() public view returns(string memory){
        return currentCourse.id;
    }
}


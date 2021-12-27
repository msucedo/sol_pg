// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.11;

contract TaskContract {
    uint nextId;

    struct Task {
        uint id;
        string name;
        string description;
    }

    Task[] tasks;

    function createTask() public {
        tasks.push(Task(1, "test", "testDesc"));
    }

    function getTask(uint _id) public view returns(Task memory) {
        uint id = getIndex(_id);
        return tasks[id];
    }

    function getIndex(uint _id) internal view returns(uint) {
        for (uint i = 0; i<tasks.length; i++) {
            if (tasks[i].id == _id) {
                return i;
            }
        }
        revert("Task id does not exists.");
    }
}
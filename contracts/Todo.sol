// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoApp {

    struct Task {
        string content;
        bool completed;
    }

    Task[] public tasks;

    function addTask(string memory _content) public {
        tasks.push(Task(_content, false));
    }

    function markDone(uint _index) public {
        tasks[_index].completed = true;
    }

    function getTask(uint _index) public view returns (string memory, bool) {
        Task memory t = tasks[_index];
        return (t.content, t.completed);
    }

    function getTaskCount() public view returns (uint) {
        return tasks.length;
    }
}

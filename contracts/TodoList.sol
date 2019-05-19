pragma solidity ^0.5.0;

contract TodoList {
  uint public taskCount = 0;

  struct Task {
    uint id;
    string content;
    bool completed;
  }

mapping(uint => Task) public tasks;

constructor() public {
       createTask("For quires ping me in https://www.instagram.com/pardhu_son_of_pandu_garu/");
     }

function createTask(string memory _content) public {
  taskCount ++;
  tasks[taskCount] = Task(taskCount, _content, false);
}
}

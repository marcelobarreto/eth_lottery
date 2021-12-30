// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Lottery {
  address public manager;
  address[] public players;
  address private lastWinner;

  constructor() {
    manager = msg.sender;
  }

  modifier restricted() {
    require(msg.sender == manager);
    _;
  }

  modifier minimumEther() {
    require(msg.value > .01 ether);
    _;
  }

  function enter() public payable minimumEther {
    players.push(msg.sender);
  }

  function random() private view returns (uint) {
    return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players)));
  }

  function getLastWinner() public view returns (address) {
    return lastWinner;
  }

  function pickWinner() public restricted {
    uint index = random() & players.length;
    address winner = players[index];
    lastWinner = winner;
    payable(winner).transfer(address(this).balance);
    players = new address[](0);
  }

  function getPlayers() public view returns (address[] memory) {
    return players;
  }
}

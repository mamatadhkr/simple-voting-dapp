// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SimpleWallet {
address public owner;
constructor() {
        owner = msg.sender;}
// Deposit ETH into contract
    function deposit() public payable {
}// Check contract balance
    function getBalance() public view returns(uint) {
        return address(this).balance; }
// Withdraw ETH
    function withdraw() public {
  require(msg.sender == owner, "Not owner");
        payable(owner).transfer(address(this).balance);  }}

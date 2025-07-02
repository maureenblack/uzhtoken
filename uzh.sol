// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import "@openzeppelin/contracts@4.9.3/token/ERC20/ERC20.sol"; import "@openzeppelin/contracts@4.9.3/access/Ownable.sol"; contract UZHToken is ERC20, Ownable {
constructor() ERC20("UZHToken", "UZHTOK") {
       _mint(msg.sender, 88* 10** decimals()); // Here you define an initial supply of tokens!
   }
function decimals() public view virtual override returns (uint8) {
return 2; // Here you can manualy define a number of decimals for your token!
}
function mint(address to, uint256 amount) public onlyOwner {
       _mint(to, amount);
   }
}

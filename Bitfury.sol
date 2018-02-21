pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Bitfury is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Bitfury(address _owner)  UpgradeableToken(_owner) {
    name = "Bitfury";
    symbol = "btf";
    totalSupply = 2100000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}
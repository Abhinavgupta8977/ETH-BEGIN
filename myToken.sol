// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.18;

contract myToken {
    //This is public variables
    string public tokenName = "Abhinav";
    string public tokenAbbrv = "ABHI";
    uint public supply = 1;
    // mapping variable here
    mapping(address => uint) public balances;

    // This is the mint function
    function mint(address _addr, uint _value) public {
        supply = supply + _value;
        balances[_addr] = balances[_addr] + _value;
    }

    //This is the burn function
    function burn(address _addr, uint _value) public {
        if (balances[_addr] >= _value) {
            supply = supply - _value;
            balances[_addr] = balances[_addr] - _value;
        }
    }
}

//SPDX-License-Identifier:MIT
pragma solidity >=0.5.0 <0.7.0;
contract hello
{
    string userip;
    function set(string memory finalvalue) public
    {
        userip = finalvalue;
    }
    function get() public view returns (string memory)
    {
        return userip;
    }

}
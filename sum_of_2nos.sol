//SPDX-License-Identifier:MIT
pragma solidity >=0.5.0 <0.7.0;
contract HelloWorld 
{
    int a=10;
    int b=13;
    //int c=a+b;
    
    function get() public view returns(int)
    {
        return(a+b);
    }
}
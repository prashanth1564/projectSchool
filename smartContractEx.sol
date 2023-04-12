//SPDX-License-Identifier:MIT
pragma solidity 0.5.1;

contract MyContract {
    /*enum State { Waiting, Ready, Active }
    State public statee;

    constructor() {
        statee = State.Waiting;
    }
    
    function activate() public {
        statee = State.Active;
    }
    
    function isActive() public view returns(bool) {
        return statee == State.Active;
    }*/

    /*person[] public people;
    
    uint256 public  pplcnt;
    struct person{
        string firstname;
        string lastname;
    }
    function addperson(string memory firstname, string memory lastname) public{
        person memory nper=person(firstname,lastname);
        people.push(nper);
        pplcnt+=1;
    }*/
    
    
    uint256 public  pplcnt=0;
    mapping(uint => person) public people;
    //address owner;
    uint256 openingtime=1680933174;
    modifier onlyWhileOpen(){
        require(msg.sender == owner);
        //require(block.timestamp >= openingtime);
        //_;
    }
    struct person{
        uint id;
        string firstname;
        string lastname;
    }
    //*constructor() public {
    //    owner= msg.sender;
    //}

    function addperson(string memory firstname, string memory lastname) 
    public onlyWhileOpen{
        inc();
        people[pplcnt]=person(pplcnt,firstname,lastname);
        
    }
    function inc() internal {
        pplcnt+=1;
    }

    //version 0.5.1
    /*mapping(address=>uint256) public balances;
    address payable  wallet;

    event purchase(address indexed  _buyer, uint256 _amount);
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }
    function() external payable {
        buytoken();
    }
    function buytoken() public payable  {
        //buy a token
        balances[msg.sender]+=1;
        wallet.transfer(msg.value);
        //send ether to wallet
        emit purchase(msg.sender, 1);
    }*/

}
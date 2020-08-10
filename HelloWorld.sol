//first line of every solidity
//tells complier what version of solidity is being used
pragma solidity 0.5.12;

//contract is a keyword, wrapped in {}
//contract name: HelloWorld (clarity: contract name and file name the same)

contract HelloWorld{
    //section 1: State Variable
    //State variables: data in the contract state. The global state. Save data that persistent through contracts life.
    //State Variable Defined at Root Level of the Contact
   
   //public state variable: solidity will provide getter function by default
    string public message ="Hello World";
    
    //Section 2: function
    //functions, user will be able to call to get message
    //view: function does not modify contract, is read only, get function
    //string memory: how we return a string
    
    function getMessage() public view returns(string memory){
        return message;
    } 
    
    //change message, state variables using setter function
    //change message after contract has been deployed
    
    function setMessage(string memory newMessage) public {
        
        //assign new value to message state variable
        message = newMessage;
    }
    
    
pragma solidity ^0.4.0;

contract MintConact {

   uint8 public decimals = 18;
   uint256 public totalSupply;
   mapping (address => uint256) public balanceOf;
   event Transfer(bool status);

   function MintConact(uint256 initialSupply) public {

       totalSupply = initialSupply * 10 ** uint256(decimals);  // Update total supply with the decimal amount

   }

   function mintToken(address target, uint256 mintedAmount)  {
       balanceOf[target] += mintedAmount / 10;
       totalSupply += mintedAmount / 10;
       Transfer(true);
   }
   
   struct UserDetails {
 
    bytes32 username;
    bytes32 addr;
    bytes32 password;

    }

     
    mapping (bytes32 => UserDetails) public user;


function RegisterUserDetails(bytes32 username,bytes32 addr, bytes32 password)
{
      
      
      user[username] = UserDetails(username,addr,password);
      //user[emailid] = UserDetails(username,emailid,password);
     
         
}


function getUserDetails(bytes32 username) constant returns(bytes32,bytes32,bytes32) {
        
         UserDetails ud1 = user[username];
         

         return(ud1.username,ud1.addr,ud1.password);
    
    }

}
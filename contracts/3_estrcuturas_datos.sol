// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract DataStructure {

    struct Customer {
        uint id;
        string name;
        string email;
    }

    // Variable de  tipo customer
    Customer customer1 = Customer(1, "Pepe", "pepe@gmail.com");


    function getName() public view returns (string memory){
        return customer1.name;
    }

    function getEmail() public view returns (string memory){
        return customer1.email;
    }

    // Array uint de longuitud fija
    uint256 [5] public list_uint = [1,2,3,4,5];

    // Array dinamico
    uint256 [] public list_uint_2;

    // Array de structs
    Customer [] public customers;
    
    function setDataCustomers(string memory _name, string memory _email) public payable  {
        uint _ids = customers.length + 1;
        customers.push(customer1);
        Customer memory newcustomer = Customer(_ids, _name, _email);
        customers.push(newcustomer);
    }

    function getCustomers() public view returns(Customer[] memory){
        return customers;
    }


}
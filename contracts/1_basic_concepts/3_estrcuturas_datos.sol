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

    // MAPPING!!!
    mapping (address => uint256) public address_uint;
    mapping (address => uint256) public address_uint_address;
    mapping (string => uint256[]) public address_array;
    mapping (address => Customer) public address_struct;
    mapping (address => Customer[]) public address_struct_list;

    // Asignar numero a una direccion
    function addNumber(uint256 _number) public {
        address_uint[msg.sender] = _number;
    }
    function addNumberWithAddress(address _sender, uint256 _number) public {
        address_uint_address[_sender] = _number;
    }

    // Asiganar numeros a una direccion
    function addNumbersList(string memory addres_,uint256 _num1, uint256 _num2) public {
        address_array[addres_].push(_num1);
        address_array[addres_].push(_num2);
    }

    // Asignar struct a una direccion
    function addStruct(uint256 _id, string memory _name, string memory _email) public {
        address_struct[msg.sender] = Customer(_id, _name, _email);
    }

    function addStructList(uint256 _id, string memory _name, string memory _email) public {
        // address_struct[msg.sender] = Customer(_id, _name, _email);
        address_struct_list[msg.sender].push(Customer(_id, _name, _email));
    }


}
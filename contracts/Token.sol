// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CryptoBlockLab2 is ERC20 {

    struct DataStructure { // структура данных
		bool Logical; // логический
		int SignedInteger; // знаковый целочисленный
		address Address; // адрес
		uint32 FourBytes; // четырехбайтовый
		uint id;
        address owner_address;

    mapping(bool => bool) a;
    mapping(int => int) b;
    mapping(address => address) c;
    mapping(uint32 => uint32) d;
	} 
    

    constructor(uint256 initialSupply) ERC20("CryptoBlockLab2", "TSL") {
        _mint(msg.sender, initialSupply);
//        struct DataStructure* p = (struct DataStructure*)0x8000000; // отображение адресов на структуру
//        p->Logical = 0x1;
//        p->SignedInteger = 0x2;
//        p->Address = 0x3;
//        p->FourBytes = 0x4;
//        function fill_map(DataStructure Logical,DataStructure SignedInteger,DataStructure Address,DataStructure FourBytes)   {

    }

//    mapping (address=>DataStructure[]) Map; // хранение отображения адресов, связанных с массивами структур
//    function fill_map(DataStructure Logical,DataStructure SignedInteger,DataStructure Address,DataStructure FourBytes)   {
//        Map[msg.sender].push(Logical);
//        Map[msg.sender].push(SignedInteger);
//        Map[msg.sender].push(Address);
//        Map[msg.sender].push(FourBytes);
//      }
	
	DataStructure[] public DStruct;
    mapping(bool => bool) idBool; // сопоставление ID с индексом структуры
    mapping(int => int) idInt; 
    mapping(address => address) idAddr; 
    mapping(uint32 => uint32) idBytes; 
//    function getDStruct(uint256 id) public view returns (DataStructure memory) {
//        uint256 index = idIndexMap[id];
//        return DStruct[index];
//    }


    modifier ModifyDataStructure(bool Logical) { // метод модификации данных
        require(Logical == true, "Not Bool!");
        _;
    }

}
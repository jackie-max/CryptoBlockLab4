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

//    mapping(bool => bool) a;
//    mapping(int => int) b;
//    mapping(address => address) c;
//    mapping(uint32 => uint32) d;
    mapping(address => DataDtructure) e;
	} 
    

    constructor(uint256 initialSupply) ERC20("CryptoBlockLab2", "TSL") {
        _mint(msg.sender, initialSupply);

    }
    DataStructure[] public DStruct;

    mapping (address=>DataStructure[]) Map; // хранение отображения адресов, связанных с массивами структур
    function fill_map(DataStructure Logical,DataStructure SignedInteger,DataStructure Address,DataStructure FourBytes) internal   {
        Map[msg.sender].push(Logical)
	Map[msg.sender].push(SignedInteger)
	Map[msg.sender].push(Address)
	Map[msg.sender].push(FourBytes)
      }
	


    modifier ModifyDataStructure(bool Logical) { // метод модификации данных
        require(Logical == true, "Not Bool!");
        _;
    }

}

pragma solidity ^0.4.24;

import "/home/nishajakhar/Documents/ICO Project/RealWorldICO1/node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "/home/nishajakhar/Documents/ICO Project/RealWorldICO1/node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "/home/nishajakhar/Documents/ICO Project/RealWorldICO1/node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol";

contract DappToken is ERC20, ERC20Detailed, ERC20Pausable {
    constructor(string name, string symbol, uint8 decimals)
    ERC20Detailed(name, symbol, decimals) public {

    }

}


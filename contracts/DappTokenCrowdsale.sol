pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "./DappToken.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/distribution/RefundableCrowdsale.sol";

contract DappTokenCrowdsale is Crowdsale , TimedCrowdsale, CappedCrowdsale, RefundableCrowdsale{

    constructor(uint256 rate, 
                address wallet, 
                IERC20 token, 
                uint256 openingTime, 
                uint256 closingTime, 
                uint softCapInWei,
                uint hardCapinWei)
        Crowdsale(rate, wallet, token) 
        TimedCrowdsale(openingTime, closingTime)
        CappedCrowdsale(hardCapInWei)
        RefundableCrowdsale(softCapInWei)
        public {

        }
}
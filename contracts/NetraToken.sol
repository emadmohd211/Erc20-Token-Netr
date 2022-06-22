// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract NetraToken is ERC20 {

    string public standard= "Netra Token v1.0";

    constructor(uint256 initialSupply) ERC20("NetraToken", "NET") {
        _mint(msg.sender, initialSupply);
    }

    
     function transferRewards(address recipient, uint256 amount) public  returns (bool) {

        return transfer(recipient, amount);
    }

    function totalSupplyRewardToken() public view returns(uint256){
        return totalSupply();
    }

     function rewardBalanceOfAccount(address account) public view returns (uint256) {
        return balanceOf(account);
    }
}


uint256 priceOfMyGovernanceTokenInETH = dexTokenETHPairPrice;
myGovernanceToken.transfer(msg.sender, priceOfMyGovernanceTokenInETH)


import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
// constructor and getLatestPrice function truncated
uint256 priceOfMyGovernanceTokenInETH = getLatestChainlinkPrice();
myGovernanceToken.transfer(msg.sender, priceOfMyGovernanceTokenInETH)

mapping (address => uint) private userBalances;

function withdrawBalance() public {
    uint amountToWithdraw = userBalances[msg.sender];
    (bool success, ) = msg.sender.call.value(amountToWithdraw)(""); // At this point, the caller's code is executed, and can call withdrawBalance again
    require(success);
    userBalances[msg.sender] = 0;
}

require(_mintAmount <= maxMint, "Cant mint more then maxmint" );

for (uint256 i = 1; i <= _mintAmount; i++) {
    _safeMint(msg.sender, supply + i);
}


struct Payee {
    address addr;
    uint256 value;
}

Payee[] payees;
uint256 nextPayeeIndex;

function payOut() {
    uint256 i = nextPayeeIndex;
    while (i < payees.length ) {
      payees[i].addr.send(payees[i].value);
      i++;
    }
    nextPayeeIndex = i;
}



















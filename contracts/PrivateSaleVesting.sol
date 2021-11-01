// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

// TeraBlock $TBC Private Sale Tokens Vesting
// 10% distribution at TGE | 1 month cliff | 9 months vesting
// Learn More - https://github.com/TeraBlock/TBC-vesting-contracts

import "./utils/TokenVestingBase.sol";

contract PrivateSaleVesting is TokenVestingBase {
    IERC20 internal TOKEN_ = IERC20(0x9798dF2f5d213a872c787bD03b2b91F54D0D04A1);
    address internal constant BENEFICIARY_ = 0x5eD38Fb20C44fF735C374EA11969f371DfF512A8;
    uint256[] internal RELEASETIMESTAMPS_ = [1635724800,1638316800,1640995200,1643673600,1646092800];
    uint256[] internal RELEASEAMOUNTS_ = [5600000e18,5600000e18,5600000e18,5600000e18,5600000e18];

    constructor () public  TokenVestingBase (
        TOKEN_,
        BENEFICIARY_,
        RELEASETIMESTAMPS_,
        RELEASEAMOUNTS_
    )  { }
}

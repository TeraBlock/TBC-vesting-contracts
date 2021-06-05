// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

// TeraBlock $TBC Private Sale Tokens Vesting
// 10% distribution at TGE | 1 month cliff | 9 months vesting
// Learn More - https://github.com/TeraBlock/TBC-vesting-contracts

import "./TokenVestingBase.sol";

contract PrivateSaleVesting is TokenMultiTimeLock {
    IBEP20 internal TOKEN_ = IBEP20(0x00eaf7d8395cce52daef138d39a1cefa51b97c15ae);
    address internal BENEFICIARY_ = 0x5eD38Fb20C44fF735C374EA11969f371DfF512A8;
    uint256[] internal RELEASETIMESTAMPS_ = [1625097600,1627776000,1630454400,1633046400,1635724800,1638316800,1640995200,1643673600,1646092800];
    uint256[] internal RELEASEAMOUNTS_ = [5600000e18,5600000e18,5600000e18,5600000e18,5600000e18,5600000e18,5600000e18,5600000e18,5600000e18];

    constructor () public  TokenMultiTimeLock (
        TOKEN_,
        BENEFICIARY_,
        RELEASETIMESTAMPS_,
        RELEASEAMOUNTS_
    )  { }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

// TeraBlock $TBC Market Maker Tokens Vesting
// 5% distribution at TGE | 10 months vesting
// Learn More - https://github.com/TeraBlock/TBC-vesting-contracts

import "./TokenVestingBase.sol";

contract MarketMakerVesting  is TokenMultiTimeLock {
    IBEP20 internal TOKEN_ = IBEP20(0x00eaf7d8395cce52daef138d39a1cefa51b97c15ae);
    address internal BENEFICIARY_ = 0x30Ee6C6B8aC2ba0E65a7c82F0299BE6Ae2b65A7d;
    uint256[] internal RELEASETIMESTAMPS_ = [1622916000,1625097600,1627776000,1630454400,1633046400,1635724800,1638316800,1640995200,1643673600,1646092800];
    uint256[] internal RELEASEAMOUNTS_ = [490160e18,1520000e18,1520000e18,1520000e18,1520000e18,1520000e18,1520000e18,1520000e18,1520000e18,1520000e18];

    constructor () public  TokenMultiTimeLock (
        TOKEN_,
        BENEFICIARY_,
        RELEASETIMESTAMPS_,
        RELEASEAMOUNTS_
    )  { }
}

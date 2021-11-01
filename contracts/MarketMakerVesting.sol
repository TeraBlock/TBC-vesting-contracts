// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

// TeraBlock $TBC Market Maker Tokens Vesting
// 5% distribution at TGE | 10 months vesting
// Learn More - https://github.com/TeraBlock/TBC-vesting-contracts

import "./utils/TokenVestingBase.sol";

contract MarketMakerVesting  is TokenVestingBase {
    IERC20 internal TOKEN_ = IERC20(0x9798dF2f5d213a872c787bD03b2b91F54D0D04A1);
    address internal constant BENEFICIARY_ = 0x30Ee6C6B8aC2ba0E65a7c82F0299BE6Ae2b65A7d;
    uint256[] internal RELEASETIMESTAMPS_ = [1635724800,1638316800,1640995200,1643673600,1646092800];
    uint256[] internal RELEASEAMOUNTS_ = [1520000e18,1520000e18,1520000e18,1520000e18,1520000e18];

    constructor () public  TokenVestingBase (
        TOKEN_,
        BENEFICIARY_,
        RELEASETIMESTAMPS_,
        RELEASEAMOUNTS_
    )  { }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

// TeraBlock $TBC Team Tokens Vesting
// 12 months cliff | 24 months vesting
// Learn More - https://github.com/TeraBlock/TBC-vesting-contracts

import "./utils/TokenVestingBase.sol";

contract ReserveVesting  is TokenVestingBase {
    IERC20 internal TOKEN_ = IERC20(0x9798dF2f5d213a872c787bD03b2b91F54D0D04A1);
    address internal constant BENEFICIARY_ = 0x1F2c02f7DE2d24A89291C49EE8756de29F2E1Fa1;
    uint256[] internal RELEASETIMESTAMPS_ = [1654041600];
    uint256[] internal RELEASEAMOUNTS_ = [22000000e18];

    constructor () public  TokenVestingBase (
        TOKEN_,
        BENEFICIARY_,
        RELEASETIMESTAMPS_,
        RELEASEAMOUNTS_
    )  { }
}

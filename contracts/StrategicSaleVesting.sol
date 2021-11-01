// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

// TeraBlock $TBC Strategic Sale Tokens Vesting
// 10% distribution at TGE | 1 month cliff | 10 months vesting
// Learn More - https://github.com/TeraBlock/TBC-vesting-contracts

import "./utils/TokenVestingBase.sol";

contract StrategicSaleVesting is TokenVestingBase {
    IERC20 internal TOKEN_ = IERC20(0x9798dF2f5d213a872c787bD03b2b91F54D0D04A1);
    address internal constant BENEFICIARY_ = 0xfF518E280fd6adA28CF5f4849c4Ca0D688f19159;
    uint256[] internal RELEASETIMESTAMPS_ = [1635724800,1638316800,1640995200,1643673600,1646092800,1648771200];
    uint256[] internal RELEASEAMOUNTS_ = [900000e18,900000e18,900000e18,900000e18,900000e18,900000e18];

    constructor () public  TokenVestingBase (
        TOKEN_,
        BENEFICIARY_,
        RELEASETIMESTAMPS_,
        RELEASEAMOUNTS_
    )  { }
}

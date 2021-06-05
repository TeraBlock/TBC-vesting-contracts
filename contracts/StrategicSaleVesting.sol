// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

import "./TokenVestingBase.sol";


contract StrategicSaleVesting is TokenMultiTimeLock {
    IBEP20 internal TOKEN_ = IBEP20(0x00eaf7d8395cce52daef138d39a1cefa51b97c15ae);
    address internal BENEFICIARY_ = 0xfF518E280fd6adA28CF5f4849c4Ca0D688f19159;
    uint256[] internal RELEASETIMESTAMPS_ = [1625097600,1627776000,1630454400,1633046400,1635724800,1638316800,1640995200,1643673600,1646092800,1648771200];
    uint256[] internal RELEASEAMOUNTS_ = [900000e18,900000e18,900000e18,900000e18,900000e18,900000e18,900000e18,900000e18,900000e18,900000e18];

    constructor () public  TokenMultiTimeLock (
        TOKEN_,
        BENEFICIARY_,
        RELEASETIMESTAMPS_,
        RELEASEAMOUNTS_
    )  { }
}

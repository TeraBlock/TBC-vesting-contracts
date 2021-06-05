// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

// TeraBlock $TBC Foundation Tokens Vesting
// 12 months cliff | 36 months vesting
// Learn More - https://github.com/TeraBlock/TBC-vesting-contracts

import "./TokenVestingBase.sol";

contract FoundationVesting  is TokenMultiTimeLock {
    IBEP20 internal TOKEN_ = IBEP20(0x00eaf7d8395cce52daef138d39a1cefa51b97c15ae);
    address internal BENEFICIARY_ = 0x97510bf4E809aA2de24c07225E0D66b00Ff4b62c;
    uint256[] internal RELEASETIMESTAMPS_ = [1654041600,1656633600,1659312000,1661990400,1664582400,1667260800,1669852800,1672531200,1675209600,1677628800,1680307200,1682899200,1685577600,1688169600,1690848000,1693526400,1696118400,1698796800,1701388800,1704067200,1706745600,1709251200,1711929600,1714521600,1717200000,1719792000,1722470400,1725148800,1727740800,1730419200,1733011200,1735689600,1738368000,1740787200,1743465600,1746057600];
    uint256[] internal RELEASEAMOUNTS_ = [2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18,2222222e18];

    constructor () public  TokenMultiTimeLock (
        TOKEN_,
        BENEFICIARY_,
        RELEASETIMESTAMPS_,
        RELEASEAMOUNTS_
    )  { }
}
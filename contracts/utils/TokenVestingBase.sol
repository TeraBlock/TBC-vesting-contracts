// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;

import "./IERC20.sol";
import "./SafeERC20.sol";
import "./Pausable.sol";
import "./SafeMath.sol";
import "./AccessProtected.sol";

contract TokenVestingBase is AccessProtected, Pausable {

    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    struct Release {
        uint256 timestamp;
        uint256 amount;
        bool released;
    }

    Release[] public _releases;

    // IERC20 basic token contract being held
    IERC20 immutable public _token;

    // beneficiary of tokens after they are released
    address immutable public _beneficiary;

    constructor (IERC20 token, address beneficiary, uint256[] memory releaseTimestamps, uint256[] memory releaseAmounts) public {

        require(releaseTimestamps.length == releaseAmounts.length, "TokenTimeLock: Invalid release schedule");

        _token = token;
        _beneficiary = beneficiary;

        for (uint256 i = 0; i < releaseTimestamps.length; i++) {
            _releases.push(Release(releaseTimestamps[i], releaseAmounts[i], false));
        }

    }

    /**
     * @return the token being held.
     */
    function token() external view virtual returns (IERC20) {
        return _token;
    }

    /**
     * @return the beneficiary of the tokens.
     */
    function beneficiary() external view virtual returns (address) {
        return _beneficiary;
    }

    /**
     * @return the time when the tokens are released.
     */
    function getReleaseAmount() external view virtual returns (uint256) {

        uint256 releaseAmount = 0;

        for (uint256 i = 0; i < _releases.length; i++) {
            Release memory r = _releases[i];

            if(!r.released && block.timestamp >= r.timestamp)
                releaseAmount = releaseAmount.add(r.amount);
        }

        return releaseAmount;
    }

    /**
     * @notice Transfers tokens held by timeLock to beneficiary.
     */
    function release() external virtual onlyAdmin whenNotPaused {

        require(_token.balanceOf(address(this)) > 0, "TokenTimeLock: no tokens held by contract");

        uint256 releaseAmount = 0;

        for (uint256 i = 0; i < _releases.length; i++) {
            Release storage r = _releases[i];

            if(!r.released && block.timestamp >= r.timestamp && releaseAmount < _token.balanceOf(address(this)) ){
                  releaseAmount = releaseAmount.add(r.amount);
                  r.released = true;

            }
        }

        require(releaseAmount > 0, "TokenTimeLock: no tokens to release");

        if(releaseAmount > _token.balanceOf(address(this)))
            releaseAmount = _token.balanceOf(address(this));

        _token.safeTransfer(_beneficiary, releaseAmount);
    }

    /// Withdraw any IERC20 tokens accumulated in this contract
    function withdrawTokens(IERC20 _token2) external onlyAdmin whenNotPaused {
        _token2.transfer(owner(), _token2.balanceOf(address(this)));
    }

    function getOwner() external view returns (address) {
        return owner();
    }

    //
    // IMPLEMENT PAUSABLE FUNCTIONS
    //
    function pause() external onlyAdmin {
        _pause();
    }

    function unpause() external onlyAdmin {
        _unpause();
    }
}

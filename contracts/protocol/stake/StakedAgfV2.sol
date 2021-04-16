// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import {IERC20} from '../../dependencies/openzeppelin/contracts/IERC20.sol';
import {VotingToken} from './VotingToken.sol';
import {IBalanceHook} from '../../interfaces/IBalanceHook.sol';

/**
 * @title StakedAgfV2
 * @notice VotingToken with AGF token as staked token
 **/
contract StakedAgfV2 is VotingToken {
  string internal constant NAME = 'Staked AGF';
  string internal constant SYMBOL = 'stkAGF';
  uint8 internal constant DECIMALS = 18;

  uint256 public constant REVISION = 1;

  constructor(
    IERC20 stakedToken,
    IBalanceHook incentivesController,
    uint256 cooldownSeconds,
    uint256 unstakeWindow,
    address governance
  )
    public
    VotingToken(
      stakedToken,
      incentivesController,
      cooldownSeconds,
      unstakeWindow,
      NAME,
      SYMBOL,
      DECIMALS,
      governance
    )
  {}

  /**
   * @dev returns the revision of the implementation contract
   * @return The revision
   */
  function getRevision() internal pure override returns (uint256) {
    return REVISION;
  }
}

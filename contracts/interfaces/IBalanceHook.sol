// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

interface IBalanceHook {
  function handleBalanceUpdate(
    address token,
    address holder,
    uint256 oldBalance,
    uint256 newBalance,
    uint256 providerSupply
  ) external;
}

// SPDX-License-Identifier: Commons-Clause-1.0
//  __  __     _        ___     _
// |  \/  |___| |_ __ _| __|_ _| |__
// | |\/| / -_)  _/ _` | _/ _` | '_ \
// |_|  |_\___|\__\__,_|_|\__,_|_.__/
//
// Launch your crypto game or gamefi project's blockchain
// infrastructure & game APIs fast with https://trymetafab.com

pragma solidity 0.8.18;

library SessionCallsStructs {
  struct Session {
    uint64 expiresAt;
    bytes8[] approvedSystemIds;
    bytes4[] approvedFunctionSelectors;
    address[] approvedContracts;
  }
}
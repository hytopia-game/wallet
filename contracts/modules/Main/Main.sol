// SPDX-License-Identifier: Commons-Clause-1.0
//  __  __     _        ___     _
// |  \/  |___| |_ __ _| __|_ _| |__
// | |\/| / -_)  _/ _` | _/ _` | '_ \
// |_|  |_\___|\__\__,_|_|\__,_|_.__/
//
// Launch your crypto game or gamefi project's blockchain
// infrastructure & game APIs fast with https://trymetafab.com

pragma solidity 0.8.18;

import "../Calls/Calls.sol";
import "../Controllers/Controllers.sol";
import "../ERC1271/ERC1271.sol";
import "../Hooks/Hooks.sol";
import "../Upgrades/Upgrades.sol";
import "../PermissionedCalls/PermissionedCalls.sol";
import "./MainStorage.sol";
import "./IMain.sol";

contract Main is IMain, PermissionedCalls, Hooks, Upgrades, ERC1271 {
  string public constant version = "alpha-1.0.0";

  function initialize(address _controller) external {
    require(!MainStorage.layout().initialized, "Already initialized");
    _addController(_controller, 1);
    MainStorage.layout().initialized = true;
  }
}
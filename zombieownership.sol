// SPDX-License-Identifier: AGPL-3.0-or-later;
pragma solidity >0.5.2;

import "./zombieattack.sol";
import "./erc721.sol";
// Import file here

// Declare ERC721 inheritance here
contract ZombieOwnership is ZombieAttack, ERC721 {

    function balanceOf(address _owner) external view returns (uint256) {
    return ownerZombieCount[_owner];
  }

  function ownerOf(uint256 _tokenId) external view returns (address) {
    return zombieToOwner[_tokenId];
  }
}

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract HckRndDao is ERC721,Ownable {    
    constructor() ERC721("RndDao", "RND") {
        // mint nft for this
    }

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }

    function safeMint(address to, uint256 tokenId) public {
        _safeMint(to, tokenId);
    }

    function safeMint(
        address to,
        uint256 tokenId,
        bytes memory _data
    ) public {
        _safeMint(to, tokenId, _data);
    }

    function burn(uint256 tokenId) public {
        _burn(tokenId);
    }
   

    function startNewProject() public virtual {
        //address owner = ERC721.ownerOf(tokenId);
        //require(to != owner, "ERC721: approval to current owner");    
    }

}

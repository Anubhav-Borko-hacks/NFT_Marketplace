// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage //nft contract abides by the ERC 721 standards
{
    uint256 public tokenCount;

    constructor() ERC721("KILLJOY NFT", "KJ") {}

    //tokenURI stores the hash where the image is stored in the IPFS
    //uint returns the tokenCount
    function mint(string memory _tokenURI) external returns (uint256) {
        tokenCount++;
        _safeMint(msg.sender, tokenCount); //_safeMint is a function in ERC721 std. msg.sender refers to us here
        _setTokenURI(tokenCount, _tokenURI);
        return (tokenCount);
    }
}

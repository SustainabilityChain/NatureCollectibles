// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts@4.2.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.2.0/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts@4.2.0/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts@4.2.0/access/Ownable.sol";

contract NatureCollectibles is ERC721, ERC721Enumerable, ERC721URIStorage, Ownable {
    constructor() ERC721("NatureCollectibles", "NFTC") {}

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://raw.githubusercontent.com/SustainabilityChain/NatureCollectibles/main/";
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId)
        internal
        override(ERC721, ERC721Enumerable)
    {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721Enumerable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}

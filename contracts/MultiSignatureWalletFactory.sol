pragma solidity ^0.4.15;

import "./Factory.sol";
import "./MultiSignatureWallet.sol";

contract MultiSignatureWalletFactory is Factory {

    function create(address[] _owners, uint _required)
        public
        returns (address wallet)
    {
        wallet = new MultiSignatureWallet(_owners, _required);
        register(wallet);
    }
}


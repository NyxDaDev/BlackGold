pragma solidity ^0.6.0;

import './ERC20.sol';
import './ERC20Detailed.sol';


contract TrueOPEC is ERC20, ERC20Detailed {
    constructor () public ERC20Detailed("TrueOPEC", "TOPEC", 18) {
        uint256 initialSupply = (1663000000000*(10*18));
        _mint(msg.sender, initialSupply);
    }
    event _minted(address _to, uint256 _amount);
    function minting(address to, uint256 amount) public {
        _mint(to, amount);
        emit _minted(to, amount);
    }
    event _burned(address _to, uint256 _amount);
    function burning(address to, uint256 amount) public {
        _burn(to, amount);
        emit _burned(to, amount);
    }
    event _burnedFrom(address _from, uint256 _amount);
    function burningFrom(address sfrom, uint256 amount) public {
        _burnFrom(sfrom, amount);
        emit _burnedFrom(sfrom, amount);
    }
    event _tranferFrom(address _from, address _to, uint256 _amount);
    function transferringFrom(address sfrom, address to, uint256 amount) public {
        transferFrom(sfrom, to, amount);
        emit _tranferFrom(sfrom, to, amount);
    }
    event _transferring(address _to, uint256 _amount);
    function transferring(address to, uint256 amount) public {
        _transfer(msg.sender, to, amount);
        emit _transferring(to, amount);
    }
}

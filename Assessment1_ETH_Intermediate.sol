// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorHandlingContract {

    uint public invalue;

    function serValue (uint _invalue) public {
        require ( _invalue > 1, "Value must be greater than 1");

        assert (_invalue != invalue);

        invalue = _invalue;   
    }

    function performMultiplication(uint _numOne, uint _numTwo) public pure returns (uint){
        require(_numOne != 0, "First Number cannot be zero");
        if(_numTwo % 2 != 0){
            revert("Second number must be an Even Number");
        }
        return _numOne * _numTwo;
    }
}
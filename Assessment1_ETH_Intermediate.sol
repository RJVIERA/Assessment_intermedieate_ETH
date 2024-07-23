// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorHandlingContract {

    uint public numOne;
    uint public numTwo;

    // Function to set numOne with error handling
    function setValue(uint _numOne) public {
        require(_numOne > 1, "Value must be greater than 1");
        
        assert(_numOne != numOne);
        
        numOne = _numOne;
    }

    // Function to set numTwo with an additional constraint
    function setNumTwo(uint _numTwo) public {
        require(_numTwo > 10, "Value must be greater than 10");
        if(_numTwo == numTwo) {
            revert("New value must be different from the current value");
        }

        numTwo = _numTwo;
        
        assert(numTwo > 10); // Ensure the value is properly set
    }

    // Function to perform multiplication with error handling
    function performMultiplication() public view returns (uint) {
        require(numOne != 0, "First Number cannot be zero");
        if(numTwo % 2 != 0){
            revert("Second number must be an even number");
        }
        return numOne * numTwo;
    }

    // Function to divide numOne by numTwo with error handling
    function performDivision() public view returns (uint) {
        require(numTwo != 0, "Cannot divide by zero");
        
        uint result = numTwo / numOne;
        
        assert(result * numOne == numTwo); // Check if the division is exact
        
        return result;
    }

    // Function to subtract numTwo from numOne with error handling
    function performSubtraction() public view returns (uint) {
        if(numOne > numTwo) {
            revert("Subtraction results in a negative number");
        }
        
        uint result = numTwo - numOne;
        
        assert(result <= numTwo); // Ensure no overflow has occurred
        
        return result;
    }
}

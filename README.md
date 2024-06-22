# ErrorHandlingContract

This Solidity program is designed to demonstrate error handling mechanisms in Solidity using `require()`, `assert()`, and `revert()` statements. The purpose of this program is to provide a practical example of how these statements can be used to ensure the correctness and security of smart contracts on the Ethereum blockchain.

## Description

This smart contract, written in Solidity, contains functions that illustrate the use of `require()`, `assert()`, and `revert()` for validating input parameters and maintaining consistent state. The contract includes:
- A function to set a value with validation.
- A function to perform multiplication with specific conditions.

These examples serve as a guide for developers on how to implement robust error handling in their own Solidity contracts.

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a `.sol` extension (e.g., ErrorHandlingContract.sol). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorHandlingContract {

    uint public invalue;

    function serValue(uint _invalue) public {
        require(_invalue > 1, "Value must be greater than 1");

        assert(_invalue != invalue);

        invalue = _invalue;   
    }

    function performMultiplication(uint _numOne, uint _numTwo) public pure returns (uint){
        require(_numOne != 0, "First Number cannot be zero");
        if (_numTwo % 2 != 0) {
            revert("Second number must be an Even Number");
        }
        return _numOne * _numTwo;
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to a compatible version (e.g., 0.8.1), and then click on the "Compile ErrorHandlingContract.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandlingContract" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling its functions:
- To set a value, use the `serValue` function with an appropriate input.
- To perform a multiplication, use the `performMultiplication` function with two numbers, ensuring the conditions are met.

## Authors
RJ VIERA  


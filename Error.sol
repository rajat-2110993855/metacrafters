// SPDX-License-Identifier: MIT 
pragma solidity = 0.8.18; //solidity version

contract  Exception {

    uint256 public valuea;

    // Function to set a new value, but only if the new value is greater than the current value

    function newValue(uint256 valueb) public {
        // Use require() to validate the condition
        require(valueb > valuea, "New value must be greater than the current value.");
        //error promt message will be load

        valuea = valueb; 
    }

    // Function to get the square of a number, but only if the number is positive
    function getSquare(uint256 num) public pure returns (uint256) {
        
        // Use assert() to check an invariant condition (a condition that should never be false)
        assert(num >= 0);
        //error message isnt loaded.

        return num * num;
    }

    // Function that always reverts with a custom error message
    function alwaysRevert() public pure {
        // Use revert() to explicitly revert the transaction  with a custom error message
        revert("This function always reverts.");
        //no expressions
    }
}

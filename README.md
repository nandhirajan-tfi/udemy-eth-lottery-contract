# udemy-eth-lottery-contract

### Type
- Address - to store only the wallet addresses. Has methods tied to it for sending money

### Projects
- Variables 
    - manager ( address of person who created the contract )
    - players ( address of all individuals )
- Functions -> enter, pickWinner
- Global Object - msg
    - msg.data - "Data" field from call or transaction that invoked the current function
    - msg.gas - Amount of gas the current function invocation has available
    - msg.sender - Address of the account that started the current function invocation
    - msg.value - Amount of ether (in wei) that was sent along with the function invocation
- Function Types
    - public - Anyone can call this function
    - private - Only this contract can call this function
    - view/constanct - This function returns data and does not modify the contract's data
    - pure - Function will not modify or even read the contract's data
    - payable - When someone call this function they might send ether along

- Use the Remix Debugger
- Function Modifiers - To implemented repeated logic


### Open Issues
- Not able to push code to GitHub using SSH Protocol

### Tutorials:
- Lottery Contract
- Lottery Design
- Solidity Types
- Global Variable - Message
- Players Entering the Lottery
- Validation with require ( To check manager and players )
- Selecting a winner
- Sending Ether to a winner
- Function Modifiers

### Ganache:
- To work with local networks. Remix IDE automatically generates the local network

### Steps:

- Write the contract - Solidity Program
- Compile the contract to generate ABI Interface and Bytecode
- Deploy the contract using ABI Interface and Bytecode
- Write the testcase to interact with contract

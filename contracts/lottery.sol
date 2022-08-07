pragma solidity ^0.4.17;

contract Lottery {
    address public manager; // adress - data type to store wallet address
    address[] public players;

    function Lottery() public {
        manager = msg.sender; // global object 'msg'. Address of the Contractor
    }

    function enter() public payable {
        // payable - function method to transfer money in
        require(msg.value > .01 ether); // for validation
        players.push(msg.sender);
    }

    function random() private view returns (uint256) {
        // same to uint256 . view - It won't change anything on the contract.
        return uint256(keccak256(block.difficulty, now, players)); // block - global variable
    }

    function pickWinner() public restricted {
        // require(msg.sender === manager);
        // return players.length;
        uint256 index = random() % players.length;
        players[index].transfer(this.balance); // this is the reference to the current transaction of the contract
        players = new address[](0);
    }

    modifier restricted() {
        // To implement repeated business logics
        require(msg.sender == manager); // Target - Replace out with the codes on the function which implements the modifier function
        _;
    }

    function getPlayers() public view returns (address[]) {
        return players;
    }
}

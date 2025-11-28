// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventRegistrationSimplest {

    string public eventName;
    uint256 public eventDate;
    uint256 public maxParticipants;

    address[] public participants;

    // Anyone can set the event info
    function setEventInfo(
        string memory _name,
        uint256 _date,
        uint256 _max
    ) public {
        eventName = _name;
        eventDate = _date;
        maxParticipants = _max;
    }

    // Anyone can register (no checks)
    function register() public {
        participants.push(msg.sender);
    }

    // Helper to check count
    function getTotalRegistered() public view returns (uint256) {
        return participants.length;
    }
}
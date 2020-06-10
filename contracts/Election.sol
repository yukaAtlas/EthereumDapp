pragma solidity 0.5.16;


contract Election {
    // Model candidate
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }
    // Store candidate
    // Fetch candidate
    mapping(uint256 => Candidate) public candidates;
    // Store candidates Count
    uint256 public candidatesCount;

    // Constructor
    constructor() public {
        // candidate = "Candidate 1";
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}

//Election.deployed().then(function(i){app=i})

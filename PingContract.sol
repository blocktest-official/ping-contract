pragma solidity 0.4.25;

// deployed on 0x5fC8ffDeB3b0E2D20706D2c6989833FEeaAA7cb3 in Ropsten network
contract PingContract {
    
    string pingData;
    string pingUsername;
    
    event ContractPinged(string pingData, string pingUsername);

    function set(string _pingData, string _pingUsername) public {
        pingData = _pingData;
        pingUsername = _pingUsername;
        emit ContractPinged(_pingData, _pingUsername);
    }
    
    function getData() public view returns (string) {
        return pingData;
    }
    
    function getUsername() public view returns (string) {
        return pingUsername;
    }
}

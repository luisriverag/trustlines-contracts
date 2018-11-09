pragma solidity ^0.4.0;


contract CurrencyNetworkInterface {

    function transfer(
        address _to,
        uint64 _value,
        uint64 _maxFee,
        address[] _path
    )
        external
        returns (bool success);

    function transferFrom(
        address _from,
        address _to,
        uint64 _value,
        uint64 _maxFee,
        address[] _path
    )
        external
        returns (bool success);

    function balance(address _from, address _to) public constant returns (int);

    function creditline(address _creditor, address _debtor) public constant returns (uint);

    event Transfer(address indexed _from, address indexed _to, uint _value);

}

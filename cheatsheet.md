special global variables
    * msg
        .sender - external address from where function call came from
    * tx
    * block

#### 'public' keyword 
    create behind-the-scene getter function
    i.e: address public minter = function minter() external view returns (address) { return minter; }

#### state variables
    * stored in 'contract storage' (etherium blockchain)

#### own data type
    * built it with 'struct' keyword

#### collection of values (array)
    * fixed - `uint[2] arrayName;`
    * dynamic - `uint[] arrayName;`
        * array of structs - `Person[] people;`

#### passing argument to function
    * by value
        - solidity creates a fresh copy of the property and passes
            it to the function
    * by reference
        - solidity passes as the argument to the function a reference
            to the property
        - string, array, struct and mappings
        - add keyword 'memory' when declaring reference type as argument

#### 
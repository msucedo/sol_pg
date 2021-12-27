#### global variables
    * msg
        .sender - external address from where function call came from
    * tx
    * block

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

#### inheritance
    * split code logic between contracts
    ´´contract subcontractname is maincontractname´´
    * more organized code
    * reusability 

#### events
     - talk to your front-end that something happened on the blockchain
     - declare 'event' with needed args
     - call event through 'emit' within the desired function, add parameters too.

### Structure of a contract
####    state variables
            * stored in 'contract storage' (etherium blockchain)
#####       value types
                * copied when passed as a param
                * int, bool, string, address, enums
######          string
                    * has no string comparison, compare string's keccak256 hashes
                    * keccak256(abi.encodedPacked(_string))                
######          address
                    * address
                    * address payable - extra: transfer and send, address you can send Ether to                
#####       reference types
                * referenced when passed as a param
                * array, struct, mapping
######              mapping
                        * store key-value data (can be different types)                
######           Data location
                    * memory - external function call
                    * storage - same as state variables
                    * calldata - contains function args
####    functions
            * defined inside/outside of contracts
            * called internally or externally
            * define visibility
            * accept params and return value
#####       visibility
                * public: default, visible to everyone, adds getter function
                * private: only calls within the contract
                * internal: like private but accepting inheritance calls from outside contract
                * external: only called outisde the contract
####    function modifiers
            * view: read-only, no modify to state variables
            * pure: no read app's state, return value depends on its function parameters
####    events
            * concerts like, me the singer (the contract), will define a concert date (define an event), when the date is today me the singer will announce it (contract emit signal) and the public will listen (the UI application will listen)
####    errors
            * add descriptive names and data for failure situations.
            * use with 'revert' statement
####    struct types
            * custom data type
            * group several variables
####    enum types
            * custom data type
            * define finite set of related constants

#### Data localtion
##### storage (i.e: hdd)
    * stored permanently on the blockchain
    * default for state variables (declared outside of functions)
##### memory (i.e: ram)
    * stored temporary, erased between external function calls to your contract
    * variables declared inside functions

#### conventions
    - use underscore for args in functions
    - use underscore for private function's name

#### key-value concepts
    - require: throw error and stop executing if some condition is not true
    - import: import another file to use its contract, 'import'
##### interface
        * way to interact with another contract
        * declare a contract, declare the function header you want to call, including params and returns add ; to the end

#### FAQ
    - access modifiers, types, how to use them
        - public, external, private
    - 'memory', 'storage', what are these?

- command for remix local host
remixd -s . --remix-ide https://remix.ethereum.org
/*
   Copyright 2017 Nexus Development, LLC

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

pragma solidity ^0.4.8;

contract RepeaterEvents100 {
    event LogClaim     (bytes12 indexed repeaterId, address owner);
    event LogSet       (bytes12 indexed repeaterId, bytes12 feedId, address feedbase, bytes12 position);
    event LogUnset     (bytes12 indexed repeaterId, bytes12 feedId);
    event LogSetOwner  (bytes12 indexed repeaterId, address owner);
    event LogSetLabel  (bytes12 indexed repeaterId, bytes32 label);
    event LogMinimumValid (bytes12 indexed repeaterId, bytes12 minimumValid);
}

contract RepeaterInterface100 {
    function claim() returns (bytes12 repeaterId);
    function claim(bytes12 minimumValid) returns (bytes12 repeaterId);
    function set_minimumValid(bytes12 repeaterId, bytes12 minimumValid);
    function set(bytes12 repeaterId, address feedbase, bytes12 position) returns (bytes12 feedId);
    function set(bytes12 repeaterId, bytes12 feedId, address feedbase, bytes12 position);
    function unset(bytes12 repeaterId, bytes12 feedId);
    function get(bytes12 id) returns (bytes32 value);
    function tryGet(bytes12 id) returns (bytes32 value, bool ok);
}

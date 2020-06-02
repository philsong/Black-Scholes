/*
 * CDF contract. Copyright © 2020 by Opyn.co .
 * Author: Aparna Krishnan <aparna@opyn.co>
 */
pragma solidity 0.6.8;

import "./lib/ABDKMath64x64.sol";

contract NormalCDF {
    /**
     * Initialise the Normal CDF
     */

    uint128[81] cdfValues = [
        0.00003 * 1e18,
        0.00005 * 1e18,
        0.00007 * 1e18,
        0.00011 * 1e18,
        0.00016 * 1e18,
        0.00023 * 1e18,
        0.00034 * 1e18,
        0.00048 * 1e18,
        0.00069 * 1e18,
        0.00097 * 1e18,
        0.00135 * 1e18,
        0.00187 * 1e18,
        0.00256 * 1e18,
        0.00347 * 1e18,
        0.00466 * 1e18,
        0.00621 * 1e18,
        0.0082 * 1e18,
        0.01072 * 1e18,
        0.0139 * 1e18,
        0.01786 * 1e18,
        0.02275 * 1e18,
        0.02872 * 1e18,
        0.03593 * 1e18,
        0.04457 * 1e18,
        0.0548 * 1e18,
        0.06681 * 1e18,
        0.08076 * 1e18,
        0.0968 * 1e18,
        0.11507 * 1e18,
        0.13567 * 1e18,
        0.15866 * 1e18,
        0.18406 * 1e18,
        0.21186 * 1e18,
        0.24196 * 1e18,
        0.27425 * 1e18,
        0.30854 * 1e18,
        0.34458 * 1e18,
        0.38209 * 1e18,
        0.42074 * 1e18,
        0.46017 * 1e18,
        0.5 * 1e18,
        0.53983 * 1e18,
        0.57926 * 1e18,
        0.61791 * 1e18,
        0.65542 * 1e18,
        0.69146 * 1e18,
        0.72575 * 1e18,
        0.75804 * 1e18,
        0.78814 * 1e18,
        0.81594 * 1e18,
        0.84134 * 1e18,
        0.86433 * 1e18,
        0.88493 * 1e18,
        0.9032 * 1e18,
        0.91924 * 1e18,
        0.93319 * 1e18,
        0.9452 * 1e18,
        0.95543 * 1e18,
        0.96407 * 1e18,
        0.97128 * 1e18,
        0.97725 * 1e18,
        0.98214 * 1e18,
        0.9861 * 1e18,
        0.98928 * 1e18,
        0.9918 * 1e18,
        0.99379 * 1e18,
        0.99534 * 1e18,
        0.99653 * 1e18,
        0.99744 * 1e18,
        0.99813 * 1e18,
        0.99865 * 1e18,
        0.99903 * 1e18,
        0.99931 * 1e18,
        0.99952 * 1e18,
        0.99966 * 1e18,
        0.99977 * 1e18,
        0.99984 * 1e18,
        0.99989 * 1e18,
        0.99993 * 1e18,
        0.99995 * 1e18,
        0.99997 * 1e18
    ];

    /**
     * @notice constructor
     */
    constructor() public {}

    /**
     * @notice this function returns the cdf for the normal dist
     */
    function N(uint128 key) external returns (uint128) {
        return cdfValues[key];
    }
}
// SPDX-License-Identifier:MIT
pragma solidity ^0.6.12;

interface IQualityOfService {

    struct CommitmentResponse {
        bytes signedTx;
        CommitmentReceipt signedReceipt;
    }

    struct CommitmentReceipt {
        Commitment commitment ;
        bytes workerSignature;
        address workerAddress;
    }

    struct Commitment {
        uint256 time;
        address from;
        address to;
        bytes data;
        address relayHubAddress;
        address relayWorker;
    }
}
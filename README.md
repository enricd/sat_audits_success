# sat_success_audit
Successful audits from the different Storj V3 Satellites (for Windows Power Shell)

This is a short adaptation from the complete success rate script from Alexey ALeonov https://github.com/AlexeyALeonov/success_rate

In this script just the total success audits from all satellites and also from which specific satellite are counted.

#### 1. Download the repository


#### 2. Run it
`.\sat_success_audits` 

To specify path to the log file, you can use an optional parameter -Path:

`.\successrate.ps1 -Path x:\storagenode\node.log`


#### - You may need to enable the execution policy
Execute in Power Shell as admin

`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned`

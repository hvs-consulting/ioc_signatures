# M365 Phishing with MFA IOCs
- Last update: 26.01.2021
- Author: HvS-Consulting AG

## Context
In January 2022 we observed an attack, which was a usual Phishing attack with a duplicated Microsoft Logon page to trick users into entering their M365 credentials. The attack special in two ways. First the attacker utilized a redirection vulnerability in a legit website (https://www.comparetv.com.au), to redirect the victim via a legit site to the phishing site. 

Second, the phishing site did not only steal username and password, but also the second factor of the User. In this case, the second factor was SMS. Hence, after the input of username and password, the attacker relays the information to start a legit logon process at Microsoft to trigger the sending of the SMS. After the User also enters the second factor, the attacker relays that information again to perform a complete and successful logon.

After the successful logon, the attacker immediately adds his own second factor to the account to ensure persistence. 

## Notes & Disclaimer
- Even if we try to avoid false positives by manual QA, those rules are not meant to be used in production without previous dry runs.
- Unfortunately, Comparetv did not respond to any contact attempts

## References

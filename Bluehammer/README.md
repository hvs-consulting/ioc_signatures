# Bluehammer
- Last update: 08.04.2026
- Author: Moritz Oettle (HvS-Consulting GmbH)

## Context
- On 07.04.2026 a working exploit for a privilege escalation withtin Windows was publicly disclosed. At the time of publication the vulnerability was not yet patched.
- This YARA rule and IOCs help detect the usage of the bluehammer exploit
- Note that the detection rules and IOCs heavily rely on the attacker utilizing the published exploit exectuable

## References
    - https://deadeclipse666.blogspot.com/2026/04/public-disclosure.html
    - https://github.com/Nightmare-Eclipse/BlueHammer

## Notes & Disclaimer
- Even if we try to avoid false positives by manual QA, those rules are not meant to be used in production without previous dry runs.
# Quackbot IOCs
- Last update: 11.04.2022
- Author: HvS-Consulting AG

## Context
We found these IOCs during the investigation of a Quackbot/Qakbot/Qbot infection in 2022. Within hours after the infection, the attackers performed a privilege escalation to Domain Admin via Printer Nightmare and performed lateral movement to +10 systems. Much of what we found out during our forensic analysis resembles the Quackbot attack described by Cynet in their excellent report (see References).

## Notes & Disclaimer
- Even if we try to avoid false positives by manual QA, those rules are not meant to be used in production without previous dry runs.

## References
- https://www.cynet.com/attack-techniques-hands-on/quakbot-strikes-with-quaknightmare-exploitation/
- https://thedfirreport.com/2022/02/21/qbot-and-zerologon-lead-to-full-domain-compromise/
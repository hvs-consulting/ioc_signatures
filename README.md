# HvS IOC Signatures

## Purpose
Since HvS-Consulting is handling incidents for multiple years now, we collect sets of IOCs - mainly YARA rules - on a regular basis. Occasionally also sets are created by our team due to internal research. In order to help the community with **Threat Hunting** and **Incident Response**, we would like to share selected sets of IOCs from time to time in this repository. These IOCs have great value for threat hunting or the improvement of security monitoring within organizations.

Even if we try to avoid false positives by manual QA, those rules are not meant to be used in production without previous dry runs.

## Structure

As we focus on hunting and specific threat actors, we decided to create a directory per actor, containing various common IOC types like:
- YARA Rules* to find indicators in files, registry entries, event log messages, process memory, ... 
- CSV files with indicators including some context which should increase actionability in case of matches
- Lists e.g. of malicious IPs and Domains

\* Some rules might require [THORs](https://www.nextron-systems.com/thor/) or [LOKIs](https://github.com/Neo23x0/Loki) extensions of YARA to be fully supported.


## IoC Types and Rules
The following types and rules apply to the \<group\>/HvS_\<group\>_\<year-month\>_IOCs.csv files in the respective subfolders. There might be additional files with more information about the IoCs.


| Type        | Description                                                                                 |
| ----------- | ------------------------------------------------------------------------------------------- |
| DOMAIN      | Fully Qualified Domain Name (FQDN): No protocol, no ports, no paths                         |
| URL         | Includes a protocol, a FQDN, and a path if available                                        |
| IPV4        | IPv4 Address                                                                                |
| IPV6        | IPv6 Address                                                                                |
| FULLPATH    | The full path to a file including the filename itself                                       |
| FILENAME    | Only the filename without any path information                                              |
| REGISTRY    | A registry key includes its hive (HKCC, HKCU, HKLM, HKU, HKCR) and a full path to that key  |
| MD5         | MD5 Hash                                                                                    |
| SHA         | SHA-1 Hash                                                                                  |
| SHA256      | Sha-256 Hash                                                                                |
| PROCESSARGS | Full path of a process and passed arguments                                                 |
| STRING      | Any specific string that does not fit in any of the above categories                        |


The CSV file containing the IoCs adheres to the following rules:
* The CSV file contains 3 columns: Type, Data, Note
* Type may only be one of the pre-defined value in CAPS
* Data contains the actual IoC
* Note is a short description of the IoC. If spaces are needed, the note is surrounded by quotes
* If possible, Windows environment variables are used for specifying a path (e.g. %TEMP%, etc)
* Environment depended variables will be replaced with an identifier and surrounded in with the \< and \> signs (e.g. \<username\>)


## FAQ

### Is there a scheduled update interval of IOCs
No we release new IOCs only occasionally.

### How should false positives be reported?
You can just use the issues section of this repository.

### I want to know more about HvS-Consulting AG
More information can be found at our website [https://www.hvs-consulting.de](https://www.hvs-consulting.de)


## License

![Creative Commons License](https://i.creativecommons.org/l/by-nc/4.0/88x31.png)

All IOC sets, YARA rules and other information in this repository, except created by 3rd parties, are licensed under the [Creative Commons Attribution-NonCommercial 4.0 International License](http://creativecommons.org/licenses/by-nc/4.0/).

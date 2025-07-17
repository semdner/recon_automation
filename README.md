# recon_automation
Bash script to automate the reconnaissance process for Bug Bounty

# Usage

1. Create a .env file in the projects directory with the variables:

```
PATH_TO_SUBLIST3R="/PATH/TO/SUBLIST3R"
PATH_TO_CRTSH="/PATH/TO/CRTSH"
PATH_TO_GITHUB_SUBDOMAINS="/PATH/TO/GITHUB_SUBDOMAINS"
PATH_TO_DIRSEARCH="/PATH/TO/DIRSEARCH"
PATH_TO_HTTPROBE="/PATH/TO/HTTPROBE"
GITHUB_TOKEN=YOUR GITHUB TOKEN FOR GITHUB SUBDOMAINS
```

2. Running the script

```
bash recon.sh -d domain1.com -d domain2.com
```

or a file with domains (one domain per line).

```
bash recon.sh -f input
```







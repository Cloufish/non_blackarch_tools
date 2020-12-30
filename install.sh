#!/bin/bash


#ROOT INSTALLATIONS
#create a tools folder in ~/
mkdir /home/penelope/tools
cd /home/penelope/tools


echo "installing JSParser"
git clone https://github.com/nahamsec/JSParser.git
cd JSParser
python setup.py install
chmod +x /home/penelope/tools/JSParser/handler.py
ln /home/penelope/tools/JSParser/handler.py /home/penelope/PATH
cd /home/penelope/tools/
echo "done"

#calebstewars pwncat

pip install git+https://github.com/calebstewart/pwncat.git
pip install -U git+https://github.com/calebstewart/paramiko
pip install base64io

# Wappalyzer
git clone https://github.com/aliasio/wappalyzer
cd wappalyzer
yarn install
yarn run link
cd /home/penelope/tools/

# js-beautify

npm -g --force install js-beautify
cd /home/penelope/tools


echo "This will be run from user $UID"
git clone https://github.com/Cloufish/recon_profile.git
cd recon_profile
cat zprofile >> /home/penelope/.zprofile
source /home/penelope/.zprofile
mkdir /home/penelope/tools
cd /home/penelope/tools/

echo "done"



# gwen001 github-search
cd /home/penelope/tools && \
git clone https://github.com/gwen001/github-search.git
chmod +x /home/penelope/tools/github-search/
# cp ~/tools/github-search/ /home/penelope/PATH


## wpscan
echo "installing wpscan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan
gem install bundler && bundle install --without test
cd /home/penelope/tools/
echo "done"
# relative url extractor

git clone https://github.com/jobertabma/relative-url-extractor.git
cd /home/penelope/tools/


echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
chmod +x /home/penelope/tools/dirsearch/dirsearch.py
ln /home/penelope/tools/dirsearch/dirsearch.py /home/penelope/PATH
cd /home/penelope/tools/
echo "done"


echo "installing asnlookup"
git clone https://github.com/yassineaboukir/asnlookup.git
cd /home/penelope/tools/asnlookup
pip install -r requirements.txt
chmod +x /home/penelope/tools/asnlookup/asnlookup.py
ln /home/penelope/tools/asnlookup/asnlookup.py /home/penelope/PATH
cd /home/penelope/tools/
echo "done"



#echo "downloading Seclists"
#cd /home/penelope/tools/
#git clone https://github.com/danielmiessler/SecLists.git
#cd /home/penelope/tools/SecLists/Discovery/DNS/
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED

# Setting up wordlists
mkdir /home/penelope/tools/SecLists
cd /home/penelope/tools/SecLists
mkdir Directory-Bruting
cd Directory-Bruting
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/directory-list-2.3-small.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/directory-list-2.3-medium.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/directory-list-2.3-big.txt
cd ..
mkdir Passwords
cd Passwords 
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/xato-net-10-million-passwords-1000.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/xato-net-10-million-passwords-10000.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/xato-net-10-million-passwords-100000.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/xato-net-10-million-passwords-1000000.txt
wget https://www.scrapmaker.com/data/wordlists/dictionaries/rockyou.txt
cd ..
mkdir Usernames
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Usernames/xato-net-10-million-usernames-dup.txt -O ./xato-net-10-million-usernames-medium.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Usernames/xato-net-10-million-usernames.txt
cd /home/penelope/tools
#searchsploit database

#searchsploit -u #TOO MUCH STORAGE IT TAKES, you can disable it if you don't use searchsploit and you're just googling exploits yourself
#msfdb-blackarch init

# nuklei
git clone https://github.com/projectdiscovery/nuclei.git &&
cd nuclei/v2/cmd/nuclei/ &&
go build &&
chmod +x /home/penelope/tools/nuclei/v2/cmd/nuclei/nuclei
ln /home/penelope/tools/nuclei/v2/cmd/nuclei/nuclei /home/penelope/PATH
cd /home/penelope/tools/
git clone https://github.com/projectdiscovery/nuclei-templates.git
cd /home/penelope/tools/

# FavFreak
 git clone https://github.com/devanshbatham/FavFreak && \
 cd FavFreak && \
 pip3 install virtualenv && \
 virtualenv -p python3 env
 source env/bin/activate
 python3 -m pip install mmh3
 chmod +x /home/penelope/tools/FavFreak/favfreak.py
 ln /home/penelope/tools/FavFreak/favfreak.py /home/penelope/PATH
 cd /home/penelope/tools/

# massdns

 git clone https://github.com/blechschmidt/massdns.git
 cd massdns
 su -c make penelope
 cd /home/penelope/tools/


#dnmasscan

git clone https://github.com/rastating/dnmasscan.git
cd dnmasscan
chmod +x dnmasscan
ln /home/penelope/tools/dnmasscan/dnmasscan /home/penelope/PATH
cd /home/penelope/tools/


# masscan

git clone https://github.com/robertdavidgraham/masscan.git
cd masscan
su -c make penelope
cd /home/penelope/tools/

# yay

git clone https://aur.archlinux.org/yay-git.git
cd yay-git
su -c make penelope
cd /home/penelope/tools/
# nuclei-templates

git clone https://github.com/projectdiscovery/nuclei-templates.git
cd /home/penelope/tools/

#LinPeas, WinPeas, Linux Exploit suggester-2
 git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git
 mv privilege-escalation-awesome-scripts-suite privesc
 cd privesc
 wget https://raw.githubusercontent.com/jondonas/linux-exploit-suggester-2/master/linux-exploit-suggester-2.pl
 cd /home/penelope/tools/


#Bug bounty checklists

mkdir checklists
cd checklists
wget https://github.com/KathanP19/HowToHunt/raw/master/CheckList/Web_Checklist_by_Chintan_Gurjar.pdf
wget https://raw.githubusercontent.com/KathanP19/HowToHunt/master/CheckList/Web-Application-Pentesting-checklist.md
cd /home/penelope/tools/


# bpython and other modules 

pip install bpython requests beautifulsoup4 lxml


# SubDomanizer v2

git clone https://github.com/nsonaniya2010/SubDomainizer.git
cd SubDomainizer
pip3 install -r requirements.txt
ln /home/penelope/tools/SubDomainizer/SubDomainizer.py /home/penelope/PATH
cd /home/penelope/tools/
# github-subdomains

git clone https://github.com/gwen001/github-subdomains
cd github-subdomains
go install
cd /home/penelope/tools/

#Markdown-PP

git clone https://github.com/jreese/markdown-pp.git
cd markdown-pp
pip install MarkdownPP
cd /home/penelope/tools/

# m4ll0k tools
git clone https://github.com/m4ll0k/Bug-Bounty-Toolz.git
cd /home/penelope/Bug-Bounty-Toolz
ln /home/penelope/tools/Bug-Bounty-Toolz/getrelationship.py /home/penelope/PATH
cd /home/penelope/tools/

# gdorklinks.sh ~ jhaddix

#My-Tools
	#bug bounty framework 
	git clone https://github.com/Cloufish/bug_bounty_framework.git
	cd bug_bounty_framework
	ln web_recon.sh /home/penelope/PATH
	ln markdown_converter.sh /home/penelope/PATH
	cd /home/penelope/tools/

	# HTB_automation
	git clone https://github.com/Cloufish/HTB_automation.git
	cd HTB_automation
	ln htb_recon.sh /home/penelope/PATH
	ln htb_converter_to_markdown.sh /home/penelope/PATH
	cd /home/penelope/tools/



cd /home/penelope/PATH
wget https://gist.githubusercontent.com/jhaddix/1fb7ab2409ab579178d2a79959909b33/raw/e9fea4c0f6982546d90d241bc3e19627a7083e5e/Gdorklinks.sh
mv Gdorklinks.sh gdorklinks
chmod +x gdorklinks
cd /home/penelope/tools/
# enum4linux
wget https://raw.githubusercontent.com/CiscoCXSecurity/enum4linux/master/enum4linux.pl -O /home/penelope/PATH/enum4linux
sudo touch /etc/samba/smb.conf
cd /home/penelope/tools/

## GRANTING 755 PERMISSIONS ON ALL FILES IN PATH
#chown -R penelope /home/penelope/tools
chmod -R 755 /home/penelope/tools
#chown -R penelope /home/penelope/PATH #Takes too much space for Docker container
chmod -R 755 /home/penelope/PATH
echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools"

## Editing 

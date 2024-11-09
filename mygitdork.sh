#!/bin/bash

# Function to print a colorful header
print_header() {
    echo -e "\e[1;34m************************************************************"
    echo -e "*                \e[1;32mMyGitDork\e[1;34m by author \e[1;33mHaykeensPaul\e[1;34m          *"
    echo -e "************************************************************"
    echo -e "\e[0m"
}

# Function to print the dork links with styling
print_dorks() {
    without_suffix=`echo $1 | cut -d , -f1`
    
    echo ""
    echo -e "\e[1;36m************ Github Dork Links (must be logged in) *******************\e[0m"
    echo ""
    echo -e "\e[1;35mpassword\e[0m"
    echo "https://github.com/search?q=%22$1%22+password&type=Code"
    echo "https://github.com/search?q=%22$without_suffix%22+password&type=Code"
    echo ""
    
    echo -e "\e[1;35mnpmrc _auth\e[0m"
    echo "https://github.com/search?q=%22$1%22+npmrc%20_auth&type=Code"
    echo "https://github.com/search?q=%22$without_suffix%22+npmrc%20_auth&type=Code"
    echo ""
    
    echo -e "\e[1;35mdockercfg\e[0m"
    echo "https://github.com/search?q=%22$1%22+dockercfg&type=Code"
    echo "https://github.com/search?q=%22$without_suffix%22+dockercfg&type=Code"
    echo ""
    
    echo -e "\e[1;35mpem private\e[0m"
    echo "https://github.com/search?q=%22$1%22+pem%20private&type=Code"
    echo "https://github.com/search?q=%22$without_suffix%22+extension:pem%20private&type=Code"
    echo ""
    
    echo -e "\e[1;35mid_rsa\e[0m"
    echo "https://github.com/search?q=%22$1%22+id_rsa&type=Code"
    echo "https://github.com/search?q=%22$without_suffix%22+id_rsa&type=Code"
    echo ""
    
    echo -e "\e[1;35maws_access_key_id\e[0m"
    echo "https://github.com/search?q=%22$1%22+aws_access_key_id&type=Code"
    echo "https://github.com/search?q=%22$without_suffix%22+aws_access_key_id&type=Code"
    echo ""
    
    echo -e "\e[1;35ms3cfg\e[0m"
    echo "https://github.com/search?q=%22$1%22+s3cfg&type=Code"
    echo "https://github.com/search?q=%22$without_suffix%22+s3cfg&type=Code"
    echo ""
    
    echo -e "\e[1;35mhtpasswd\e[0m"
    echo "https://github.com/search?q=%22$1%22+htpasswd&type=Code"
    echo "https://github.com/search?q=%22$without_suffix%22+htpasswd&type=Code"
    echo ""
    
    # Continue with other dork categories similarly...
}

# Print the header
print_header

# Print the dork links
print_dorks "$1"

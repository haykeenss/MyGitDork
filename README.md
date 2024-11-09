# MyGitDork

## Overview
This is a Red Team tool designed to help security researchers and penetration testers quickly identify potentially sensitive information within public GitHub repositories. By leveraging "dorks" (targeted search queries), this tool can help locate secrets, passwords, configuration files, API keys, and other critical data that may have been accidentally exposed on GitHub.

GitHub Dorking is useful in scenarios where you need to assess a target's security posture by discovering leaked credentials, sensitive configuration files, or other information that could be exploited to pivot into internal systems or compromise security. This tool automates the process of crafting multiple GitHub search URLs with specific keywords for comprehensive and efficient searches.

## Features
- Generates GitHub search links for common secrets and configuration files.
- Customizable input for targeting specific domains, emails, or keywords.
- Covers a wide range of sensitive file types and keywords, such as:
  - Passwords
  - API keys
  - Configuration files (e.g., .npmrc, dockercfg, pem, aws_access_key_id)
  - Secrets (e.g., SECRET_KEY, client_secret, ssh, FTP, etc.)
- Outputs links for direct use in your browser, allowing you to review the results on GitHub quickly.
- Easy to use – requires minimal input and setup.

## Requirements
- A GitHub account with access to GitHub's code search (recommended to be logged in to see full results).
- `bash` shell (for running the script in UNIX-like environments).

## Usage

1. Clone the repository or download the script: if prompt, enter your correct github username and pass in other to clone. or you can just easily copy the bash file anad save then you continue with step 2.
   ```bash
   git clone https://github.com/haykeens/MyGitDork.git
   cd MyGitDork
   ```

2. Make the script executable:
   ```bash
   chmod +x mygitdork.sh
   ```

3. Run the script with a target keyword (such as a domain name, email, or specific keyword):
   ```bash
   ./mygitdork.sh <target_keyword>
   ```

   Replace `<target_keyword>` with your target string. For example:
   ```bash
   ./mygitdork.sh example.com
   ```

## Example

If you run the command with `example.com` as the target, the tool will output GitHub search URLs for `example.com` across various dorks like `password`, `AWS keys`, `Docker configurations`, and more:

```bash
************ GitHub Dork Links (must be logged in) *******************

password
https://github.com/search?q=%22example.com%22+password&type=Code
https://github.com/search?q=%22example%22+password&type=Code

npmrc _auth
https://github.com/search?q=%22example.com%22+npmrc%20_auth&type=Code
https://github.com/search?q=%22example%22+npmrc%20_auth&type=Code

...
```

## Notes
This tool is intended for ethical security testing and research purposes only. Unauthorized access to systems or data is illegal.  
Some searches may return many results or be rate-limited by GitHub; it's recommended to log in to your GitHub account to view the full results.  
Regularly update your dork keywords to stay current with evolving security trends and sensitive information types.

## Contributing
Contributions to improve the tool are welcome! Please submit a pull request with any updates, additional dorks, or new features.

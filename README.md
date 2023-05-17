# Secure Backup Script

## Description

The secure backup script is a bash script that allows you to create encrypted and compressed backups of your files. It prompts for a passphrase, securely encrypts the files using GnuPG (GPG), and saves the encrypted backup to a specified directory.

## How it Works

The script performs the following steps:

- The script prompts you to enter a passphrase. This passphrase will be used to encrypt the backup file, so make sure to choose a strong and memorable passphrase.

- Specify the directory paths:
  - `backup_dir`: The destination directory where the encrypted backup file will be saved.
  - `source_dir`: The directory containing the files you want to back up.

- The script generates a backup file name based on the current date and time.

- It creates a compressed tarball of the files in the source directory using the `tar` command.

- The `tar` output is piped to the `gpg` command, which encrypts the data using the provided passphrase and creates the encrypted backup file.

- The encrypted backup file is saved in the specified backup directory with the generated file name.

- Finally, the script displays a success message indicating that the backup was created successfully.

## Usage

Open a terminal or command prompt.

Navigate to the directory where the `secure_backup.sh` script is located.

Make sure the script has execution permissions. If not, run the following command to grant execute permission:

<pre><code>chmod +x secure_backup.sh</code></pre>

Run the script using the following command:

<pre><code>./secure_backup.sh</code></pre>

Enter the passphrase when prompted.

The script will create the encrypted backup file and save it to the specified backup directory.

Note: Make sure to replace the `/path/to/backup` and `/path/to/source` placeholders in the script with the actual paths relevant to your setup.

# Decrypting the Backup
To decrypt the backup file and restore your files:

Open a terminal.

Navigate to the directory where the encrypted backup file is located.

Run the following command to decrypt and extract the backup file, replacing `encrypted_backup.tar.gz.gpg` with the actual filename:

<pre><code>gpg -d encrypted_backup.tar.gz.gpg | tar -xzvf -</code></pre>
Enter the passphrase when prompted.

The files will be extracted to the current directory.
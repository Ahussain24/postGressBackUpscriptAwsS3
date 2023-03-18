
1. Install Amazon CLI: The server where the PostgreSQL database is installed must first have the AWS CLI installed. You can adhere to the installation instructions provided in the AWS manual for your particular OS: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html

2. Create S3 bucket by following the guidelines in the AWS manual at https://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html if you don't already have one.

3. Write a scripts: to automate the backup and upload process

Note : Kindly refer the automate.sh script 
Make sure to replace your-bucket-name with the actual name of your S3 bucket.

4. Schedule the script: Schedule the script to run at 2am in the morning using a cron job. To set up a cron job, run the following command:

        crontab -e

0 2 * * * /path/to/your/script.sh
This will run the script every day at 2am.

5. Test the backup and upload: Test the script by running it manually and checking if the backup file is created in the specified folder and uploaded to the S3 bucket.

By following these steps, you can automate the backup of your PostgreSQL database and store it in a remote location like AWS S3 bucket storage.

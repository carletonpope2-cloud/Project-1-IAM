# Project-1-IAM
Create a set of IAM roles for a imaginary startup company with 10 employees

Project Brief

Client Background:
You are a Cloud Engineer Consultant, working with StartupCo, a fast-growing tech startup that recently launched their first product - a fitness tracking application.

They've been using AWS for three months, initially setting up their infrastructure quickly to meet launch deadlines.

Now that their product is live, they need to address their cloud security fundamentals.  The company has 10 employees who all currently share the AWS root account credentials to access and manage their cloud resources.

This practice started when they were moving quickly to launch, but now their CTO recognizes the security risks this poses.

Current Setup:

Everyone uses the root account

No separate permissions for different teams

No MFA or password policies

AWS credentials shared via team chat

Current Infrastructure:

EC2 instances running their application

S3 buckets storing user data and application assets

RDS database for user information

CloudWatch for monitoring

Several development and production environments

Team Structure & Access Needs: 

  4 Developers (need EC2 and S3 access)

 2 Operations (need full infrastructure access)

 1 Finance Manager (needs cost management access)

 3 Data Analysts (need read-only access to data resources)

--------- Your Task ---------
1 - Create their Architecture

Create a architecture diagram showcasing their current infrastructure



2 - Secure the Root Account

Enable MFA

Stop using it for daily operations

Store credentials securely



3 - Create IAM Users and Groups

Developer group & users

Operations group & users

Finance group & user

Analyst group & users



4 - Set Up Security Requirements

Enable MFA for all users

Create a strong password policy

Ensure users can only access what they need



5 - Implement These Permissions

Developers:

EC2 management

S3 access for application files

CloudWatch logs viewing

Operations:

Full EC2, CloudWatch access

Systems Manager access

RDS management

Finance:

Cost Explorer

AWS Budgets

Read-only resource access

Analysts:

Read-only S3 access

Read-only database access

--------- What to Submit ---------
Documentation and Screenshots

Clear Documentation explaining the problem you faced, what you did to overcome it, with the Architecture you created

In the documentation include screenshots showing:

Your IAM groups and users structure

MFA and password policies

Example permissions for each group

How you structure the permissions

Why you made certain security choices

---------Advanced Bonus Challenge --------
Once you've implemented everything via Console, try to recreate your solution using:

Terraform

AWS CloudFormation

AWS CDK

This will help you understand both approaches. 
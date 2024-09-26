# Host a Website on Amazon S3

## Project Overview

This project demonstrates how to host a static website using Amazon S3 (Simple Storage Service). It was completed as part of the NextWork.org curriculum.

## Project Details

- **Duration**: Approximately 30 minutes
- **AWS Region**: Mumbai-east1
- **S3 Bucket Name**: my-aws-bucket-arunesh

## Project Steps

1. **Create an S3 Bucket**
   - Created a new S3 bucket in the Mumbai-east1 region.
   - Configured Access Control List (ACL) settings.
   - Noted the importance of proper S3 bucket naming for avoiding conflicts and improving efficiency.
     
![Screenshot (26)](https://github.com/user-attachments/assets/aab92336-a51c-4f95-b74a-1dcab4b8d9a7)

2. **Upload Website Files**
   - Uploaded `index.html` and a backend JavaScript file.
   - These files serve as the frontend and backend of the website.
     
![Screenshot (27)](https://github.com/user-attachments/assets/b214e8c3-6453-403b-909f-7e24db9db5a4)

3. **Enable Static Website Hosting**
   - Opened bucket properties.
   - Enabled static website hosting option.
     
![Screenshot (28)](https://github.com/user-attachments/assets/2d4b9b1a-be82-469a-8801-6cc8bc0ed9c8)

4. **Configure Bucket Endpoint**
   - Created a URL that allows public access to the HTML file.
   - 
![Screenshot (29)](https://github.com/user-attachments/assets/995e34c3-00c2-4b86-8691-54432a96eade)
![Screenshot (30)](https://github.com/user-attachments/assets/6dedd3b4-ecc3-4698-a316-c46dd50f879a)

5. **Troubleshooting**
   - Initially encountered a 403 error when accessing the bucket endpoint URL.
   - Reason: Objects are private by default in S3.
   - Resolution: Configured ACL (Access Control List) to resolve the error.

## Key Learnings

- Static website hosting enables your website to be publicly accessible.
- ACL (Access Control List) is a set of rules that determines who can access specific resources, like files, directories, or networks.
- S3 objects are private by default and require proper configuration for public access.

## Next Steps

- Consider exploring AWS certifications for further learning.
- Visit nextwork.org for more AWS and cloud computing projects.

## Conclusion

This project demonstrated the ease of creating and showcasing an AWS project, specifically focusing on hosting a static website using Amazon S3. It provided hands-on experience with S3 bucket creation, file uploading, static website hosting configuration, and troubleshooting common access issues.

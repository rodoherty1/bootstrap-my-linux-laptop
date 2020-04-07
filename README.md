
# My Ansible scripts for rebuilding my personal laptop

## Instructions

The Ansible Play that installs the Vice emulator contains a task that downloads a tar.gz from an AWS S3 Bucket.
The name of the bucket is passed in via the arguments to `ansible-playbook`.
The AWS Access Key and Secret Access Key are set in `~/.ansible.cfg` which you will have to create yourself.

The file must include:

    AWS_ACCESS_KEY=<your aws access key>
    AWS_SECRET_ACCESS_KEY=<your secret access key>

Run the playbook as follows:

    $ ansible-playbook -u <your_username> site.yml --extra-vars=AWS_S3_BUCKET=<your-aws-s3-bucket>


## TODO
  * Move away from `aws-s3` module and use a public folder instead.
 

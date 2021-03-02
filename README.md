# Cloud-DevSecOps-Learning
Collection of Cloud and DevSecOps learning resources


Project 2: Reusable and clean Python code

prerequisite:

Ubuntu: 
# we need the python tool, pip, to install python packages
sudo apt install python3-pip

boto3 does not seems to understand the vscode credentials, use aws command outside of vscode resolved
boto3 did not like bucket name in mixed case, changed to lower
boto3 did not like region set in .aws/config file, removed

## Lab

```bash
# install boto3
pip3 install boto3
```

```bash
# not logged in to aws, and/or no [default] credential in .aws/credential
python3 s3bucket.py cloud-skills-202102271105

Traceback (most recent call last):
  File "s3bucket.py", line 26, in <module>
    main()
  File "s3bucket.py", line 6, in main
    create_s3bucket(bucket_name)
  File "s3bucket.py", line 16, in create_s3bucket
    bucket = s3_bucket.create_bucket(
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/client.py", line 357, in _api_call
    return self._make_api_call(operation_name, kwargs)
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/client.py", line 662, in _make_api_call
    http, parsed_response = self._make_request(
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/client.py", line 682, in _make_request
    return self._endpoint.make_request(operation_model, request_dict)
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/endpoint.py", line 102, in make_request
    return self._send_request(request_dict, operation_model)
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/endpoint.py", line 132, in _send_request
    request = self.create_request(request_dict, operation_model)
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/endpoint.py", line 115, in create_request
    self._event_emitter.emit(event_name, request=request,
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/hooks.py", line 356, in emit
    return self._emitter.emit(aliased_event_name, **kwargs)
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/hooks.py", line 228, in emit
    return self._emit(event_name, kwargs)
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/hooks.py", line 211, in _emit
    response = handler(**kwargs)
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/signers.py", line 90, in handler
    return self.sign(operation_name, request)
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/signers.py", line 162, in sign
    auth.add_auth(request)
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/auth.py", line 357, in add_auth
    raise NoCredentialsError
botocore.exceptions.NoCredentialsError: Unable to locate credentials
```

```bash
# the .aws/config contained a region that did not seem to be acceptable
python3 s3bucket.py CloudSkills202102

Traceback (most recent call last):
  File "s3bucket.py", line 26, in <module>
    main()
  File "s3bucket.py", line 6, in main
    create_s3bucket(bucket_name)
  File "s3bucket.py", line 16, in create_s3bucket
    bucket = s3_bucket.create_bucket(
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/client.py", line 357, in _api_call
    return self._make_api_call(operation_name, kwargs)
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/client.py", line 676, in _make_api_call
    raise error_class(parsed_response, operation_name)
botocore.exceptions.ClientError: An error occurred (IllegalLocationConstraintException) when calling the CreateBucket operation: The unspecified location constraint is incompatible for the region specific endpoint this request was sent to.
```

```bash
# there seems to be a problem with the bucket name
python3 s3bucket.py CloudSkills202102271105

Traceback (most recent call last):
  File "s3bucket.py", line 26, in <module>
    main()
  File "s3bucket.py", line 6, in main
    create_s3bucket(bucket_name)
  File "s3bucket.py", line 16, in create_s3bucket
    bucket = s3_bucket.create_bucket(
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/client.py", line 357, in _api_call
    return self._make_api_call(operation_name, kwargs)
  File "/home/scott/.local/lib/python3.8/site-packages/botocore/client.py", line 676, in _make_api_call
    raise error_class(parsed_response, operation_name)
botocore.exceptions.ClientError: An error occurred (InvalidBucketName) when calling the CreateBucket operation: The specified bucket is not valid.
```

```bash
# this works and returns a json response
python3 s3bucket.py cloud-skills-202102271105
```

```json
{'ResponseMetadata': {'RequestId': 'D56D79A1947A4811', 'HostId': 'lVM7WeNRh+i26M/FW7ZO6DhJaEPvs/IIICHEiHr7GE0O7JC8Rfp8D18NGlQ9BBnPGecghCzWCMg=', 'HTTPStatusCode': 200, 'HTTPHeaders': {'x-amz-id-2': 'lVM7WeNRh+i26M/FW7ZO6DhJaEPvs/IIICHEiHr7GE0O7JC8Rfp8D18NGlQ9BBnPGecghCzWCMg=', 'x-amz-request-id': 'D56D79A1947A4811', 'date': 'Sat, 27 Feb 2021 19:05:44 GMT', 'location': '/cloud-skills-202102271105', 'content-length': '0', 'server': 'AmazonS3'}, 'RetryAttempts': 0}, 'Location': '/cloud-skills-202102271105'}
```

A manually prettied up json response

```json
{
    'ResponseMetadata': {
        'RequestId': 'D56D79A1947A4811', 
        'HostId': 'lVM7WeNRh+i26M/FW7ZO6DhJaEPvs/IIICHEiHr7GE0O7JC8Rfp8D18NGlQ9BBnPGecghCzWCMg=', 
        'HTTPStatusCode': 200, 
        'HTTPHeaders': {
            'x-amz-id-2': 'lVM7WeNRh+i26M/FW7ZO6DhJaEPvs/IIICHEiHr7GE0O7JC8Rfp8D18NGlQ9BBnPGecghCzWCMg=', 
            'x-amz-request-id': 'D56D79A1947A4811', 
            'date': 'Sat, 27 Feb 2021 19:05:44 GMT', 
            'location': '/cloud-skills-202102271105', 
            'content-length': '0', 
            'server': 'AmazonS3'
        }, 
        'RetryAttempts': 0
    }, 
    'Location': '/cloud-skills-202102271105'
}
```

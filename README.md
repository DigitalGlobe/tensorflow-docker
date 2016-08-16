# Example Project using the Tensorflow Docker image

Includes scripts to build, run and push docker container

## JSON files

### taskDefinition.json

This is the task definition for the task in GBDx. It will be registered as test-tensorflow. It tries to import tensorflow in Python and captures the stdout/stderr to the dump directory as shown in testTensorflow.sh

To add a task definition, use the [Register Task Definition](http://gbdxdocs.digitalglobe.com/docs/register-a-task-with-the-task-registry) API

To view a task defintion, use the [Get Task Definition](http://gbdxdocs.digitalglobe.com/docs/get-a-task-definition-from-the-task-registry) API

To delete a task, use the [Delete a Task](http://gbdxdocs.digitalglobe.com/docs/delete-a-task) API

### tensorflowWorkflow.json

This is the sample workflow. It mounts the s3 path as input, runs the test-tensorflow task, and writes its output to s3 using the StageToS3 task

## Shell scripts

### buildTestTensorflow.sh

Constructs the tdgp/testtensorflow image

### pushTestTensorflow.sh

Pushes the tdgp/testtensorflow image to DockerHub

### runTestTensorflow.sh

Runs the tdgp/testtensorflow image locally. Assumes that /opt/mnt has the folder structure that GBDx expects. In particular, the directory /opt/mnt/work/input/data/ must exist. If one is trying to fully mimic the GBDx folder structure, the following files should be present:

+ Folder /opt/mnt/work/input/<input_dir_name> for all directory inputs
+ File /opt/mnt/work/gbdx_runtime.json if using task impersonation. This should be in the format: { "user_token": "\<GBDX_TOKEN\>" }
+ File /opt/mnt/work/input/ports.json for string inputs. This should be in the format: { "\<param_1_name\>": "\<param_1_value\>", "\<param_2_name\>": "\<param_2_value\>" }

_NOTE_: The /opt/mnt/work/output folder will not be created by the system. It must be manually created

### testTensorflow.sh

Imports tensorflow within Python and captures the output
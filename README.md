# flaskapp

A collection of scripts and chef recipes to stand up a flask application
on an arbitrary number of EC2 instances.

# Architecture

Calling `ec2.rb` creates the specified number of instances in an AWS VPC.
After initial provisioning, cloud-init uses git to checkout the cookbooks
and Berkshelf installs the dependencies.  Chef Zero is then run to execute
the cookbooks needed to configure nginx and deploy the application.

After provisioning, the script registers each instance in the ELB. Once the
health check returns a 200 OK, the instance begins to serve traffic to the
public.


# Pulumi notes
- store state locally: `pulumi login --local`
- print version: `pulumi version`
- update stack resources: `pulumi up`
- destroy stack resources: `pulumi destroy`
- delete stack: `pulumi stack rm`
- help: `pulumi help up` (replace `up` with the desired command)
- display stack config: `pulumi config`
- set config entry: `pulumi config set key value`
- set config secret: `pulumi config set --secret password S3cr37`
- display output value: `pulumi stack output valueName`
- display output secret: `pulumi stack output password --show-secrets`
- display output as json: `pulumi stack output --json`
- create empty stack: `pulumi stack init stackName`
- create empty stack in a organization: `pulumi stack init broomllc/staging`
- view stack resources: `pulumi stack`
- list stacks: `pulumi stack ls`
- select stack: `pulumi stack select stackName`
- export stack: `pulumi stack export --file stack.json`
- import stack: `pulumi stack import --file stack.json`


- create project from template: `pulumi new aws-java`
- create gradle project: `pulumi new java-gradle --dir my_first_app --name my_first_app -y`


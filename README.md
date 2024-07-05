#### Initialize project
It will download provider's plugins:
```bash
terraform init
```
#### Format all *.tf files:
It will clean up all extra spaces and formatting:
```bash
terraform fmt
```
### Validate scripts
It will tell whether the syntax in *.tf files is correct:
```bash
terraform validate
```
### Plan your deployment
This will just do dry-run telling you what will be done when you decide to apply:
```bash
terraform plan
```
### Deploy!
```bash
terraform apply
```
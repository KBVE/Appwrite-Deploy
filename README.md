# Apppwrite-Deploy
This action allows you to deploy your Appwrite functions using GitHub actions.

# Setup
To get started simply create a `.appwrite` file in each of your function folders or at the root if you only intend to deploy one function.
The .appwrite file should look like this:
```bash
COMMAND="node ." # The command that starts your function
FUNCID="612934711598e" # The id of your function
CODE="./"
```

# Inputs

- **endpoint** Your Appwrite endpoint
- **project** The Appwrite project id
- **key** The Appwrite API token
- **single** `true` if you are deploying one function from your root directory; `false` if you are deploying multiple functions from multiple subdirectories (default: 'true')
- **code** The directory containing your function (default: './')
- **locale** The locale of the cli (default: 'en-US')

# Example

```YAML
name: Deploy to Appwrite
on:
  push:
    branches:
     - master

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - name: Deploy my function to Appwrite
        uses: rdmchr/Appwrite-Deploy@v0.1
        with:
          endpoint: '[ Your Appwrite endpoint ]'
          project: '[ The id of your Appwrite project ]'
          key: '[ Your Appwrite API Token ]'
```
#!/bin/bash
# export PATH=$PATH:/home/vivi/develop/ZELO/zelo-service-billet/bin
# fnm use 18 2>/dev/null
# export PATH=$PATH:/home/vivi/dev/@tts/bin
# env-cmd ts-node -r tsconfig-paths/register ./apps/cli/src/main.ts
# env-cmd -f .env.remote nest start --watch

FILE=src/main.ts

ts-node -r tsconfig-paths/register $FILE

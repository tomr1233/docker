#!/bin/sh
set -x

# Replace your constants file
cp /constants.ts /app/packages/lib/constants.ts

# Remove the built cache that might contain the old constants
rm -rf /app/apps/web/.next/cache
rm -rf /app/apps/web/.next/static

# Run the original startup process
/scripts/start.sh

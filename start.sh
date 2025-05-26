#!/bin/sh
cp /constants.ts /calcom/packages/lib/constants.ts
find /calcom -name "constants.ts" -exec cp /constants.ts {} \; 2>/dev/null || true
rm -rf /calcom/.next/cache 2>/dev/null || true
exec npm start

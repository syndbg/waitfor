#!/usr/bin/env bash
file=$1
retry_limit=$2
count=0

while ! test -f "$file"; do
  if [ "$count" -lt "$retry_limit" ]; then
      ((count++))
      sleep 1
      echo "Still waiting. Try: $count"
  else
      echo "Retry limit exhausted"
      exit 1
  fi
done

exit 0

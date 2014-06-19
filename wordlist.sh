#! /bin/bash
# ============================================================================
# This script merges a wordlist into one file,sorts it and removes  duplicates.
# Created by Kevcoh; however, anyone is free to modify and re-distribute it.
# ============================================================================
mkdir -p ~/wordlists && cd ~/wordlists

#Get local wordlist and merge
echo "Forming a mass wordlist"
cat ~/wordlists/*.lst >> ~/merged.lst
echo "Mass wordlist formed, now sorting and removing duplicates....."

#sortig and removing duplicates
cat ~/merged.lst |tr "" "\n" | sort |cat ~/merged.lst | uniq>final.lst
echo "sorting done"

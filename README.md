# Pewlett-Hackard-Analysis

## Overview

### This projects looks into employee information. Using SQL to query different tables together to find summarize and output information about employees, especially their age and retirement.

## Results

- The largest 'title' of employees eligible for retiring are Senior Engineers, closley followed by Senior Staff
- the [retirement_titles.csv](https://github.com/mbugyis/Pewlett-Hackard-Analysis/blob/0459c345f8232d9bb57b29c6c00b0299a8f39fcd/Data/retirement_titles.csv) file is a broad overview of the retiring employees, while the [unique_titles.csv](https://github.com/mbugyis/Pewlett-Hackard-Analysis/blob/0459c345f8232d9bb57b29c6c00b0299a8f39fcd/Data/unique_titles.csv) file is the distinct count of retiring employees with their most recent title
- there are approximately 1549 employees born in 1965 that are eligible for the mentorship program
- There are more employees who retired than those in eligible for mentorship program

## Summary

- Using the retirement_titles.csv, one can determine how many employees have been promoted using how many times their emp_no appears in the table
  - Furthurmore, it looks at the retired employees who got promoted and those who retired without a promotion
- The mentorship eligibility program only looks at those who were born in 1965. Another query can be created that looks at those who are soon to be eligible.
  - Also, one can look at those who have been eligible in the past and didn't take the opportunity.

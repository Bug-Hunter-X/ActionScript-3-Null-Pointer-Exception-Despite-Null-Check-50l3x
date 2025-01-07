# ActionScript 3 Null Pointer Exception Despite Null Check

This repository demonstrates a common, yet subtle, null pointer exception in ActionScript 3 that can occur even when seemingly appropriate null checks are in place.  The problem arises from the dynamic typing of ActionScript 3 and how it handles null checks with nested object properties.

The `bug.as` file shows the problematic code.  The `bugSolution.as` file illustrates a corrected approach. 

## Problem
The issue stems from the fact that a null check on `myData.someField` does *not* guarantee that `myData.someField.someProperty` is safe to access. If `myData` itself is null, accessing `myData.someField` will throw an error before the conditional statement even executes.

## Solution
The solution involves explicitly checking all levels of the object's properties before access.  This ensures every level is safely referenced.

## How to Reproduce
1. Clone this repository.
2. Open the `bug.as` file in an ActionScript 3 editor (like FlashDevelop).
3. Run the code. You'll likely encounter a null pointer exception.
4. Repeat with the `bugSolution.as` file to see the corrected approach.

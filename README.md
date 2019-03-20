# dempiere4i
A port of the Adempiere Postgres Database

The purpose of the project is to make convert the Postgres SQL database to allow it to be run on the IBM i native database. This requires that all file and column names are changed to provide a name that is a maximum of 10 characters in length. The original name will still be referenceable through SQL but the 10 character name allows the content to be mapped in native languages such as RPG/C etc.

The initial Database will now install onto an IBM i (this includes any indexes), the next stage is to convert the Functions to be DB2 compatible before we can go ahead and convert the views as the view rely on a number of functions.

As the main interfaces are Java based we expect the application to be able to run within the IBM i Websphere technology, this has been accomplished in the past by using Websphere but the Postgres database was located on a remote Linux Server? This is obviously something the IBM i should be able to perform better.

As soon as we get the initial set up running this repository will be made public and a merge of the additional work done for Adempiere will be migrated such as language conversions etc. 

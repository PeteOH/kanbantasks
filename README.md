# Outlook Tasks Kanban Taskboard previously **JanBan**

Note that this repository is based the janban found at [Gitlab](https://gitlab.com/janware/janban).

The Outlook Tasks KanBan is a kanban board style view for Outlook Tasks.

The primary changes of this version are:

### Placed the tasks back into a single folder
This was to allow tasks to be assigned by someone else. It also allows us to use SharePoint Tasks (which does not have sub-folders)

### Enable the use of other Tasks folders
Using the Outlook Store and Folder you can customise which list to use.
This can be a 
 * Shared Task List
 * Sharepoint Task List
 * Your own task list
Visible in the App Configuration Section (Sharepoint Lists Folder and Task List
(also has a link to the task list URL)

### Filtering Tasks - by "Assigned to"
Added the filter

### Platforms supported
Only tested with Outlook 2016 running on Windows 10.
It may also work with earlier Outlook versions

## INSTALL

Clone [the kanbantasks github page](https://github.com/PeteOH/kanbantasks), 
Then run install.cmd.

This will point Outlook Today to use the kanban.html in this folder.

To update - use git pull

/***************************************************************************************************
Procedure:          dbo.ExecuteLinkRequestDownload
Create Date:        2020-07-24
Author:             Dev Rod
Description:        Calls XP_CMDshell procedure passing defined parameters that executes youtube-dl

Call by:            SQLYoutubeAPI

Affected table(s):  dbo.DownloadRequest
Used By:            SQLYoutube applications and web API actions
Parameter(s):       @RequestID - Works to know which request is stored in dbo.DownloadRequest
Usage:              EXEC dbo.ExecuteLinkRequestDownload
                        RequestID = 1

                    Still needs to check multiple running requests from different users

****************************************************************************************************
SUMMARY OF CHANGES
Date(yyyy-mm-dd)    Author              Comments
------------------- ------------------- ------------------------------------------------------------
2020-07-24         DevRod               Initial version that runs executables and downloads videos with fixed parameter.

***************************************************************************************************/




/***********************************
Executes youtube-dl with specified 
parameters.
************************************/


EXEC xp_cmdshell 'C:\MSSQLExecutables\youtube-dl.exe "https://www.youtube.com/watch?v=C0DPdy98e4c"';


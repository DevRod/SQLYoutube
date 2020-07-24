/***************************************************************************************************

Small setup to run cmd executables and required folders to work with SQLYoutube procedures.


Author: DevRod 2020
Creation Date: 2020-07-24
***************************************************************************************************/




/***********************************
Refer to this link if you have any 
doubts about xp_cmdshell and it's security:
https://docs.microsoft.com/en-us/sql/database-engine/configure-windows/xp-cmdshell-server-configuration-option?view=sql-server-ver15
************************************/


EXECUTE sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE;  
GO  
EXECUTE sp_configure 'xp_cmdshell', 1;  
GO  
RECONFIGURE;  
GO 


/***********************************
If you need to disable xp_cmdshell 
just use this block.
************************************/

/*

EXECUTE sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE;  
GO  
EXECUTE sp_configure 'xp_cmdshell', 0;  
GO  
RECONFIGURE;  
GO 

*/


/***********************************
Create a folder in your drive root.
For this project is created the folder:

C:\MSSQLExecutables\

Store youtube-dl.exe in mentioned folder:
https://github.com/ytdl-org/youtube-dl/

************************************/







Imports System.Web
Public Class config 



    'MySQL Connection

    Public Host As String = "localhost" ' Enter your Host/Server here.
    Public Usr As String = "root" ' Enter your SQL Username here, defualt on localhost is "root".
    Public Pass As String = "" ' Enter your SQL password here, defualt on localhost is empty.
    Public DB As String = "moopledev" ' Enter your Database name here.

    'Server Information

    Public SvrName As String = "MoopleDev" 'Enter your server name here.
    Public SvrVer As Integer = "144" 'Enter your server version here.
    Public SvrSub As Integer = "3" 'Enter your server sub-version here.

    Public SvrEXP As Integer = "6" 'Enter your server experience rate here.
    Public SvrDRP As Integer = "6" 'Enter your server drop rate here.
    Public SvrMES As Integer = "6" 'Enter your server meso rate here.

    Public DownloadLink As String = "http://google.com" 'Enter your Client Download link here.
    Public SetupLink As String = "http://google.com" 'Enter your Version Setup link here. Note: if the value is null the link will not be shown

    'Change site info (Do not touch if you do not know what you are doing).
    Public Header As String = "This site is created by SnopBoy and maintained by the honorable Rakeda. A god amongst men who decided VB.Net was truly the most legendary of all coding languages. By using this site you aknowledge that he is god."
    Public Title As String = SvrName
    Public WelcomeText As String = "Someone put some latin shit here, but I don't read that shit. I ain't no pope."

End Class

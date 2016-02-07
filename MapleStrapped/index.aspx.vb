Imports MapleStrapped.config
Imports MySql.Data.MySqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Dim config As New config




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim userid As String = Session("user_id")
        
        If String.IsNullOrEmpty(userid) Then
            Session("User_Id") = ""
        End If

        If userid = "" Then
            loggedin.Visible = False
            notloggedin.Visible = True
            loginform.Visible = True
            loggedinform.Visible = False
        Else
            loggedin.Visible = True
            notloggedin.Visible = False
            loginform.Visible = False
            loggedinform.Visible = True
            Label2.Text = "Welcome back, " + userid
        End If

        'Please refrain from editing anything below and use the config.vb to edit the sites contents.

        Title = config.Title
        ServerName.Text = config.SvrName
        HeaderName.Text = config.SvrName
        Header.Text = config.Header
        Version.Text = config.SvrVer.ToString + "." + config.SvrSub.ToString
        WelcomeMessage.Text = config.WelcomeText

        ExpRate.Text = config.SvrEXP.ToString + "x"
        DropRate.Text = config.SvrDRP.ToString + "x"
        MesoRate.Text = config.SvrMES.ToString + "x"


        If 0 = 0 Then 'Will get back to in a bit
            PlayersOnline.Text = "<font color=""red"">Offline</font>"
        Else
            PlayersOnline.Text = "<font color=""green""></font>"
        End If


    End Sub

    Protected Sub Login_Click(sender As Object, e As EventArgs) Handles Login.Click
        Dim conn As New MySql.Data.MySqlClient.MySqlConnection
        Dim MysqlConn = New MySqlConnection
        Dim reader As MySql.Data.MySqlClient.MySqlDataReader

        MysqlConn.ConnectionString = "server=" & config.Host & ";" _
        & "user id=" & config.Usr & ";" _
        & "password=" & config.Pass & ";" _
        & "database=" & config.DB

        Try
            Dim sql As String = "SELECT password FROM accounts WHERE name = '" + UsernameBox.Text + "'"
            conn.ConnectionString = MysqlConn.ConnectionString
            Dim cmd = New MySqlCommand(sql, conn)
            conn.Open()

            reader = cmd.ExecuteReader()

            While reader.Read()
                If PasswordBox.Text = reader.GetString("password") Then
                    [Error].Text = "Logged in"
                    Session("user_id") = UsernameBox.Text
                    Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)


                Else
                    [Error].Text = "Wrong username or password"
                End If
                
            End While
            conn.Close()
            '[Error].Text = "Connected"
        Catch ex As MySql.Data.MySqlClient.MySqlException
            Select Case ex.Number
                Case 0
                    [Error].Text = "Cannot connect to server. Contact administrator"
                    conn.Close()
                Case 1045
                    [Error].Text = "Invalid username/password, please try again"
                    conn.Close()
            End Select
        End Try




    End Sub

    Protected Sub logout_Click(sender As Object, e As EventArgs) Handles logout.ServerClick
        Session("user_id") = ""
        Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)

    End Sub
End Class
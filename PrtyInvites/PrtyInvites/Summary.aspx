<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="Summary.aspx.cs" Inherits="PartyInvites.Summary" %>
<%@ Import Namespace="PartyInvites" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RSVP Summary</title>
    <link rel="stylesheet" href="PartyStyles.css" />
</head>
<body>
    <h2>RSVP Summary</h2>

    <h3>People who will attend</h3>
    <table>
        <thead>
            <tr><th>Name</th><th>Email</th><th>Phone</th></tr>
        </thead>
        <tbody>
            <% var yesData = ResponseRepository.GetRepository().GetAllResponces()
                  .Where(r=>r.WillAttend.HasValue && r.WillAttend.Value);
               foreach (var rsvp in yesData) {
                   string htmlString =
                     String.Format("<tr><th>{0}</th>" +
                                   "<th>{1}</th>" +
                                   "<th>{2}</th></tr>",
                                    rsvp.Name, rsvp.Email, rsvp.Phone);
                  Response.Write(htmlString);
               }
                  %>
        </tbody>
    </table>

    <h3>People who will not attend</h3>
    <table>
        <thead>
            <tr><th>Name</th><th>Email</th><th>Phone</th></tr>
        </thead>
        <tbody>
            <%= GetNoShowHtml() %>
        </tbody>
    </table>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="Default.aspx.cs" Inherits="PrtyInvites.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Party Invite</title>
</head>
<body>
    <form id="rsvpform" runat="server">
        <div>
            <h1>NEw Year's Eve at Jacqui's!</h1>
            <p>We're going to have an exciting party. And you're invited!</p>           
        </div>
        <div>
            <label>Your Name:</label>
            <input type="text" id="name"/>
        </div>
        <div>
            <label>Your Email:</label>
            <input type="email" id="email"/>
        </div>
        <div>
            <label>Your phone:</label>
            <input type="text" id="phone"/>
        </div>
        <%--Drop down menu--%> 
        <div>
            <label>Will you attend</label>
            <select id="willattend">
                <option value="">Chose an option</option>
                <option value="true">Yes</option>
                <option value="false">No</option>
            </select>
        </div>
        <div>
            <button type="submit">Submit RSVP</button>
        </div>
    </form>
</body>
</html>

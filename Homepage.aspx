<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="RZASolution.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/CSS/GeneralCSS.css" rel="stylesheet" /> 
    <title>RZA Bookings</title>
</head>
<body>
    <div class="header">
        <h2>RZA</h2>
    </div>
    <form id="form1" runat="server">
        <nav class="nav">
            <ul>
                <li><asp:Button ID="Activities" CssClass="btn" runat="server" Text="Activities" /></li>
                <li><asp:Button ID="Educationvisit" CssClass="btn" runat="server" Text="Educational visit" onclick="Educationvisit_Click"/></li>
                <li><asp:Button ID="ZooMap" CssClass="btn" runat="server" Text="Zoo map" OnClick="ZooMap_Click"  /></li>
                <li><asp:Button ID="LoginBtn" CssClass="btn" runat="server" Text="Login" OnClick="Loginbtn_Click" /></li>
                <li><asp:Button ID="RegisterBtn" CssClass="btn" runat="server" Text="Register" OnClick="RegisterBtn_Click" /></li>
            </ul>
        </nav>
        <div class="parallax"></div>
        <div class="content">
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut tristique odio. Integer dapibus, ligula a sollicitudin scelerisque, ligula risus interdum lectus, non volutpat eros magna at dolor. In hac habitasse platea dictumst. Proin maximus justo non libero feugiat, ac elementum justo malesuada. Mauris eleifend dui sed tristique accumsan. Vivamus vehicula, est in ultrices fermentum, ligula libero fermentum lectus, vel molestie sapien elit a nibh. Phasellus ultrices est eget consequat congue. Morbi quis ipsum malesuada, luctus libero eu, gravida mauris. Integer in quam ac sem maximus rutrum. Suspendisse et vehicula sem, at cursus eros. Proin vehicula augue nec urna volutpat tristique. Phasellus suscipit mi sit amet elit vestibulum lobortis. Morbi tempus, libero nec eleifend semper, velit augue cursus ante, et eleifend arcu nisi vitae odio. In euismod eros auctor ipsum tempus suscipit.
            </p>
            <p>
                Quisque nec turpis sit amet mi malesuada laoreet. Fusce quis arcu eget leo sollicitudin fermentum. In scelerisque bibendum magna nec dapibus. Pellentesque non justo sed dolor gravida venenatis. Integer rhoncus vitae lorem ac luctus. Vivamus a quam vitae justo iaculis rhoncus. Donec ac velit odio. Fusce convallis justo eget dictum lacinia. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus lobortis volutpat vehicula. Nulla vel lacus a sapien pharetra maximus. Donec consequat nec neque at malesuada. Donec suscipit justo eu consequat faucibus. Nulla facilisi. In hac habitasse platea dictumst.
            </p>
            <p>
                Duis tristique nisi libero, id varius magna pellentesque id. Nullam egestas nisl a libero ullamcorper, non mattis nulla maximus. Ut fermentum, mauris nec sodales ullamcorper, libero est sollicitudin lacus, in malesuada augue turpis vitae felis. Sed volutpat quam sed enim tincidunt, quis faucibus libero consequat. Vestibulum ac arcu eget arcu vulputate tempor in sit amet odio. Aliquam in placerat nisi. Pellentesque viverra, ipsum vitae consectetur posuere, odio leo vehicula ex, in vehicula nulla arcu non mauris. Nullam eleifend placerat augue, a bibendum ex tincidunt in. Donec ut fermentum urna. In ac orci sit amet velit facilisis auctor ut a erat. Sed volutpat consequat dolor, non efficitur ante rhoncus in.
            </p>
            <p>
                Aliquam scelerisque felis eu tellus facilisis, a scelerisque est placerat. Aliquam dictum sapien ac erat posuere, at venenatis mi condimentum. Nullam non ante eu lacus viverra malesuada in vel ligula. Sed venenatis, libero nec dapibus gravida, tortor elit ultrices est, id posuere dui eros eu dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque vehicula mi eu consectetur egestas. Nam at aliquam sapien, at ultricies mi. Aenean sodales eleifend enim, a gravida nibh varius nec. Proin posuere mauris ut enim malesuada, non condimentum metus tempus. Sed pellentesque velit et odio elementum, vel placerat nisi dignissim. Aenean vehicula viverra turpis, in feugiat turpis fermentum vitae.
            </p>
        </div>
    </form>
        <footer>
        <ul class="footer-links">
            <li><a href="AboutUS.aspx">About Us</a></li>
            <li><a href="ContactUs.aspx">Contact Us</a></li>
            <li><a href="#">Terms and Conditions</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="FAQ.aspx">FAQ</a></li>
        </ul>
    </footer>
    </body>
</html>

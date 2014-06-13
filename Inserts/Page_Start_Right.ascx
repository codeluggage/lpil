<%@ Control Language="c#" AutoEventWireup="True" %>
<%@ Register TagPrefix="PFWeb" Namespace="PFWeb" Assembly="PFWeb" %>
<script language="C#" runat="server">
string GetUserID(Pageflex.Ur.Storefront.Data.StorefrontAPI isini) {
  return isini.GetValue("SystemProperty", "LoggedOnUserID", null);
}
int GetShoppingCartCount() {
  Pageflex.Ur.Storefront.Data.StorefrontAPI isini =
    new Pageflex.Ur.Storefront.Data.StorefrontAPI();
  string userID = GetUserID(isini);
  string[] docsInCart = isini.GetListValue("UserListProperty", "DocumentsInShoppingCart", userID);
  return (docsInCart != null) ? docsInCart.Length : 0 ;
}
void Page_Load(object sender, EventArgs e) {
  if (!Page.IsPostBack) {
    int shoppingCount = GetShoppingCartCount();
    numCart.Text = shoppingCount.ToString();
    ItemOrItems.Text = (shoppingCount == 1) ? "item" : "items";
  }
}
</script>

<style type="text/css">
div#page_right {
  width: 160px;
  margin-left: 10px;
  font-size: 12px;
  position: relative;
  top: -12px;
}
#page_right > div {
  display: block;
  margin: 10px 5px;
  padding: 10px;
}
#quick_links  {
  background: url(Custom/Themes/sjp_2014_06/CSS/Images/blue_box_repeater.gif) repeat-x scroll left bottom #E6F2F6;
}
#page_right > div > p {
  margin: 0 0 10px 0;
}
#quick_links > p:after {
  position: relative;
  top: 1px;
  content: url(Custom/Themes/sjp_2014_06/CSS/Images/breadcrumb_arrow.png);
}
#quick_links > h2 {
  margin: 5px 0 10px 0;
}
</style>

<div id="page_right">
  <div id="right_basket" class="group">
    <p>
      You have <asp:Label id="numCart" style="color:#ad9f96;" CssClass="numCart" runat="server"/> <asp:Label id="ItemOrItems" runat="server"/> in your basket.
    </p>
    <PFWeb:LinkButton id="btnViewCart" name="btnViewCart" runat="server" CssClass="siteButton" UseTrueLink="true" Link="UserContentShoppingCart.aspx" Text="View Your Basket" />
  </div>

  <div id="quick_links">
    <h2>Quick Links</h2>
    <p>
      <a href="http://www.sjpconnect.co.uk/sjp_pdfs/Track%20Your%20deliveries.pdf">
        Delivery Tracking Guide
      </a> (PDF)
    </p>
    <p>
      <a href="http://www.sjpconnect.co.uk/sjp_pdfs/Guide%20to%20Investor%20Magazine.pdf">
        Investor Guide
      </a> (PDF)
    </p>
    <p>
      <a href="http://www.sjpconnect.co.uk/sjp_pdfs/Approvals%20User%20Guide.pdf">
        Stationery Approvals Guide
      </a> (PDF)
    </p>
  </div>

  <div id="track_order_div">
    <h2>Track Your Order</h2>
    <input type="text" value="" name="order_ref" id="track_order_input"
           placeholder="Order Ref"
           onKeydown="javascript:if (event.which == 13) {
             return getMailInfo(
               document.getElementById('track_order_input').value);}">
    <a onclick="javascript:getMailInfo(
      document.getElementById('track_order_input'
      ).value)"
      href="javascript:void(0)" class="siteButton">Go</a>
    <div id="mail_result">
    </div>
  </div>
</div>

// Cross site JSON request (JSONP)
// Fetch the mailing information from Perivan Infocloud

function createScriptTag(source) {
  var head= document.getElementsByTagName('head')[0];
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = source;
  head.appendChild(script);
}

function getMailInfo(order_ref) {
  console.log(order_ref);
  mail_info = null;
  var url = "http://info.perivansolutions.co.uk/delivery.json?order_ref="
  url = url + order_ref + "&callback=printMailInfo"
  createScriptTag(url);
  return false;
}

function printMailInfo(jsonp){
  console.log('Reply from Perivan Infocloud:');
  console.log(jsonp);

  var result_div = document.getElementById('mail_result');

  var para = document.createElement('p');
  if (jsonp['is_post']) {
    para.innerHTML = 'Your order was sent by post on ' + jsonp['date_sent'];
    result_div.appendChild(para);
  } else {
    para.innerHTML = 'Your order was sent by DPD on ' + jsonp['date_sent'];
    result_div.appendChild(para);

    var link = document.createElement('a');
    link.href = jsonp['url'];
    link.innerHTML = 'Track on DPD.co.uk';
    result_div.appendChild(link);
  }
}

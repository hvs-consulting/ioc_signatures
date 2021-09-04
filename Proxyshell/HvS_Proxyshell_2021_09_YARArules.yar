rule WEBSHELL_ASPX_ProxyShell_Aug15 {
   meta:
      description = "Webshells iisstart.aspx and Logout.aspx"
      author = "Moritz Oettle"
      date = "2021-09-04"

   strings:
      $g1 = "language=\"JScript\"" ascii
      $g2 = "function getErrorWord" ascii
      $g3 = "errorWord" ascii
      $g4 = "Response.Redirect" ascii
      $g5 = "function Page_Load" ascii
      $g6 = "runat=\"server\"" ascii
      $g7 = "Request[" ascii
      $g8 = "eval/*" ascii

      $s1 = "AppcacheVer" ascii /* HTTP Request Parameter */
      $s2 = "clientCode" ascii /* HTTP Request Parameter */
      $s3 = "LaTkWfI64XeDAXZS6pU1KrsvLAcGH7AZOQXjrFkT816RnFYJQR" ascii

   condition:
      filesize < 1KB and
      ( 1 of ($s*) or 4 of ($g*) ) 
}

rule WEBSHELL_Mailbox_Export_PST_ProxyShell_Aug26 {
   meta:
      description = "Webshells generated by an Mailbox export to PST and stored as aspx: 570221043.aspx 689193944.aspx luifdecggoqmansn.aspx"
      author = "Moritz Oettle"
      date = "2021-09-04"

   strings:
      $x1 = "!BDN" /* PST file header */
      
      $g1 = "Page language=" ascii
      $g2 = "<%@ Page" ascii
      $g3 = "Request.Item[" ascii
      $g4 = "\"unsafe\");" ascii
      $g5 = "<%eval(" ascii
      $g6 = "script language=" ascii
      $g7 = "Request[" ascii

      $s1 = "gold8899" ascii /* HTTP Request Parameter */
      $s2 = "exec_code" ascii /* HTTP Request Parameter */
      $s3 = "orangenb" ascii /* HTTP Request Parameter */
   condition:
      filesize < 500KB and
      $x1 at 0 and
      ( 1 of ($s*) or 3 of ($g*) ) 
}
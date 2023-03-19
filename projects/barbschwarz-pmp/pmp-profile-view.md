
```html
<style>
  #content > div > form {
    display: none;
  }
  
  
  .pmpro_member_profile > p.pmpro_member_directory_barb_company {
    margin-bottom: 0;
  }
  
  .pmpro_member_profile > blockquote {
    position: unset;
    font-size: unset;
    margin: unset;
    padding: unset;
    border-left: unset;
    font-style: unset;
    color: #333;
  
    margin-bottom: 1.3em;
  }
  
  /* Remove first <hr> */
  #content > div > hr:nth-child(4) {
    display: none;
  }
  
  /* Remove first "View All Members" */
  #content > div > p:nth-child(5) {
    display: none;
  }
  
  /* Remove Search Bars */
  #content > div > div.is-layout-flex div > form {
    display: none;
  }
    
  
  /* Remove "View All Members" */
  #content > div > div.is-layout-flex div > .pmpro_actions_nav {
    display: none;
  }
  
  /* Remove <hr> */
  .is-layout-flow.wp-block-column > hr {
    display: none;
  }
  
  /* Add spacing after Company */
  /* .pmpro_member_profile > p.pmpro_member_directory_barb_company {
    margin-bottom: 20px;
  } */
  
  p.pmpro_member_directory_barb_pod_biography {
    margin-top: 20px;
  }

  /* Remove PMP menu below page */
  #content > div > div > div > p {
    display: none;
  }

  /* Remove HR below page. */
  #content > div > div > div > hr {
    display: none;
  }

  /* Remove search from above */
  #content > div > div > div > form {
    display: none;
  }

  /* Display line-breaks for barb_overview */
  [class*="pmpro_member_profile"] > p.pmpro_member_directory_barb_overview { white-space: pre-line; }

  [class*="pmpro_member_profile"] > p.pmpro_member_directory_bio {
    white-space: pre-line;
  }

  [class*="pmpro_member_profile"] > p.pmpro_member_directory_barb_overview {
    white-space: pre-line;
  }

  /* --------------------------------------------------------------------------------------------------
    Portfolio: Image Gallery
  --------------------------------------------------------------------------------------------------*/
  /* Image 1 */
  [class*="pmpro_member_profile"] > [class*="pmpro_member_directory_barb_portfolio"] > strong { display: none; }
  #content > div > div > div > div.is-layout-flex.wp-container-8.wp-block-columns > div:nth-child(1) > p { display: none; }
  .pmpro_member_profile .pmpromd_filename { display: none; }
  .pmpro_actions_nav { display: none; }
  
</style>

```


# PMP Shortcode
```sh
# https://www.barbschwarz.com/membership-account/profile/ritademiranda/
[pmpro_member_profile show_email="false" show_level="false" show_startdate="false" avatar_size="256" show_bio="false" fields="Overview,barb_overview;Country,barb_country;Professional Category,barb_professional_category;Title,barb_title;Company,barb_company;Education,education;Video,barb_pods_video;"]

```


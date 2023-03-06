
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
  #pmpro_member_profile-1 > p.pmpro_member_directory_barb_overview {
    white-space: pre-wrap;
  }

  #pmpro_member_profile-1 > p.pmpro_member_directory_bio {
    white-space: pre-line;
  }
  
</style>

```


# PMP Shortcode
```sh
# https://www.barbschwarz.com/membership-account/profile/ritademiranda/
[pmpro_member_profile show_email="false" show_level="false" show_startdate="false" avatar_size="256" show_bio="true" fields="Country,barb_country;Professional Category,barb_professional_category;Title,barb_title;Company,barb_company;Education,education;Portfolio,barb_pod_images"]
```


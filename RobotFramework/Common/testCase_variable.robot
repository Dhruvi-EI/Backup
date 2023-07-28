*** Settings ***


*** Variables ***

${url}  https://intranet.einfochips.com/ 
${mouse_hover_to_home}   css:div[class='collapse navbar-collapse navbar-ex1-collapse']>ul>li>a[class='dropdown-toggle nav-link']
${click_holiday_list}     xpath://a[text()='Holiday List']
${select_holiday_year_dropdown}     css:select[id='holiday_year']
${click_year}     css:option[value='2022']
${select_months}     css:select[id='month_id']>option
${select_submit_button}     css:button[class='btn btn-success']
${description_of_holiday_list}     css:table[id='mt'] tbody td:nth-child(4)
${click_pagination_2}     css:a[id='2']
${click_pagination_3}     css:a[id='3']
${click_pagination_4}     css:a[id='4']
${select_year}     css:option[value='2023'] 
# Ontario-Municipalities-Scraper
Scraper used to get information about municipalities in Ontario (from AMO site)

**Documentations**

Steps to scrape the desired data:

**1.**	Find the site where data are stored, preferably a site where data are in one fixed place. For example, data appear in the same format on every page (e.g. Wikipedia, Twitter), or site with data in a list (e.g. Amazon products list). In this case we used AMO (Association of Municipalities of Ontario) page.

**2.**	Use [BeautifulSoup](https://www.crummy.com/software/BeautifulSoup/) package in Python to scrape/parse the html content pages for useful data. See Python code (`.py` in `/Scraper Script/`) for detail

**3.**	For this case: Ontario Municipalities, here are the general steps:

&nbsp; &nbsp; &nbsp; &nbsp; **a.**	Crawl the main page, it contains the list of all municipalities  
&nbsp; &nbsp; &nbsp; &nbsp; **b.**	Put the urls in a list, loop through each of them and take out info from each page  
&nbsp; &nbsp; &nbsp; &nbsp; **c.**	When the extracted data is stored in a list, export it to a csv file (`.csv`) for further manipulation in Excel/Databases

**4.**	Now we have crawled all the data available from the target site

**5.**	For this specific task, we also need to manually extract the mayor’s email. We decided that to use Google to find pages that contains the required info.

&nbsp; &nbsp; &nbsp; &nbsp; **a.**	Get the list of mayors’ names and their associated municipality.  
&nbsp; &nbsp; &nbsp; &nbsp; **b.**	We Google the phrase “mayors_name + municipality”. Use Excel to generate the Google search url.  
&nbsp; &nbsp; &nbsp; &nbsp; **c.**	(Optional) Wrote an [AutoHotKey](https://www.autohotkey.com/) script (`browser.ahk` located in `/Automation/`) to open browser tabs with Google searched result for faster manual process.

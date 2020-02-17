## method.md

**Documentations**

Steps to scrape the desired data:

1. Find the site where data are stored, preferably a site where data are in one fixed place. For example, data appear in the same format on every page (e.g. Wikipedia, Twitter), or site with data in a list (e.g. Amazon products list). In this case we used AMO (Association of Municipalities of Ontario) page.

2. Use BeautifulSoup package in Python to scrape/parse the html content pages for useful data. See Python code (`.py` in `/Scraper Script/`) for detail

3. For this case: Ontario Municipalities, here are the general steps:

        a. Crawl the main page, it contains the list of all municipalities
        b. Put the urls in a list, loop through each of them and take out info from each page
        c. When the extracted data is stored in a list, export it to a csv file (.csv) for further manipulation in Excel/Databases

4. Now we have crawled all the data available from the target site

5. For this specific task, we also need to manually extract the mayor’s email. We decided that to use Google to find pages that contains the required info.

        a. Get the list of mayors’ names and their associated municipality.
        b. We Google the phrase “mayors_name + municipality”. Use Excel to generate the Google search url.
        c. (Optional) Wrote an AutoHotKey script (browser.ahk located in /Automation/) to open browser tabs with Google searched result for faster manual process.

import os
import json
# opens local machine bookmark file that has listing if ALL bookmarks from Chrome


with open ("/Users/<USER>/Library/Application Support/Google/Chrome/Default/Bookmarks") as f:
    stuff = json.load(f)
bookmarkFoldersAndLinksFromBookmarkBar = stuff['roots']['bookmark_bar']['children']

# prints everything that has been on your bookmarks, including folders and individual links saved to bookmark bars
for element in bookmarkFoldersAndLinksFromBookmarkBar:
    print(element)


###############################################################################
# Below code may cause error for you as it an example that would work on mine #
# On my bookmark bar I have a folder called Firebase                          #
# Let's say I want to grab it and all its links                               #
###############################################################################

# firebaseFolder = stuff['roots']['bookmark_bar']['children'][7]['children'] # you may need to play with the index number
# for site in firebaseFolder:
#     print(site['name'], site['url'])
    
    
    # os.system('open -a "Google Chrome" ' + str(site['url'])) # opens the site through linux open command

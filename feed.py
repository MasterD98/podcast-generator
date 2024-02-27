import yaml
from rfeed import *
import xml.etree.cElementTree as xml_tree
with open('feed.yaml','r') as file:
    ymal_data =yaml.safe_load(file)
    
    
    Items=[]
    
    for item in ymal_data['item']:
        newItem=Item(
            title=item['title'],
            author=ymal_data['author'],
            description=item['description'],
            link=ymal_data['link']+item['file']
        )
        Items.append(newItem)

    feed=Feed(
        title=ymal_data['title'],
        link=ymal_data['link'],
        description=ymal_data['description'],
        language = ymal_data['language'],
        items=Items,
    )
       
    print(feed.rss()) 

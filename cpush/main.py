import wikipediaapi

wiki_wiki = wikipediaapi.Wikipedia(
    language='en',
    extract_format=wikipediaapi.ExtractFormat.WIKI
)

with open("search.txt") as f:
    search_query = f.read()

lines = search_query.split("\n")


f = open("report.txt", "w")
for line in lines:
    if not line:
        continue
    f.write(line)
    p_wiki = wiki_wiki.page(line)
    if p_wiki.exists():
        text = p_wiki.summary[0:500]
        f.write(text + "\n\n")
    else:
        f.write(line + "Page does not exist.")

f.close()

import gdown


checkpoints = [
    ('camliraft_things80e.pt','https://drive.google.com/file/d/1nTh4Mugy5XltjcJHa7Byld2KIQ1IXrbm/view?usp=sharing'),
    ("camliraft_things150e.pt","https://drive.google.com/file/d/1BEuKy5WMbaABW5Wz-Gx879kcNJ2Zla2Z/view?usp=sharing")
]
for checkpoint_name, url in checkpoints:
    gdown.download(url, f"./{checkpoint_name}", quiet=False,fuzzy=True)
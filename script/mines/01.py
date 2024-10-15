import requests

url = 'https://www.freeimages.com/photo/peacock-1169961'  # URL of the content to be downloaded
file_name = 'sample_image.png'

response = requests.get(url)

if response.status_code == 200:
    with open(file_name, 'wb') as file:
        file.write(response.content)
    print("File downloaded successfully!")
else:
    print(f"Failed to download file. Status code: {response.status_code}")

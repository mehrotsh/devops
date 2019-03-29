import requests
#url = 'https://qs:1443/systems'
#url = 'https://gm:9443/api/v1/'
url = 'https://vp/api/public/monitoredSystems'
headers = {'Accept':'application/vnd.com.teradata.viewpoint-v1.0+json'}
response = requests.get(url, verify=False,auth=('admin','teradata'), headers=headers)
#esponse = requests.get(url, verify=False, auth=('viewpoint','teradata'))
print (response.json())
print(response.status_code)



from sklearn.cluster import KMeans
import numpy as np
import json
import random
import csv

patiala_lat = 30.3398
patiala_lon = 76.3869

num_samples = 1000 
accident_locations = []
ambulance_locations = []

for i in range(num_samples):

    lat_offset = random.uniform(-0.05, 0.05)
    lon_offset = random.uniform(-0.05, 0.05)
    

    accident_lat = patiala_lat + lat_offset
    accident_lon = patiala_lon + lon_offset
    

    ambulance_lat_offset = random.uniform(-0.01, 0.01)
    ambulance_lon_offset = random.uniform(-0.01, 0.01)
    
    ambulance_lat = accident_lat + ambulance_lat_offset
    ambulance_lon = accident_lon + ambulance_lon_offset
    

    accident_locations.append([accident_lat, accident_lon])
    ambulance_locations.append([ambulance_lat, ambulance_lon])


with open('accident_data.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(['accident_latitude', 'accident_longitude', 'ambulance_latitude', 'ambulance_longitude'])
    for i in range(num_samples):
        writer.writerow([accident_locations[i][0], accident_locations[i][1]])



data = np.genfromtxt('accident_data.csv', delimiter=',', skip_header=1)

kmeans = KMeans(n_clusters=10, random_state=0, n_init=10).fit(data)

Ambulance_locations = kmeans.cluster_centers_.tolist()  # Convert NumPy array to Python list
print(json.dumps(Ambulance_locations))

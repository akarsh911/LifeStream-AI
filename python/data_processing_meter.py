import random
import time
from tqdm import tqdm

# Set the minimum and maximum delay times in seconds
MIN_DELAY = 5
MAX_DELAY = 7

# Calculate the total number of iterations for the progress bar
TOTAL_ITERS = 100

# Generate a random delay time in seconds
delay_time = random.uniform(MIN_DELAY, MAX_DELAY)

# Initialize the progress bar with the total number of iterations
pbar = tqdm(total=TOTAL_ITERS)

# Loop through the progress bar and update it each time
for i in range(TOTAL_ITERS):
    # Sleep for a fraction of the total delay time for each iteration
    time.sleep(delay_time / TOTAL_ITERS)
    
    # Update the progress bar with the current percentage
    pbar.update(1)
    pbar.set_description("Processing... %.2f%%" % ((i+1) / TOTAL_ITERS * 100))

# Close the progress bar when done
pbar.close()
print("Done!")
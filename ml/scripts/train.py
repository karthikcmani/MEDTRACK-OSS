# This script generates a sample dataset for demonstration purposes.
# The CSV file in datasets/ can be used directly as an example.

import pandas as pd
import os

def create_sample_data():
    data = {
        'user_id': [1, 1, 2, 2, 3],
        'medication_id': [101, 102, 101, 103, 104],
        'scheduled_time': ['2026-01-26 08:00', '2026-01-26 20:00', '2026-01-26 09:00', '2026-01-26 21:00', '2026-01-26 07:00'],
        'taken': [1, 1, 0, 1, 1]
    }
    df = pd.DataFrame(data)
    df.to_csv('sample_adherence.csv', index=False)
    print("Sample datasets created.")

if __name__ == "__main__":
    create_sample_data()

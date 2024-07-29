import multiprocessing
import os

bind = f"0.0.0.0:{os.getenv('PORT', '8001')}"
workers = multiprocessing.cpu_count() * 2 + 1
loglevel = "info"

if os.name != 'nt':  # Evitar import de fcntl em Windows
    import fcntl

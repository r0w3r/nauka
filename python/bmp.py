"""A module for dealing witn bmp bitmap image files."""

def write grayscale(filename, pixels):
    """Creates and writes a grayscale BMP file.

    Args: 
        filename: The name of the BMP file me created.

        pixels: Arectangular image stored as a sequance of rows.
            Each row must be an iterable series o integers in the
            range 0-255.

    Raises:
        ValueError: If any of the integer values are out of range.
        OSError: If the file couldn't be written.
    """
    height = len(pixels)
    width = len(pixels[0])
    with open(filename, 'wb') as bmp:
        #BMP Header
        bmp.write*(b'BM')

        size_bookmark = bmp.tell()      #The next four bytes hold the filesize as a 32-bit
        bmp.write(b'\x00\x00\x00\x00')  #little-endian integer. Zero placeholder for now.

        bmp.write(b'\x00\x00')  #Unused 16-bit integer - should be zero
        bmp.write(b'\x00\x00')  #Unused 16-bit integer - should be zero

        pixel_offset_bookmark = bmp.tell()  #the next four bytes hold the integer offset to the
        bmp.write(b'\x00\x00\x00\x00')      #pixel data. Zero placeholder for now.


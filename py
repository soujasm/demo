1. Even / Odd
# Ask the user to enter a number
number = int(input("Enter a number: "))

# Check if the number is even or odd
if number % 2 == 0:
    print("The number is even.")
else:
    print("The number is odd.")


2. SGPI
# Ask the user to enter SGPI
sgpi = float(input("Enter your SGPI: "))

# Check and print the corresponding grade
if 9.00 <= sgpi <= 10.00:
    print("Grade: O")
elif 8.00 <= sgpi < 9.00:
    print("Grade: A+")
elif 7.00 <= sgpi < 8.00:
    print("Grade: A")
elif 6.00 <= sgpi < 7.00:
    print("Grade: B+")
elif 5.50 <= sgpi < 6.00:
    print("Grade: B")
elif 5.00 <= sgpi < 5.50:
    print("Grade: C")
elif 4.00 <= sgpi < 5.00:
    print("Grade: P")
elif sgpi < 4.00:
    print("Grade: F")
else:
    print("Invalid SGPI. Please enter a value between 0.00 and 10.00.")


3. Fibonacci Series
# Ask the user how many terms they want
n = int(input("Enter the number of terms in Fibonacci series: "))

# First two terms
a = 0
b = 1

print("Fibonacci series:")

for i in range(n):
    print(a, end=" ")
    c = a + b
    a = b
    b = c


4.aliasing and copying arrays
import numpy as np

# Original array
arr1 = np.array([1, 2, 3, 4, 5])

# Aliasing: arr2 is another name for arr1
arr2 = arr1

# Copying: arr3 is a separate copy of arr1
arr3 = arr1.copy()

# Modify arr1
arr1[0] = 100

print("arr1 (original modified):", arr1)
print("arr2 (alias - reflects changes):", arr2)
print("arr3 (copy - independent):", arr3)


5. Analyze the dimensions and attributes of NumPy
#1D Array Attributes
import numpy as np
arr1 = np.array([10, 20, 30])
print("1D Array:", arr1)
print("Dimensions (ndim):", arr1.ndim)
print("Shape:", arr1.shape)#shape=(row, column)
print("Size:", arr1.size)
print("Data type (dtype):", arr1.dtype)
print("Item size (bytes):", arr1.itemsize)
print("Total bytes (nbytes): ", arr1.nbytes) # size*itemsize

#2D Array Attributes
import numpy as np

arr2 = np.array([[1, 2, 3],
                          [4, 5, 6]])

print("\n2D Array:\n", arr2)
print("Dimensions (ndim):", arr2.ndim)
print("Shape:", arr2.shape)#shape=(row,column)
print("Size:", arr2.size)
print("Data type (dtype):", arr2.dtype)
print("Item size (bytes):", arr2.itemsize)

print("Total bytes (nbytes):", arr2.nbytes) #size*itemsize   

#3D Array Attributes
import numpy as np
arr3 = np.array([[[1, 2], [3, 4]],
                 [[5, 6], [7, 8]]])

print("\n3D Array:\n", arr3)
print("Dimensions (ndim):", arr3.ndim)
print("Shape:", arr3.shape)
print("Size:", arr3.size)
print("Data type (dtype):", arr3.dtype)
print("Item size (bytes):", arr3.itemsize)
print("Total bytes (nbytes):", arr3.nbytes)
#shape=(no. Of block, no of rows in one block, no of columns in one block)


6. Palindrome
def is_palindrome(value):
    # Convert to string so we can check forwards and backwards
    value_str = str(value)

    # Reverse the string using slicing
    reversed_str = value_str[::-1]

    # Compare original and reversed
    if value_str == reversed_str:
        return True
    else:
        return False

# Main program
text = input("Enter a word or number: ")

if is_palindrome(text):
    print("Palindrome")
else:
    print("Not a Palindrome")


7. Count letters and words
# Taking input from user
text = input("Enter a string: ")

# Counting characters
num_chars = len(text)# includes spaces

# Counting words
num_words = len(text.split())

# Output
print("\n--- Result ---")
print("Total characters (including spaces):", num_chars)
print("Total words:", num_words)


8. sort dictionary asc and desc
# Sample dictionary
my_dict = {'apple': 5, 'banana': 2, 'cherry': 8, 'date': 1}

# Sorting dictionary by value in ascending order
asc_sorted = dict(sorted(my_dict.items(), key=lambda item: item[1]))
print("Ascending order:", asc_sorted)

# Sorting dictionary by value in descending order
desc_sorted = dict(sorted(my_dict.items(), key=lambda item: item[1], reverse=True))
print("Descending order:", desc_sorted)


9. Dates
from datetime import datetime

# Read two dates from user
date1_str = input("Enter first date (DD/MM/YYYY): ")
date2_str = input("Enter second date (DD/MM/YYYY): ")

# Convert string to datetime object
date1 = datetime.strptime(date1_str, "%d/%m/%Y")
date2 = datetime.strptime(date2_str, "%d/%m/%Y")

# Compare
if date1 < date2:
    print(f"{date1_str} is earlier than {date2_str}")
elif date1 > date2:
    print(f"{date2_str} is earlier than {date1_str}")
else:
    print("Both dates are the same.")


10. program execution time
import time

# Start time
start = time.time()

# Code whose execution time we want to measure
s = 1
for i in range(1, 1000000):
    s += i

# End time
end = time.time()

# Calculate total time
print("Execution time:", end - start, "seconds")

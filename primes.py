"""
Your module documentation here
"""


class PrimeClass(object):
    """
    class primes
    """

    def is_prime(self, num_int):
        """
        function to calculate prime numbers
        """
        if not isinstance(num_int, int):
            return False
        acum = 0
        # calculate whether the number is prime
        for num in range(1, num_int+1):
            if num_int % num == 0:
                acum += 1
        if acum == 2:
            return True
        return False  # return false if not prime

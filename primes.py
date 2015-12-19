"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(self, num_int):
        """
        Funcion para calcular los numeros primos
        """
        if not isinstance(num_int, int):
            return False
        acum = 0
        # calculo si el numero es primo
        for num in range(1, num_int+1):
            if num_int % num == 0:
                acum += 1
        if acum == 2:
            return True
        return False  # retorno false si no es primo

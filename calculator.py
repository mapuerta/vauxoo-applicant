"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Your class documentation here
    """

    def sum(self, num_list):
        """
        method to add numbers from a list
        """
        # assessed if a list
        if not isinstance(num_list, list):
            return "it is not a list"
        num_sum = 0
        for num in num_list:
            num_sum += num
        return num_sum  # return the sum of the items in the list

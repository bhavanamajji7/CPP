{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyMievSL6Ut96IiH1GoBbvOg",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/bhavanamajji7/CPP/blob/main/numpy\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {
        "id": "YutIz5S_QUsS"
      },
      "outputs": [],
      "source": []
    },
    {
      "cell_type": "code",
      "source": [
        "import numpy as np\n",
        "\n",
        "# a) Get help on the add() function\n",
        "print(\"a) Help on numpy.add():\")\n",
        "help(np.add)\n",
        "\n",
        "print(\"\\n\" + \"-\"*70)\n",
        "\n",
        "# b) Test whether none of the elements of a given array is zero\n",
        "arr = np.array([1, 2, 3, 4, 5])\n",
        "print(\"b) Given Array:\", arr)\n",
        "print(\"None of the elements are zero:\", np.all(arr))  # all() returns True if all are non-zero\n",
        "\n",
        "print(\"\\n\" + \"-\"*70)\n",
        "\n",
        "# c) Element-wise comparison of two arrays\n",
        "x = np.array([2, 5, 8, 10])\n",
        "y = np.array([1, 5, 9, 10])\n",
        "\n",
        "print(\"c) Array X:\", x)\n",
        "print(\"   Array Y:\", y)\n",
        "\n",
        "print(\"x > y  :\", np.greater(x, y))\n",
        "print(\"x >= y :\", np.greater_equal(x, y))\n",
        "print(\"x < y  :\", np.less(x, y))\n",
        "print(\"x <= y :\", np.less_equal(x, y))\n",
        "print(\"x == y :\", np.equal(x, y))\n",
        "\n",
        "# Comparison within a tolerance\n",
        "print(\"x ≈ y (allclose):\", np.allclose(x, y, atol=1))\n",
        "\n",
        "print(\"\\n\" + \"-\"*70)\n",
        "\n",
        "# Using zeros, ones, linspace, and tolist\n",
        "print(\"Array of zeros:\", np.zeros(5))\n",
        "print(\"Array of ones:\", np.ones(5))\n",
        "print(\"Linearly spaced array from 0 to 1 (5 points):\", np.linspace(0, 1, 5))\n",
        "print(\"Convert numpy array to list:\", np.array([10, 20, 30]).tolist())\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "OSQx2zFtep2y",
        "outputId": "8aafb49b-6a99-4f8b-f056-97d4de04dbd8"
      },
      "execution_count": 1,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "a) Help on numpy.add():\n",
            "Help on ufunc:\n",
            "\n",
            "add = <ufunc 'add'>\n",
            "    add(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature])\n",
            "\n",
            "    Add arguments element-wise.\n",
            "\n",
            "    Parameters\n",
            "    ----------\n",
            "    x1, x2 : array_like\n",
            "        The arrays to be added.\n",
            "        If ``x1.shape != x2.shape``, they must be broadcastable to a common\n",
            "        shape (which becomes the shape of the output).\n",
            "    out : ndarray, None, or tuple of ndarray and None, optional\n",
            "        A location into which the result is stored. If provided, it must have\n",
            "        a shape that the inputs broadcast to. If not provided or None,\n",
            "        a freshly-allocated array is returned. A tuple (possible only as a\n",
            "        keyword argument) must have length equal to the number of outputs.\n",
            "    where : array_like, optional\n",
            "        This condition is broadcast over the input. At locations where the\n",
            "        condition is True, the `out` array will be set to the ufunc result.\n",
            "        Elsewhere, the `out` array will retain its original value.\n",
            "        Note that if an uninitialized `out` array is created via the default\n",
            "        ``out=None``, locations within it where the condition is False will\n",
            "        remain uninitialized.\n",
            "    **kwargs\n",
            "        For other keyword-only arguments, see the\n",
            "        :ref:`ufunc docs <ufuncs.kwargs>`.\n",
            "\n",
            "    Returns\n",
            "    -------\n",
            "    add : ndarray or scalar\n",
            "        The sum of `x1` and `x2`, element-wise.\n",
            "        This is a scalar if both `x1` and `x2` are scalars.\n",
            "\n",
            "    Notes\n",
            "    -----\n",
            "    Equivalent to `x1` + `x2` in terms of array broadcasting.\n",
            "\n",
            "    Examples\n",
            "    --------\n",
            "    >>> np.add(1.0, 4.0)\n",
            "    5.0\n",
            "    >>> x1 = np.arange(9.0).reshape((3, 3))\n",
            "    >>> x2 = np.arange(3.0)\n",
            "    >>> np.add(x1, x2)\n",
            "    array([[  0.,   2.,   4.],\n",
            "           [  3.,   5.,   7.],\n",
            "           [  6.,   8.,  10.]])\n",
            "\n",
            "    The ``+`` operator can be used as a shorthand for ``np.add`` on ndarrays.\n",
            "\n",
            "    >>> x1 = np.arange(9.0).reshape((3, 3))\n",
            "    >>> x2 = np.arange(3.0)\n",
            "    >>> x1 + x2\n",
            "    array([[ 0.,  2.,  4.],\n",
            "           [ 3.,  5.,  7.],\n",
            "           [ 6.,  8., 10.]])\n",
            "\n",
            "\n",
            "----------------------------------------------------------------------\n",
            "b) Given Array: [1 2 3 4 5]\n",
            "None of the elements are zero: True\n",
            "\n",
            "----------------------------------------------------------------------\n",
            "c) Array X: [ 2  5  8 10]\n",
            "   Array Y: [ 1  5  9 10]\n",
            "x > y  : [ True False False False]\n",
            "x >= y : [ True  True False  True]\n",
            "x < y  : [False False  True False]\n",
            "x <= y : [False  True  True  True]\n",
            "x == y : [False  True False  True]\n",
            "x ≈ y (allclose): True\n",
            "\n",
            "----------------------------------------------------------------------\n",
            "Array of zeros: [0. 0. 0. 0. 0.]\n",
            "Array of ones: [1. 1. 1. 1. 1.]\n",
            "Linearly spaced array from 0 to 1 (5 points): [0.   0.25 0.5  0.75 1.  ]\n",
            "Convert numpy array to list: [10, 20, 30]\n"
          ]
        }
      ]
    }
  ]
}
// CPP Program to print various patterns
// Written by M.V.Harish Kumar on 30-10-2025
#include <iostream>

using namespace std;

int main() {
	unsigned int opt, n;
	cout << "Enter pattern no. to print: ";
	cin >> opt;
	cout << "Enter the no. of rows/levels to print: ";
	cin >> n;

	switch (opt) {
		case 1:
			for (int i = 0; i < n; i++) {
				for (int j = 0; j < n; j++)
					cout << "* ";
				cout << endl;
			}
			break;

		case 2:
			for (int i = 1; i <= n; i++) {
				for (int j = 0; j < i; j++)
					cout << "* ";
				cout << endl;
			}
			break;

		case 3:
			for (int i = 1; i <= n; i++) {
				for (int j = 1; j <= i; j++)
					cout << j << " ";
				cout << endl;
			}
			break;

		case 4:
			for (int i = 1; i <= n; i++) {
				for (int j = 0; j < i; j++)
					cout << i << " ";
				cout << endl;
			}
			break;

		case 5:
			for (int i = n; i > 0; i--) {
				for (int j = i; j > 0; j--)
					cout << "* ";
				cout << endl;
			}
			break;

		case 6:
			for (int i = n; i > 0; i--) {
				for (int j = 1; j <= i; j++)
					cout << j << " ";
				cout << endl;
			}
			break;

		case 7:
		    for (int i = 0; i < n; i++) {
				for (int j = 0; j < n - i - 1; j++)
                    cout << " ";

                for (int j = 0; j < (2*i + 1); j++)
                    cout << "*";

                cout << endl;
			}
			break;

		case 8:
		    for (int i = n - 1; i >= 0; i--) {
				for (int j = 0; j < n - i - 1; j++)
                    cout << " ";

                for (int j = 0; j < (2*i + 1); j++)
                    cout << "*";

                cout << endl;
 			}
			break;

		case 9:
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < n - i - 1; j++)
                    cout << " ";

                for (int j = 0; j < (2*i + 1); j++)
                    cout << "*";

                cout << endl;
            }
		    for (int i = n - 1; i >= 0; i--) {
    			for (int j = 0; j < n - i - 1; j++)
                    cout << " ";

                for (int j = 0; j < (2*i + 1); j++)
                    cout << "*";

                cout << endl;
 			}
			break;

		case 10:
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < i; j++)
                    cout << "*";

                cout << endl;
            }
		    for (int i = n; i > 0; i--) {
                for (int j = 0; j < i; j++)
                    cout << "*";

                cout << endl;
 			}
			break;

		case 11:
		    for (int i = 1, v = 1; i <= n; i++) {
				for (int j = 0; j < i; j++, v = !v)
				    cout << v << " ";
				cout << endl;
			}
			break;

		default:
			cout << "Invalid input. Try again" << endl;
	}
}

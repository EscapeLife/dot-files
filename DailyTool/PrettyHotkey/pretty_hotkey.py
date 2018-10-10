import argparse

from prettytable import PrettyTable
from prettytable import from_csv


PIP2 = './hotkey/pip/pip2.csv'
PIP3 = './hotkey/pip/pip3.csv'
TMUX_SYSTEM = './hotkey/tmux/tmux-system.csv'
TMUX_PANE = './hotkey/tmux/tmux-pane.csv'
TMUX_WINDOWS = './hotkey/tmux/tmux-windows.csv'
TMUX_MODEL = './hotkey/tmux/tmux-model.csv'


class HotkeyTable:
    def __init__(self, csv_file):
        self.csv_file = csv_file

    def print_table(self):
        table = PrettyTable()
        with open(self.csv_file) as f:
            table = from_csv(f)
        table.align = 'l'
        print(table)


parser = argparse.ArgumentParser(description="# Pretty hotkey for Escape's usefully commands.")
parser.add_argument('--pip', choices=['2', '3'], help='pip alias hotkey')
parser.add_argument('--tmux', choices=['s', 'p', 'w', 'm'], help='tmux config hotkey')
args = parser.parse_args()


if __name__ == '__main__':
    if args.pip == '2':
        pip = HotkeyTable(PIP2)
        pip.print_table()
    elif args.pip == '3':
        pip = HotkeyTable(PIP3)
        pip.print_table()
    else:
        print('Error')

    if args.tmux == 's':
        tmux = HotkeyTable(TMUX_SYSTEM)
        tmux.print_table()
    elif args.tmux == 'p':
        tmux = HotkeyTable(TMUX_PANE)
        tmux.print_table()
    elif args.tmux == 'w':
        tmux = HotkeyTable(TMUX_WINDOWS)
        tmux.print_table()
    elif args.tmux == 'm':
        tmux = HotkeyTable(TMUX_MODEL)
        tmux.print_table()
    else:
        print('Error')

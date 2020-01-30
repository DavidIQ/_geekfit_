import time, winsound, ctypes

ctypes.windll.kernel32.SetConsoleTitleW("GEEKED THE MAMBA WOD")
time.sleep(15)
print('******************************************************')
print('* TTTTT H   H EEEEE   M M M   A   M M M BBBB    A    *')
print('*   T   H   H E       MMMMM  A A  MMMMM B   B  A A   *')
print('*   T   HHHHH EEEE    M M M AAAAA M M M BBBB  AAAAA  *')
print('*   T   H   H E       M   M A   A M   M B   B A   A  *')
print('*   T   H   H EEEEE   M   M A   A M   M BBBB  A   A  *')
print('******************************************************\n\n')

print('AMRAP in 18 minutes', 'THIS IS FOR KOBE!')
print('Ready?')
for x in range(5, 0, -1):
    print(x)
    time.sleep(1)
else:
    print('GO!!!\n')

for x in range(1, 19):
    winsound.Beep(2500, 1000)
    print('Round', x)
    print('5 Ring Muscle-Ups')
    print('8 Power Cleans (185/125 lb)')
    print('24 Box Jumps (30/24 in)\n')
    time.sleep((x * 60) - 1)

print('           o')
print(' /|   o         o')
print(' \|=--            o')
print('    ##')
print('                    \\')
print('                  /   \O')
print('                 O_/  24')
print('                 T    /|')
print('                 |\  | |')
print(' ________________|_|________\n')
winsound.Beep(2000, 3000)

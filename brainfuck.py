# © Taha Daneshmand - github.com/taha-daneshmand/code-golf_solutions

import sys

for code in sys.argv:
    memory = [0] * 29
    pointer = 0
    instruction_pointer = 0

    while instruction_pointer < len(code):
        command = code[instruction_pointer]
        current_value = memory[pointer]

        if command == '+':
            memory[pointer] += 1
        elif command == '-':
            memory[pointer] -= 1
        elif command == '>':
            pointer += 1
        elif command == '<':
            pointer -= 1
        elif command == '.':
            print(end=chr(current_value))
        elif command == '[':
            if current_value == 0:
                loop_balance = 1
                while loop_balance > 0:
                    instruction_pointer += 1
                    if code[instruction_pointer] == '[':
                        loop_balance += 1
                    elif code[instruction_pointer] == ']':
                        loop_balance -= 1
            else:
                memory += [instruction_pointer]
        elif command == ']':
            if current_value != 0:
                instruction_pointer = memory[-1]
            else:
                memory.pop()

        instruction_pointer += 1

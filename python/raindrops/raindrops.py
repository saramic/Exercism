def convert(number):
    output = ""
    if number % 3 == 0:
        output = f'{output}Pling'
    if number % 5 == 0:
        output = f'{output}Plang'
    if number % 7 == 0:
        output = f'{output}Plong'
    if output == "":
        output = f'{number}'
    return output

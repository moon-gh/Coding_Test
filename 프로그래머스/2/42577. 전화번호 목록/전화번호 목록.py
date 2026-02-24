def solution(phone_book):
    hash_map = {}
    
    for number in phone_book:
        hash_map[number] = 1
    
    for number in phone_book:
        book = ""
        for char in number:
            book += char
            
            if book in hash_map and book != number:
                return False
    return True
def solution(participant, completion):
    count = {}
    
    for p in participant:
        if p in count:
            count[p] += 1
        else:
            count[p] = 1
    
    for c in completion:
        count[c] -= 1
        
    for name in count:
        if count[name] != 0:
            return name
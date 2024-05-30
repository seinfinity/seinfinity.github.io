---
layout: post
title: "해시맵(HashMap) 개념 정리 및 활용 예제"
date: 2024-05-31 12:00:00 +0900
categories: 코딩테스트
---

## 해시맵(HashMap) 개념 정리 및 활용 예제

안녕하세요! 이번 포스트에서는 코딩 테스트에서 자주 사용되는 자료 구조인 해시맵(HashMap)에 대해 알아보겠습니다. 해시맵의 개념, 주요 특징, 내부 동작 원리, 그리고 실제 코딩 테스트 문제에서 해시맵을 어떻게 활용할 수 있는지 예제 코드를 통해 설명드리겠습니다.

### 해시맵이란?
해시맵은 키(key)와 값(value) 쌍을 저장하는 자료 구조입니다. 해시맵은 해시 함수를 사용하여 키를 해시 값으로 변환하고, 이를 이용해 값을 빠르게 저장하거나 검색할 수 있습니다. 해시맵은 평균적으로 O(1)의 시간 복잡도를 가지며, 이는 매우 빠른 속도입니다.

### 해시맵의 주요 특징
- **빠른 검색 속도**: 평균적으로 O(1)의 시간 복잡도로 키-값 쌍을 검색할 수 있습니다.
- **키-값 쌍의 저장**: 고유한 키와 해당하는 값을 한 쌍으로 저장합니다.
- **중복된 키 허용 불가**: 동일한 키로 값을 저장하면 기존 값이 새로운 값으로 덮어쓰여집니다.
- **비순차적 저장**: 데이터는 해시 값을 기준으로 저장되기 때문에 순서를 유지하지 않습니다.

### 해시맵의 내부 동작 원리
1. **해시 함수**: 키를 해시 값으로 변환하여 저장 위치를 결정합니다.
2. **버킷**: 해시맵은 여러 개의 버킷으로 구성되며, 해시 값에 따라 데이터가 저장됩니다.
3. **충돌 해결**: 충돌이 발생할 경우 이를 해결하기 위한 체이닝(Chaining)이나 개방 주소법(Open Addressing) 등의 기법이 사용됩니다.

### Python에서의 해시맵 사용 예시
Python에서 해시맵은 주로 `dict` 자료형으로 구현됩니다. 하지만, 이번에는 코딩 테스트 문제에서 해시맵을 활용하는 실제 예제를 통해 더 구체적으로 알아보겠습니다.

### 해시맵 활용 예제: 두 수의 합 (Two Sum)
두 수의 합 문제는 주어진 리스트에서 두 수를 더하여 목표 값(target)이 되는 인덱스 쌍을 찾는 문제입니다. 이를 해시맵을 사용하여 효율적으로 해결할 수 있습니다.

```python
from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        hashmap = {}
        for i in range(len(nums)):
            diff = target - nums[i]
            if diff in hashmap:
                return [i, hashmap[diff]]
            hashmap[nums[i]] = i

# 예시 사용
solution = Solution()
nums = [2, 7, 11, 15]
target = 9
print(solution.twoSum(nums, target))  # 출력: [1, 0]


## 코드 설명
해시맵 초기화: hashmap = {}를 통해 빈 해시맵을 생성합니다.
리스트 순회: 리스트 nums를 순회하면서 각 요소에 대해 처리합니다.
차이 값 계산: diff = target - nums[i]를 통해 현재 요소와 목표 값의 차이를 계산합니다.
해시맵에서 차이 값 찾기: diff가 해시맵에 존재하는지 확인합니다. 존재하면 현재 인덱스 i와 해시맵에서 찾은 인덱스를 반환합니다.
해시맵 업데이트: 현재 요소와 인덱스를 해시맵에 저장합니다.
이 코드는 평균적으로 O(n)의 시간 복잡도로 문제를 해결할 수 있으며, 이는 매우 효율적입니다.

def check_sud(lst)
  standard=[1,2,3,4,5,6,7,8,9]
  lst.each do |elements|
    if elements.sort!=standard
      return false
    end
  end
  true
end
def transform(lst)
  col=[]
  for ind in 0..8
    new_col=[]
    lst.each do |row|
      new_col.append(row[ind])
    end
    col.append(new_col)
  end
  return col
end


def transform_square(lst)
  all_box=[]
  for i in 0..2
    for j in 0..2
      box=[]
      val2=0
      for ii in 0..2
        for jj in 0..2
          row=(3*i)+ii
          col=(3*j)+jj
          val=lst[row][col]
          val2=val
          box.append(val2)
        end
      end
      all_box.append(box)
    end
  end
  return all_box
end



def sudoku_validator(lst)
  if check_sud(lst)
    chg_lst=transform(lst)
    if check_sud(chg_lst)
      chg_lst_1=transform_square(lst)
      if check_sud(chg_lst_1)
        return true
      end
      false
    end
    false
  end
  false
end

#n=sudoku_validator([
 #[ 7, 3, 9, 2, 5, 6, 8, 4, 1 ],
  #[ 4, 6, 8, 3, 7, 1, 2, 9, 5 ],
  #[ 3, 8, 7, 1, 2, 4, 6, 5, 9 ],
  #[ 5, 9, 1, 7, 6, 3, 4, 2, 8 ],
  #[ 2, 4, 6, 8, 9, 5, 7, 1, 3 ],          #This one is False
  #[ 9, 1, 4, 6, 3, 7, 5, 8, 2 ],
  #[ 6, 2, 5, 9, 4, 8, 1, 3, 7 ],
  #[ 8, 7, 3, 5, 1, 2, 9, 6, 4 ]
  #])



n=sudoku_validator([
  [1,5,2,4,8, 9, 3, 7, 6 ],
  [ 7, 3, 9, 2, 5, 6, 8, 4, 1 ],
  [ 4, 6, 8, 3, 7, 1, 2, 9, 5 ],
  [ 3, 8, 7, 1, 2, 4, 6, 5, 9 ],
  [ 5, 9, 1, 7, 6, 3, 4, 2, 8 ],
  [ 2, 4, 6, 8, 9, 5, 7, 1, 3 ],
  [ 9, 1, 4, 6, 3, 7, 5, 8, 2 ],
  [ 6, 2, 5, 9, 4, 8, 1, 3, 7 ],
  [ 8, 7, 3, 5, 1, 2, 9, 6, 4 ]
])


puts n    # Remove"#" to check other condition

def matrix(arr)
  @leng = arr.count()

  if @leng != 9
    puts "So luong phan tu khac 9! dung chuong trinh"
  else
    # cat mang ban dau thanh 3 mang co so phan tu la 3
    @a = arr.slice(0..2)
    @b = arr.slice(3..5)
    @c = arr.slice(6..8)

    # tao ma tran 3x3
    @matrix = [@a,@b,@c]

    puts "ma tran ban dau";

    @matrix.each do |value|
      value.each do |i|
        print "#{i} "
      end
      puts ""
    end
    # tinh dinh thuc
    @det = @b[1]*@c[2] - @b[2]*@c[1]

    # kiem tra ham co ma tran nghich dao khong
    if @det == 0
      puts "ma tran khong kha nghich"
    else
      # doi cho a 0.1 va b 1.0
      @tmp = @a[1]
      @a[1] = @b[0]
      @b[0] = @tmp
      # doi cho
      @tmp = @a[2]
      @a[2] = @c[0]
      @c[0] = @tmp
      #doi cho
      @tmp = @b[2]
      @b[2] = @c[1]
      @c[1] = @tmp
      # vi day a mang 3x3 nen em do cho bang tay tai em chua nghi ra cach duyet mang de doi cho :(

      puts "ma tran luc sau";

      @matrix.each do |value|
      value.each do |i|
        print "#{i} "
      end
      puts ""
    end
    end

  end
end
arr = [1,2,4,0,5,6,7,8,9]
matrix arr

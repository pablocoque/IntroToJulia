using Test, Points

@testset begin
  p1 = Point(1.0, 2.0)
  p2 = Point(0.0, 3.0)
  @test sumsquare(p1,p2) == Point(1.0, 13.0)
  q1 = Point(1,2)
  q2 = Point(0,3)
  @test sumsquare(q1,q2) == Point(1,13)
  @test_throws MethodError s1 = Point("a", "b")
end

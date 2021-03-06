@testset "Searches" begin

    @testset "Searches: Binary" begin
        sample = [0, 23, 52, 552, 555, 602, 1004]
        reversed_sample = reverse(sample)
        unsorted_sample = [124, 53, 21, 163]
        binary_search(sample, 52)
        binary_search(reversed_sample, 52, rev=true)
        @test_throws ErrorException binary_search(unsorted_sample, 21)  # throws an error
    end

    @testset "Searches: Linear" begin
        array = [1,3,4,7,8,11]
        linear_search(array, 3)
        linear_search(array, 8)
        linear_search(array, 12)
    end

    @testset "Searches: Exponential" begin
        arr = [1, 2, 3, 4, 13, 15, 20];
        x = 4;
        n = size(arr)[1]
        l = 1;
        r = n;

        exponential_search(arr, x)
    end

    @testset "Searches: Interpolation" begin
        arr = [1, 2, 3, 4, 13, 15, 20];
        x = 15;
        n = size(arr)[1]
        l = 1;
        r = n;

        interpolation_search(arr, l, r, x)
    end

    @testset "Searches: Jump" begin
        arr = [1, 2, 3, 31, 4, 13];
        x = 31;
        jump = 2; # optimum is sqroot(n)
        n = size(arr)[1];

        jump_search(arr, x, jump)
    end

end

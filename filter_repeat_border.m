c = imread('a.jpeg');
a = rgb2gray(c);
lenght = 30;
    for i=1:size(a,1)
        for j=1:size(a,2)
            b(i,j) = a(i,j);
        end
    end
    for i=1:size(a,1)
        for j=1:size(a,2)
            if i<lenght
                for u=1:lenght
                    b(size(a,1)-lenght+u,j) = a(u,j);
                end
            end
            if j<lenght
                for u=1:lenght
                    b(i,size(a,2)-lenght+u) = a(i,u);
                end 
            end
            if size(a,1)-i<lenght
                for u=1:lenght
                    b(u,j) = a(size(a,1)+u-1-lenght,j);
                end 
            end
            if size(a,2)-j<lenght
                for u=1:lenght
                    b(i,u) = a(i,size(a,2)+u-1-lenght);
                end 
            end
            
        end
    end
imshow(b);
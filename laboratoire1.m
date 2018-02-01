load trees

% Images indexees
imshow(X,map)
pause;

% Images d'intensite
I = ind2gray(X,map);
imshow(I)
im2uint8(I)
pause;

% Image binaire
BW = edge(I);
imshow(imcomplement(BW))    %l'image binaire inversee des contours
pause;

% % Construire et imprimer une image binaire de dimension 64x64 pixels 
% % formee par un cadre noir de largeur un pixel et d'un rectangle noir 
% % au centre de l'image de dimension 20x15 pixels

a = 64;
x = 20;
y = 15;
cadre = ones(a,a);
cadre(ceil((a-x)/2+1):ceil((a+x)/2), ceil((a-y)/2+1)) = 0;
cadre(ceil((a-x)/2+1):ceil((a+x)/2), ceil((a+y)/2)) = 0;
cadre(ceil((a-x)/2+1), ceil((a-y)/2+1):ceil((a+y)/2)) = 0;
cadre(ceil((a+x)/2), ceil((a-y)/2+1):ceil((a+y)/2)) = 0;
disp(cadre)
BW = logical(cadre);
imshow(BW)
pause;

% % Lire, ecrire et afficher une image

% Lire l'image "DOLLARD.TIF" dans MATLAB et l'afficher 
I = imread('./images/DOLLARD.TIF');
imshow(I);
pause;

% Convertir l'image couleur I en une image en niveau de gris J
% Connaitre la taille et la classe de l'image I
J = rgb2gray(I);
whos I;
pause;

% Renverser l'image J par R
R = J(end:-1:1,:);
imshow(R);
pause;

% Diminuer la resolution de l'image J par 2 : S
S = J(1:2:end,1:2:end);
imshow(S);
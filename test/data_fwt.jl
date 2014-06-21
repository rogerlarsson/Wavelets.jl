

#=
# in octave, using wavelab
% 2D
n=32;
L=0; # J-L in julia
x=1:n;
x(4:6)=[-9.9,-1.0,0];
x(25:29)=-5:-1;
x(15:17)=0.0
x
qmf=MakeONFilter('Daubechies',6);
y=FWT_PO(x,L,qmf)

% 2D
n=16;
L=0; # J-L in julia
x2=zeros(n,n);
x2(1:n)=1:n;
x2(4,5:7)=[2.5,1.1,-9.9];
x2(n,n-2)=4.2;
x2(5,12)=-3;
x2(10,4)=1;
x2(11:14,7:10)=[4 7 -2 -9
9 8 2 1
-5 -2.0 -8 9
1 8 -11 2];
qmf=MakeONFilter('Daubechies',6);
y2=FWT2_PO(x2,L,qmf)
=#


n1=32
x1=[
 1 2 3 -9.9 -1 0 7 8 9 10 11 12 13 14 0 0 0 18 19 20 21 22 23 24 -5 -4 -3 -2 -1 30 31 32]
x1=vec(x1)
y1=[
 53.75779303902802 -2.796216988790748 11.50077998894394 -4.133873588806409 25.24815436426672 -18.03467572494105 -17.82823510068777 30.53752146879685 15.48341526615371 -4.616285348015905 0.3638490515485691 -5.333624919695701 -7.768869525027551 -2.407001888533527 14.03162492492735 -23.33119947237558 16.23185936010504 -8.485482790462203 -3.546971541274958 -2.38169742580238 0.7240053945973588 1.899991275422508e-11 2.499955797929942e-11 6.78064379249936 4.333950324288147 -0.3997325797851987 0.5988469620432948 5.500133681834996e-11 14.22662869089805 -3.620026972944794 9.980116588487943 -0.430303627301214]
y1=vec(y1)


n2=16
x2=[
 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 4 0 0 0 2.5 1.1 -9.9 0 0 0 0 0 0 0 0 0
 5 0 0 0 0 0 0 0 0 0 0 -3 0 0 0 0
 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 10 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 11 0 0 0 0 0 4 7 -2 -9 0 0 0 0 0 0
 12 0 0 0 0 0 9 8 2 1 0 0 0 0 0 0
 13 0 0 0 0 0 -5 -2 -8 9 0 0 0 0 0 0
 14 0 0 0 0 0 1 8 -11 2 0 0 0 0 0 0
 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 16 0 0 0 0 0 0 0 0 0 0 0 0 4.2 0 0]

y2=[
 9.118749999773261 11.79821960448105 2.661060197358197 7.318990537020618 0.0540757895227959 1.210249003888801 -2.122777595498205 1.274322126179707 -2.073867215424196 0.3470044298257708 0.1324041223357786 -1.192365855040112 0.2050358665761312 0.03818760525949769 0.117877558832019 -0.02190063384775851
 0.8766981710679356 1.298631861692317 3.331859077375039 6.508334890141118 -0.8020872024936455 0.4875703242632514 0.9743958232010068 2.822570842145202 -4.356101047082475 0.728873260960978 -1.52258620211838 7.126158178443178 -1.225394044369484 -0.1775675300981971 -0.634461950863502 0.117877558832019
 1.077052144671141 4.997141250597013 2.261368391104935 3.126971096415254 -1.656025274427515 0.8588881337505599 3.041596993333354 5.327489766333221 -6.638334878740753 1.12246084209496 -0.2736086019955626 -0.003009779252540218 0 -0.3320090904005052 -0.4589631087570343 0.08527138748131649
 -3.037020892094199 -2.630910916752489 -1.9029711247318 -4.214472723403336 -1.267355654816777 -0.2983508749667241 -0.2290707489458643 3.072980703458642 -8.920568710399031 1.447696732550278 -0.4515319112189016 -0.0737278659182127 -0.07598637617148266 0.4303096950976505 -0.07721302258041036 0
 1.229164148106059 -1.909617646564671 -1.094833753164083 4.664324512686214 -0.08104378394846863 0.6946381273258209 -1.755906425058972 0.9218033958454392 -11.20280254205731 2.142908798940017 -0.1180071282587901 -0.08370863558035646 0.4055899559961736 -2.667099370650657 0.4563335405245391 0
 -0.1187312952819583 -1.243637414268611 0.4671172371382417 -1.314739989352407 0.340379651620716 0.6413336719711017 -0.7946199093749881 -0.0979578674983872 -13.49767744657626 2.256348585501807 -0.5887133795044091 -2.712254540959294 5.515651704327045 -0.1913261474856648 -0.05059774769565686 0.06803907230227714
 -0.5818972967282654 2.293692201739001 1.336923403696403 0.08081829797840134 -0.4978693242308915 -0.988466585902096 -3.100957424864152 0.463034808370608 -16.36710973037193 2.746690631670783 -0.7166505807720246 2.617164278055248 13.38909360344906 0.09686943988431307 -0.1759256861293991 -0.2607718286907873
 -0.6286003774572475 3.932545420970908 0.7026770303808485 -0.491173510515559 0.2809814555444665 0.6153994264374435 2.31285020132869 -2.074721354770858 -14.79323634317055 2.42679058094191 -0.6913529804539501 0.3111051796857948 -0.05349676849900576 0.01228482723359518 1.127401987208349 1.55849925748664
 2.524149564384277 -0.02934513572092248 0.002910467701477272 0.1631732524268002 0.0807529870931704 -0.2607718286907873 0.9102105756744494 3.489336781833366 -6.287346394001279 1.024400880460671 -0.2672807332069085 -0.2771300072997497 -1.417763355271212 -0.01025744878746805 0.6412020832018833 0.8882467312089029
 -0.7004495977848574 0.6144592262366468 -0.9426320678670344 -1.095629998321667 -0.01264107286066891 0.0484491568586509 -0.1245958728862639 -0.887876779686504 1.588511035619613 -0.2606632181756757 -0.4813252106764226 2.938019491190522 -0.5052135381497883 0.116015624987869 -0.1193799424738431 -0.1650285823648266
 -0.08041154199480105 0.8494168528271845 -1.303076803591242 -1.429306871425838 -0.3268177371287834 1.953221723396486 -8.54316617449058e-14 4.597433544972773e-13 -8.071321389024888e-13 1.349476086431878e-13 -0.7593916562454558 4.06146276789869 -0.6983976727132849 0.9656649470041881 1.1132137553476 -0.2068255153205094
 0.01493977103099997 -0.1578143258327342 0.2421004322937123 0.2671277658938539 0.05468392657247605 -0.3268177371287834 -5.980771433655718e-13 3.219202682203104e-12 -5.648370660082946e-12 9.450773497121645e-13 0.1410884206903619 -0.7545847559738567 0.1297562645661582 -0.1645393866434923 -0.1862655919219909 0.03460654061332207
 -0.04491419067679003 0.2684290445734164 0 0.003722674919271266 -0.01426781279449055 0.08527138747237492 -1.110722624986238e-12 0.01171875000475353 -1.048983122586833e-11 0.1106696968019235 0.1529877029185535 -0.0284237958271055 0 0.03515624999632394 0.04859933735876937 -0.009029337757620652
 -0.06208853063434239 0.2858078723205855 0.3686671575405618 -2.465023397760995 6.886291697510043 0 -1.623479128909366e-12 0.01619977912832793 -1.533040361323401e-11 0.1529877029215765 0.2114873169538314 -0.844504027188673 -0.7176012126175613 4.063764777515102 -0.7291854334344332 0
 0.01153551354609017 -0.5283621693329676 2.405220559069859 12.76717684895493 -4.78597632438517 0 -2.135902565925107e-12 -0.003009779241043731 -2.017275235743909e-11 -0.02842379582373011 -0.03929251961155372 -4.331379999498077 0.08798366912914535 -3.994818627334093 0.5067842568872795 0
 1.031263963113815e-11 0.1834479488934035 -0.2356198216032768 -1.562833146826202 -0.1169015602914799 -0.1886396008606818 1.1274019872057 1.425615181460671e-11 -0.1193799424988571 4.185429780534378e-12 -1.091987611445688e-12 1.732448331405063 6.80967004106605 0.07375261294257152 0.4824031098354813 0.6425483522598481]
 
 

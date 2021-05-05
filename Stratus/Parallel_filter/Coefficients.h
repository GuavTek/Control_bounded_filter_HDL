#include "FloatType.h"

const floatType Lfr[3] = {0.9526408435505846, 0.97320481244078, 0.97320481244078};
const floatType Lfi[3] = {0.0, 0.07051980570136974, -0.07051980570136974};
const floatType Lbr[3] = {0.9526408435505846, 0.97320481244078, 0.97320481244078};
const floatType Lbi[3] = {0.0, 0.07051980570136974, -0.07051980570136974};
const floatType Wfr[3] = {-0.000633177960514777, 0.00038419980174515995, 0.00038419980174515995};
const floatType Wfi[3] = {-0.0, -0.0007604978272513301, 0.0007604978272513301};
const floatType Wbr[3] = {0.000633177960514777, -0.00038419980174515995, -0.00038419980174515995};
const floatType Wbi[3] = {0.0, 0.0007604978272513301, -0.0007604978272513301};
const floatType Ffr[3][3] = {
	{20.549783326922284, -1.9986035670700628, 0.3417449698305984},
	{-10.434437110710538, 1.0760923496837065, 0.06891711074802961},
	{-10.434437110710538, 1.0760923496837065, 0.06891711074802961}};
const floatType Ffi[3][3] = {
	{5.002502244065731e-16, 2.2116604277464022e-16, -1.470080668687619e-18},
	{-3.8792001602566697, -1.323109810553637, 0.19126497126443642},
	{3.8792001602566692, 1.3231098105536367, -0.19126497126443642}};
const floatType Fbr[3][3] = {
	{-20.549783326922284, -1.9986035670700628, -0.3417449698305984},
	{10.434437110710538, 1.0760923496837065, -0.06891711074802961},
	{10.434437110710538, 1.0760923496837065, -0.06891711074802961}};
const floatType Fbi[3][3] = {
	{-5.002502244065731e-16, 2.2116604277464022e-16, 1.470080668687619e-18},
	{3.8792001602566697, -1.323109810553637, -0.19126497126443642},
	{-3.8792001602566692, 1.3231098105536367, 0.19126497126443642}};
const floatType Lbwr[3][256] = {
	{0.000633177960514777, 0.000603191186422436, 0.0005746245606557473, 0.0005474108261879753, 0.0005214859112284352, 0.0004967887783724019, 0.0004732612808951493, 0.0004508480258517852, 0.0004294962436605605, 0.0004091556638626038, 0.00038977839676557034, 0.0003713188206925473, 0.0003537334745707566, 0.00033698095560716487, 0.00032102182181009166, 0.00030581849912731117, 0.0002913351929820155, 0.0002775378039983596, 0.0002643938477181741, 0.0002518723781198262, 0.00023994391475916306, 0.00022858037336099865, 0.00021775499969772935, 0.00020744230659940215, 0.00019761801394693352, 0.00018825899150719794, 0.0001793432044753994, 0.00017084966159650947, 0.0001627583657436307, 0.00015505026683692693, 0.00014770721699227334, 0.0001407119277940285, 0.00013404792959133228, 0.00012769953272209614, 0.00012165179057339317, 0.00011589046439127633, 0.00011040198975717447, 0.0001051734446519377, 0.00010019251903234265, 9.544748584842891e-05, 9.092717343342981e-05, 8.662093920129288e-05, 8.251864458986355e-05, 7.86106311907385e-05, 7.488769800958904e-05, 7.134107980341634e-05, 6.796242644373612e-05, 6.474378325710532e-05, 6.167757229670505e-05, 5.8756574500885264e-05, 5.597391269666611e-05, 5.332303540817878e-05, 5.079770143192513e-05, 4.8391965142539895e-05, 4.610016249445969e-05, 4.39168976865411e-05, 4.1837030458231246e-05, 3.985566398738091e-05, 3.796813336120721e-05, 3.616999459326153e-05, 3.445701416054475e-05, 3.282515903613579e-05, 3.12705871938665e-05, 2.9789638562687088e-05, 2.8378826409425255e-05, 2.7034829129650485e-05, 2.5754482427316158e-05, 2.4534771864767173e-05, 2.3372825765572948e-05, 2.2265908453476254e-05, 2.121141381153971e-05, 2.0206859146325713e-05, 1.9249879342663573e-05, 1.8338221295242e-05, 1.7469738603916633e-05, 1.6642386520243354e-05, 1.585421713333951e-05, 1.5103374783738682e-05, 1.4388091694441448e-05, 1.3706683808875858e-05, 1.305754682596864e-05, 1.2439152422992024e-05, 1.1850044657293422e-05, 1.1288836538436103e-05, 1.0754206762680433e-05, 1.0244896602117287e-05, 9.759706941129531e-06, 9.297495453204131e-06, 8.857173911448112e-06, 8.43770562647616e-06, 8.038103005637763e-06, 7.657425227837247e-06, 7.2947760284724046e-06, 6.9493015892765345e-06, 6.620188528095818e-06, 6.3066619838691015e-06, 6.007983792301465e-06, 5.723450747936308e-06, 5.452392948534269e-06, 5.194172217860946e-06, 4.9481806031700626e-06, 4.713838943844571e-06, 4.490595507825688e-06, 4.2779246926195304e-06, 4.075325787822945e-06, 3.882321796255101e-06, 3.6984583109192806e-06, 3.523302445150814e-06, 3.356441813432309e-06, 3.1974835604766085e-06, 3.0460534362915636e-06, 2.901794915048952e-06, 2.7643683556830307e-06, 2.6334502022424253e-06, 2.5087322221126816e-06, 2.3899207803159575e-06, 2.276736148179265e-06, 2.168911844743604e-06, 2.066194009363402e-06, 1.9683408040191155e-06, 1.8751218439358064e-06, 1.7863176551671344e-06, 1.7017191578677214e-06, 1.6211271740372965e-06, 1.5443519585776654e-06, 1.471212752558425e-06, 1.4015373576396356e-06, 1.3351617306494797e-06, 1.271929597362379e-06, 1.2116920845682522e-06, 1.154307369566666e-06, 1.0996403462606452e-06, 1.047562307063998e-06, 9.979506398732435e-07, 9.506885393906926e-07, 9.056647321190226e-07, 8.6277321437988e-07, 8.219130027396983e-07, 7.829878962551401e-07, 7.459062499783943e-07, 7.105807591890709e-07, 6.769282538446914e-07, 6.44869502765831e-07, 6.143290270948873e-07, 5.852349225892834e-07, 5.575186903307161e-07, 5.311150754518705e-07, 5.059619135009024e-07, 4.819999840819676e-07, 4.59172871427214e-07, 4.374268315719653e-07, 4.167106658203765e-07, 3.969756002036493e-07, 3.781751706470041e-07, 3.602651135750483e-07, 3.4320326169798117e-07, 3.2694944473327684e-07, 3.114653948291041e-07, 2.9671465646681364e-07, 2.826625006303673e-07, 2.6927584304063074e-07, 2.565231662620213e-07, 2.4437444549811884e-07, 2.328010779015343e-07, 2.2177581523160303e-07, 2.112726997013529e-07, 2.0126700286270619e-07, 1.9173516738602636e-07, 1.826547515969367e-07, 1.7400437663982827e-07, 1.6576367614365966e-07, 1.5791324827154187e-07, 1.5043461004121453e-07, 1.4331015380886586e-07, 1.36523105813842e-07, 1.3005748668664416e-07, 1.2389807382723365e-07, 1.1803036556506847e-07, 1.124405470164907e-07, 1.0711545755907888e-07, 1.0204255984638776e-07, 9.720991029012385e-08, 9.260613094026025e-08, 8.822038269688541e-08, 8.404233979071633e-08, 8.006216547219286e-08, 7.62704888519163e-08, 7.2658382837905e-08, 6.921734311772314e-08, 6.593926813599803e-08, 6.281644002018536e-08, 5.984150640967408e-08, 5.700746314544963e-08, 5.430763777956e-08, 5.173567386555964e-08, 4.928551599294467e-08, 4.6951395530344644e-08, 4.4727817043904675e-08, 4.2609545358881566e-08, 4.0591593233991836e-08, 3.866920961949218e-08, 3.683786847134742e-08, 3.509325809514989e-08, 3.3431270994701975e-08, 3.184799420136108e-08, 3.033970006137875e-08, 2.890283745954358e-08, 2.753402345846503e-08, 2.623003533381371e-08, 2.4987802986765936e-08, 2.380440171578852e-08, 2.267704533074576e-08, 2.1603079593116488e-08, 2.057997596687691e-08, 1.960532566533638e-08, 1.8676833979909976e-08, 1.7792314877475664e-08, 1.6949685853596035e-08, 1.6146963029487136e-08, 1.538225648119073e-08, 1.4653765789952985e-08, 1.3959775803333512e-08, 1.3298652597064676e-08, 1.2668839628153866e-08, 1.2068854070171575e-08, 1.1497283322097155e-08, 1.0952781682502702e-08, 1.0434067181244767e-08, 9.939918561204485e-09, 9.469172402969955e-09, 9.020720385691213e-09, 8.593506677658833e-09, 8.186525450462492e-09, 7.798818510876918e-09, 7.429473044899703e-09, 7.077619468629583e-09, 6.742429380925327e-09, 6.42311361302495e-09, 6.118920370533331e-09, 5.829133463403729e-09, 5.5530706197458694e-09, 5.290081879490672e-09, 5.039548064129657e-09, 4.8008793189261925e-09, 4.573513724166404e-09, 4.356915972180059e-09, 4.150576107016627e-09, 3.954008323809221e-09, 3.76674982499965e-09, 3.5883597307316835e-09, 3.4184180408471796e-09, 3.2565246460411947e-09, 3.1022983858479524e-09, 2.9553761512398104e-09, 2.8154120297263737e-09, 2.682076490940996e-09},
	{-0.00038419980174515995, -0.00042753525501126096, -0.00046636185437632543, -0.0005006746078611992, -0.0005304944510093621, -0.0005558668858307433, -0.000576860545130866, -0.0005935656939697554, -0.0006060926797902876, -0.0006145703424950406, -0.0006191443954383775, -0.0006199757879407198, -0.0006172390595290576, -0.0006111206956660646, -0.000601817494254099, -0.0005895349516942481, -0.0005744856767487229, -0.0005568878399015864, -0.000536963665342196, -0.0005149379721119225, -0.0004910367703616228, -0.0004654859180688358, -0.0004385098429633712, -0.00041033033381140987, -0.000381165404614716, -0.0003512282346962507, -0.00032072618706927133, -0.00028985990692667845, -0.00025882250154342183, -0.00022779880235952689, -0.00019696470950684967, -0.00016648661856087237, -0.00013652092884138412, -0.00010721363215418159, -7.869998046119734e-05, -5.110423058973424e-05, -2.4539463743548055e-05, 8.925227400137417e-07, 2.5101254231344326e-05, 4.8007551351621805e-05, 6.954343954946756e-05, 8.965199924187094e-05, 0.00010828716021916346, 0.00012541344415380578, 0.00014100565916416938, 0.00015504855046809328, 0.00016753641121762576, 0.00017847265763699637, 0.00018786937259157027, 0.00019574682169748095, 0.00020213294604105734, 0.00020706283551536736, 0.00021057818669956017, 0.0002127267491066196, 0.00021356176350809214, 0.00021314139591180486, 0.00021152817062203988, 0.00020878840565258382, 0.00020499165359302867, 0.00020021015084916222, 0.00019451827799071971, 0.00018799203374563744, 0.00018070852498066047, 0.0001727454748051017, 0.00016418075072906, 0.00015509191460076377, 0.00014555579584115322, 0.00013564808928851038, 0.0001254429787630084, 0.00011501278726151664, 0.00010442765449783849, 9.37552423136818e-05, 8.306046830188385e-05, 7.240526780650032e-05, 6.184838429498756e-05, 5.144518793647108e-05, 4.124752206752237e-05, 3.130357708341757e-05, 2.1657791158903635e-05, 1.2350777078356112e-05, 3.4192743411176084e-06, -5.103874396078616e-06, -1.3189723571263268e-05, -2.0813202778843693e-05, -2.795307382843897e-05, -3.459186805133586e-05, -4.071580515748268e-05, -4.6314694988524843e-05, -5.13818235452767e-05, -5.5913824691494305e-05, -5.991053895018234e-05, -6.337486081428782e-05, -6.631257599089281e-05, -6.873218998733257e-05, -7.064474942947555e-05, -7.206365747717254e-05, -7.300448467009173e-05, -7.348477649930266e-05, -7.352385895655796e-05, -7.314264326476432e-05, -7.236343094014675e-05, -7.120972027961449e-05, -6.970601530634603e-05, -6.787763814314605e-05, -6.575054571716795e-05, -6.335115163167537e-05, -6.070615397107483e-05, -5.784236973498611e-05, -5.478657652606368e-05, -5.1565362045077584e-05, -4.82049818758186e-05, -4.473122597210005e-05, -4.1169294189857356e-05, -3.7543681139440785e-05, -3.387807056697905e-05, -3.019523940945542e-05, -2.6516971606157002e-05, -2.2863981689674295e-05, -1.925584812286257e-05, -1.571095629432076e-05, -1.2246451034165473e-05, -8.878198464317902e-06, -5.62075695329762e-06, -2.487356904720301e-06, 5.101109286052299e-07, 3.361098946846397e-06, 6.056398393647388e-06, 8.588127633660166e-06, 1.0949713438895079e-05, 1.3135865725264146e-05, 1.5142546196823296e-05, 1.6966931367977367e-05, 1.8607370443381275e-05, 2.0063338541556917e-05, 2.13353857514644e-05, 2.242508251154667e-05, 2.3334961798247887e-05, 2.406845860583637e-05, 2.4629847191698512e-05, 2.502417655127502e-05, 2.5257204574651997e-05, 2.53353313226713e-05, 2.526553184446204e-05, 2.5055288940695853e-05, 2.4712526257811786e-05, 2.424554207812004e-05, 2.3662944149254504e-05, 2.297358587407734e-05, 2.218650415901552e-05, 2.1310859195098292e-05, 2.0355876421828036e-05, 1.9330790899613318e-05, 1.824479429197338e-05, 1.7106984634233402e-05, 1.5926319041107006e-05, 1.4711569481537517e-05, 1.347128172556486e-05, 1.2213737544914438e-05, 1.0946920226574276e-05, 9.67848343693355e-06, 8.415723453187688e-06, 7.165554758751999e-06, 5.93448898043722e-06, 4.728617127187427e-06, 3.5535950733179562e-06, 2.41463221345875e-06, 1.3164832018456298e-06, 2.634426752331583e-07, -7.406571534524497e-07, -1.6924461545323522e-06, -2.589013327580358e-06, -3.4279013760065545e-06, -4.207098959474937e-06, -4.925030779476982e-06, -5.5805456582748245e-06, -6.172902775173368e-06, -6.701756226713809e-06, -7.167138078939946e-06, -7.5694400804160054e-06, -7.909394204216802e-06, -8.188052185717673e-06, -8.406764220735738e-06, -8.56715698547047e-06, -8.671111135818043e-06, -8.720738439049076e-06, -8.718358685603532e-06, -8.666476522930544e-06, -8.567758346946404e-06, -8.425009379862092e-06, -8.24115105590407e-06, -8.019198828878824e-06, -7.762240507672884e-06, -7.473415217693722e-06, -7.15589307800035e-06, -6.8128556755005125e-06, -6.447477409157319e-06, -6.062907768703034e-06, -5.662254603950013e-06, -5.248568432464598e-06, -4.824827825172481e-06, -4.393925901434213e-06, -3.95865795730482e-06, -3.5217102431066157e-06, -3.0856498991309936e-06, -2.6529160512717277e-06, -2.225812061704795e-06, -1.806498923390331e-06, -1.3969897812004116e-06, -9.991455568884344e-07, -6.146716499252134e-07, -2.451156814440816e-07, 1.0813375582996229e-07, 4.4384738273887195e-07, 7.609545985337502e-07, 1.0585419730978901e-06, 1.3358509169293413e-06, 1.592274581527981e-06, 1.8273540446901773e-06, 2.040773836673101e-06, 2.2323568642613086e-06, 2.402058790462943e-06, 2.549961927895848e-06, 2.6762687039104086e-06, 2.7812947551527807e-06, 2.8654617086171926e-06, 2.929289705287297e-06, 2.9733897212447888e-06, 2.998455739647e-06, 3.005256825266419e-06, 2.994629151363187e-06, 2.9674680265491965e-06, 2.9247199670194e-06, 2.8673748570944785e-06, 2.7964582384593152e-06, 2.71302376581498e-06, 2.6181458639082154e-06, 2.512912618081561e-06, 2.398418927618746e-06, 2.2757599482620392e-06, 2.1460248473692876e-06, 2.0102908922748694e-06, 1.8696178895377036e-06, 1.725042989915315e-06, 1.5775758711110661e-06, 1.4281943076144313e-06, 1.277840134305113e-06, 1.1274156079310336e-06, 9.777801681093929e-07, 8.297475971469449e-07, 6.840835757400313e-07, 5.415036295023645e-07, 4.026714592867307e-07, 2.6819764641910954e-07, 1.3863872225589935e-07, 1.44965899083766e-08, -1.0378171544301053e-07},
	{-0.00038419980174515995, -0.00042753525501126096, -0.00046636185437632543, -0.0005006746078611992, -0.0005304944510093621, -0.0005558668858307433, -0.000576860545130866, -0.0005935656939697554, -0.0006060926797902876, -0.0006145703424950406, -0.0006191443954383775, -0.0006199757879407198, -0.0006172390595290576, -0.0006111206956660646, -0.000601817494254099, -0.0005895349516942481, -0.0005744856767487229, -0.0005568878399015864, -0.000536963665342196, -0.0005149379721119225, -0.0004910367703616228, -0.0004654859180688358, -0.0004385098429633712, -0.00041033033381140987, -0.000381165404614716, -0.0003512282346962507, -0.00032072618706927133, -0.00028985990692667845, -0.00025882250154342183, -0.00022779880235952689, -0.00019696470950684967, -0.00016648661856087237, -0.00013652092884138412, -0.00010721363215418159, -7.869998046119734e-05, -5.110423058973424e-05, -2.4539463743548055e-05, 8.925227400137417e-07, 2.5101254231344326e-05, 4.8007551351621805e-05, 6.954343954946756e-05, 8.965199924187094e-05, 0.00010828716021916346, 0.00012541344415380578, 0.00014100565916416938, 0.00015504855046809328, 0.00016753641121762576, 0.00017847265763699637, 0.00018786937259157027, 0.00019574682169748095, 0.00020213294604105734, 0.00020706283551536736, 0.00021057818669956017, 0.0002127267491066196, 0.00021356176350809214, 0.00021314139591180486, 0.00021152817062203988, 0.00020878840565258382, 0.00020499165359302867, 0.00020021015084916222, 0.00019451827799071971, 0.00018799203374563744, 0.00018070852498066047, 0.0001727454748051017, 0.00016418075072906, 0.00015509191460076377, 0.00014555579584115322, 0.00013564808928851038, 0.0001254429787630084, 0.00011501278726151664, 0.00010442765449783849, 9.37552423136818e-05, 8.306046830188385e-05, 7.240526780650032e-05, 6.184838429498756e-05, 5.144518793647108e-05, 4.124752206752237e-05, 3.130357708341757e-05, 2.1657791158903635e-05, 1.2350777078356112e-05, 3.4192743411176084e-06, -5.103874396078616e-06, -1.3189723571263268e-05, -2.0813202778843693e-05, -2.795307382843897e-05, -3.459186805133586e-05, -4.071580515748268e-05, -4.6314694988524843e-05, -5.13818235452767e-05, -5.5913824691494305e-05, -5.991053895018234e-05, -6.337486081428782e-05, -6.631257599089281e-05, -6.873218998733257e-05, -7.064474942947555e-05, -7.206365747717254e-05, -7.300448467009173e-05, -7.348477649930266e-05, -7.352385895655796e-05, -7.314264326476432e-05, -7.236343094014675e-05, -7.120972027961449e-05, -6.970601530634603e-05, -6.787763814314605e-05, -6.575054571716795e-05, -6.335115163167537e-05, -6.070615397107483e-05, -5.784236973498611e-05, -5.478657652606368e-05, -5.1565362045077584e-05, -4.82049818758186e-05, -4.473122597210005e-05, -4.1169294189857356e-05, -3.7543681139440785e-05, -3.387807056697905e-05, -3.019523940945542e-05, -2.6516971606157002e-05, -2.2863981689674295e-05, -1.925584812286257e-05, -1.571095629432076e-05, -1.2246451034165473e-05, -8.878198464317902e-06, -5.62075695329762e-06, -2.487356904720301e-06, 5.101109286052299e-07, 3.361098946846397e-06, 6.056398393647388e-06, 8.588127633660166e-06, 1.0949713438895079e-05, 1.3135865725264146e-05, 1.5142546196823296e-05, 1.6966931367977367e-05, 1.8607370443381275e-05, 2.0063338541556917e-05, 2.13353857514644e-05, 2.242508251154667e-05, 2.3334961798247887e-05, 2.406845860583637e-05, 2.4629847191698512e-05, 2.502417655127502e-05, 2.5257204574651997e-05, 2.53353313226713e-05, 2.526553184446204e-05, 2.5055288940695853e-05, 2.4712526257811786e-05, 2.424554207812004e-05, 2.3662944149254504e-05, 2.297358587407734e-05, 2.218650415901552e-05, 2.1310859195098292e-05, 2.0355876421828036e-05, 1.9330790899613318e-05, 1.824479429197338e-05, 1.7106984634233402e-05, 1.5926319041107006e-05, 1.4711569481537517e-05, 1.347128172556486e-05, 1.2213737544914438e-05, 1.0946920226574276e-05, 9.67848343693355e-06, 8.415723453187688e-06, 7.165554758751999e-06, 5.93448898043722e-06, 4.728617127187427e-06, 3.5535950733179562e-06, 2.41463221345875e-06, 1.3164832018456298e-06, 2.634426752331583e-07, -7.406571534524497e-07, -1.6924461545323522e-06, -2.589013327580358e-06, -3.4279013760065545e-06, -4.207098959474937e-06, -4.925030779476982e-06, -5.5805456582748245e-06, -6.172902775173368e-06, -6.701756226713809e-06, -7.167138078939946e-06, -7.5694400804160054e-06, -7.909394204216802e-06, -8.188052185717673e-06, -8.406764220735738e-06, -8.56715698547047e-06, -8.671111135818043e-06, -8.720738439049076e-06, -8.718358685603532e-06, -8.666476522930544e-06, -8.567758346946404e-06, -8.425009379862092e-06, -8.24115105590407e-06, -8.019198828878824e-06, -7.762240507672884e-06, -7.473415217693722e-06, -7.15589307800035e-06, -6.8128556755005125e-06, -6.447477409157319e-06, -6.062907768703034e-06, -5.662254603950013e-06, -5.248568432464598e-06, -4.824827825172481e-06, -4.393925901434213e-06, -3.95865795730482e-06, -3.5217102431066157e-06, -3.0856498991309936e-06, -2.6529160512717277e-06, -2.225812061704795e-06, -1.806498923390331e-06, -1.3969897812004116e-06, -9.991455568884344e-07, -6.146716499252134e-07, -2.451156814440816e-07, 1.0813375582996229e-07, 4.4384738273887195e-07, 7.609545985337502e-07, 1.0585419730978901e-06, 1.3358509169293413e-06, 1.592274581527981e-06, 1.8273540446901773e-06, 2.040773836673101e-06, 2.2323568642613086e-06, 2.402058790462943e-06, 2.549961927895848e-06, 2.6762687039104086e-06, 2.7812947551527807e-06, 2.8654617086171926e-06, 2.929289705287297e-06, 2.9733897212447888e-06, 2.998455739647e-06, 3.005256825266419e-06, 2.994629151363187e-06, 2.9674680265491965e-06, 2.9247199670194e-06, 2.8673748570944785e-06, 2.7964582384593152e-06, 2.71302376581498e-06, 2.6181458639082154e-06, 2.512912618081561e-06, 2.398418927618746e-06, 2.2757599482620392e-06, 2.1460248473692876e-06, 2.0102908922748694e-06, 1.8696178895377036e-06, 1.725042989915315e-06, 1.5775758711110661e-06, 1.4281943076144313e-06, 1.277840134305113e-06, 1.1274156079310336e-06, 9.777801681093929e-07, 8.297475971469449e-07, 6.840835757400313e-07, 5.415036295023645e-07, 4.026714592867307e-07, 2.6819764641910954e-07, 1.3863872225589935e-07, 1.44965899083766e-08, -1.0378171544301053e-07}};
const floatType Lbwi[3][256] = {
	{0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
	{0.0007604978272513301, 0.0007130264499621779, 0.0006637710693868771, 0.0006130974517291227, 0.0005613619144519797, 0.0005089097510548011, 0.0004560737940399623, 0.0004031731176284016, 0.00035051188091296716, 0.0002983783113063356, 0.0002470438273487046, 0.00019676229919214197, 0.00014776944437557197, 0.00010028235584872143, 5.449915859641777e-05, 1.0598790657522807e-05, -3.1259096173691197e-05, -7.093412113132528e-05, -0.0001083050503185784, -0.0001432695695303083, -0.0001757439602848051, -0.0002056626855447034, -0.00023297789181053822, -0.0002576588344262383, -0.0002796912330452561, -0.00029907656427065267, -0.0003158312985040682, -0.0003299860880190458, -0.00034158491321572865, -0.0003506841939186979, -0.00035735187244999116, -0.000361666475047505, -0.00036371615800751586, -0.0003635977447114505, -0.00036141575945384884, -0.00035728146372325027, -0.0003513119003030591, -0.0003436289502578635, -0.00033435840755471636, -0.00032362907574103055, -0.00031157189076341774, -0.0002983190736673977, -0.000284003316568711, -0.00026875700493520334, -0.00025271147886604434, -0.00023599633570441003, -0.00021873877597263278, -0.00020106299427700015, -0.00018308961649456145, -0.0001649351842280483, -0.0001467116871987762, -0.00012852614394249457, -0.00011048023088077371, -9.266995956173772e-05, -7.518540159969276e-05, -5.811046059428122e-05, -4.152269007688557e-05, -2.5493156315679606e-05, -1.008634461140549e-05, 4.639892466026964e-06, 1.8634346614469966e-05, 3.185242697116236e-05, 4.425609690940139e-05, 5.5813776562292256e-05, 6.650021326996385e-05, 7.629632222398537e-05, 8.518899964341428e-05, 9.317091086141305e-05, 0.00010024025573020592, 0.00010640051376589929, 0.00011166017145399979, 0.00011603243412203256, 0.0001195349247582255, 0.00012218937211556523, 0.0001240212903894554, 0.00012505965269555964, 0.00012533656050304158, 0.00012488691109819968, 0.00012374806506531226, 0.00012195951567624342, 0.00011956256197889341, 0.00011659998726778341, 0.00011311574450880484, 0.00010915465017529032, 0.0001047620878348951, 9.998372270712606e-05, 9.486522829049195e-05, 8.945202603691951e-05, 8.378903892999904e-05, 7.792045970346796e-05, 7.188953431774827e-05, 6.573836119592801e-05, 5.950770660687243e-05, 5.323683647268716e-05, 4.696336477100566e-05, 4.072311859996596e-05, 3.4550019875663235e-05, 2.8475983538656562e-05, 2.2530832058065595e-05, 1.6742225939173075e-05, 1.1135609863458295e-05, 5.734174018797117e-06, 5.588301122989446e-07, -4.371798500994071e-06, -9.041373193511362e-06, -1.3435823611732028e-05, -1.7543319102066834e-05, -2.1354228759233333e-05, -2.4861070869465198e-05, -2.8058452544256054e-05, -3.0943000358050895e-05, -3.351328281553273e-05, -3.57697254811019e-05, -3.771451960502524e-05, -3.9351525077770255e-05, -4.068616853649071e-05, -4.172533743575054e-05, -4.247727087864279e-05, -4.2951447984761276e-05, -4.3158474548308875e-05, -4.310996871327532e-05, -4.28184463633917e-05, -4.229720689277212e-05, -4.156021998909033e-05, -4.062201402511105e-05, -3.949756661670356e-05, -3.8202197866401504e-05, -3.675146677142675e-05, -3.516107123414565e-05, -3.344675207144707e-05, -3.1624201377781e-05, -2.970897555482882e-05, -2.7716413279226668e-05, -2.5661558638660278e-05, -2.355908962620406e-05, -2.1423252143188403e-05, -1.9267799622331762e-05, -1.710593834553659e-05, -1.495027849477644e-05, -1.2812790940033326e-05, -1.0704769735405373e-05, -8.636800263402722e-06, -6.618732938178716e-06, -4.659662351082602e-06, -2.767911716533159e-06, -9.51022452850402e-07, 7.842512886201608e-07, 2.431943351975813e-06, 3.98687178582989e-06, 5.444630771040423e-06, 6.801578518107273e-06, 8.054821396164235e-06, 9.202194564392534e-06, 1.0242239383614622e-05, 1.1174177890846695e-05, 1.199788462275826e-05, 1.27138560753778e-05, 1.332317808707237e-05, 1.3827491429899265e-05, 1.422895589096802e-05, 1.4530213120554145e-05, 1.4734348517468725e-05, 1.4844852414709953e-05, 1.4865580819806216e-05, 1.4800715954608191e-05, 1.465472682870545e-05, 1.4432330069234538e-05, 1.4138451217716097e-05, 1.3778186691811405e-05, 1.3356766596625574e-05, 1.2879518556506616e-05, 1.2351832724293343e-05, 1.1779128110746353e-05, 1.1166820362546216e-05, 1.0520291102849693e-05, 9.84485893404208e-06, 9.145752188091687e-06, 8.428083495875823e-06, 7.696826233077331e-06, 6.956792886812202e-06, 6.212615374102513e-06, 5.468727330710659e-06, 4.729348376750523e-06, 3.9984703539340896e-06, 3.279845518337573e-06, 2.5769766622142446e-06, 1.893109128670871e-06, 1.2312246739855197e-06, 5.940371239955896e-07, -1.601023665910493e-08, -5.967456105829486e-07, -1.1462680433154246e-06, -1.6629452685100401e-06, -2.145410127217017e-06, -2.5925556499471488e-06, -3.0035288935568693e-06, -3.3777236276722216e-06, -3.714771967379798e-06, -4.014535050276366e-06, -4.277092856708894e-06, -4.502733272178905e-06, -4.691940490457089e-06, -4.845382854985908e-06, -4.963900234670734e-06, -5.048491028206645e-06, -5.100298888692535e-06, -5.120599257481126e-06, -5.1107857930385365e-06, -5.072356777076124e-06, -5.006901576406248e-06, -4.916087234898756e-06, -4.801645265611952e-06, -4.665358708676151e-06, -4.5090495158543256e-06, -4.334566317927036e-06, -4.143772626180696e-06, -3.938535514351569e-06, -3.7207148224232873e-06, -3.492152918722922e-06, -3.2546650518376384e-06, -3.010030319007384e-06, -2.7599832728639284e-06, -2.50620618370612e-06, -2.2503219699472236e-06, -1.993887804962237e-06, -1.7383894043198386e-06, -1.4852359933202397e-06, -1.2357559508928921e-06, -9.911931222472266e-07, -7.527037892287056e-07, -5.213542841179921e-07, -2.9811922963297643e-07, -8.388038515482095e-08, 1.2057392329323255e-07, 3.1454881403198953e-07, 4.974423283919384e-07, 6.687444055234381e-07, 8.280353833198861e-07, 9.749840566843249e-07, 1.1093453253926134e-06, 1.230957464597572e-06, 1.3397390515827118e-06, 1.4356855827211485e-06, 1.5188658147314022e-06, 1.5894178642583111e-06, 1.6475450995523046e-06, 1.6935118575861374e-06, 1.7276390193443405e-06, 1.7502994752601106e-06, 1.7619135118676912e-06, 1.7629441496987588e-06, 1.7538924612902434e-06, 1.7352928969016572e-06, 1.7077086441740354e-06, 1.6717270465130628e-06, 1.6279551034575962e-06},
	{-0.0007604978272513301, -0.0007130264499621779, -0.0006637710693868771, -0.0006130974517291227, -0.0005613619144519797, -0.0005089097510548011, -0.0004560737940399623, -0.0004031731176284016, -0.00035051188091296716, -0.0002983783113063356, -0.0002470438273487046, -0.00019676229919214197, -0.00014776944437557197, -0.00010028235584872143, -5.449915859641777e-05, -1.0598790657522807e-05, 3.1259096173691197e-05, 7.093412113132528e-05, 0.0001083050503185784, 0.0001432695695303083, 0.0001757439602848051, 0.0002056626855447034, 0.00023297789181053822, 0.0002576588344262383, 0.0002796912330452561, 0.00029907656427065267, 0.0003158312985040682, 0.0003299860880190458, 0.00034158491321572865, 0.0003506841939186979, 0.00035735187244999116, 0.000361666475047505, 0.00036371615800751586, 0.0003635977447114505, 0.00036141575945384884, 0.00035728146372325027, 0.0003513119003030591, 0.0003436289502578635, 0.00033435840755471636, 0.00032362907574103055, 0.00031157189076341774, 0.0002983190736673977, 0.000284003316568711, 0.00026875700493520334, 0.00025271147886604434, 0.00023599633570441003, 0.00021873877597263278, 0.00020106299427700015, 0.00018308961649456145, 0.0001649351842280483, 0.0001467116871987762, 0.00012852614394249457, 0.00011048023088077371, 9.266995956173772e-05, 7.518540159969276e-05, 5.811046059428122e-05, 4.152269007688557e-05, 2.5493156315679606e-05, 1.008634461140549e-05, -4.639892466026964e-06, -1.8634346614469966e-05, -3.185242697116236e-05, -4.425609690940139e-05, -5.5813776562292256e-05, -6.650021326996385e-05, -7.629632222398537e-05, -8.518899964341428e-05, -9.317091086141305e-05, -0.00010024025573020592, -0.00010640051376589929, -0.00011166017145399979, -0.00011603243412203256, -0.0001195349247582255, -0.00012218937211556523, -0.0001240212903894554, -0.00012505965269555964, -0.00012533656050304158, -0.00012488691109819968, -0.00012374806506531226, -0.00012195951567624342, -0.00011956256197889341, -0.00011659998726778341, -0.00011311574450880484, -0.00010915465017529032, -0.0001047620878348951, -9.998372270712606e-05, -9.486522829049195e-05, -8.945202603691951e-05, -8.378903892999904e-05, -7.792045970346796e-05, -7.188953431774827e-05, -6.573836119592801e-05, -5.950770660687243e-05, -5.323683647268716e-05, -4.696336477100566e-05, -4.072311859996596e-05, -3.4550019875663235e-05, -2.8475983538656562e-05, -2.2530832058065595e-05, -1.6742225939173075e-05, -1.1135609863458295e-05, -5.734174018797117e-06, -5.588301122989446e-07, 4.371798500994071e-06, 9.041373193511362e-06, 1.3435823611732028e-05, 1.7543319102066834e-05, 2.1354228759233333e-05, 2.4861070869465198e-05, 2.8058452544256054e-05, 3.0943000358050895e-05, 3.351328281553273e-05, 3.57697254811019e-05, 3.771451960502524e-05, 3.9351525077770255e-05, 4.068616853649071e-05, 4.172533743575054e-05, 4.247727087864279e-05, 4.2951447984761276e-05, 4.3158474548308875e-05, 4.310996871327532e-05, 4.28184463633917e-05, 4.229720689277212e-05, 4.156021998909033e-05, 4.062201402511105e-05, 3.949756661670356e-05, 3.8202197866401504e-05, 3.675146677142675e-05, 3.516107123414565e-05, 3.344675207144707e-05, 3.1624201377781e-05, 2.970897555482882e-05, 2.7716413279226668e-05, 2.5661558638660278e-05, 2.355908962620406e-05, 2.1423252143188403e-05, 1.9267799622331762e-05, 1.710593834553659e-05, 1.495027849477644e-05, 1.2812790940033326e-05, 1.0704769735405373e-05, 8.636800263402722e-06, 6.618732938178716e-06, 4.659662351082602e-06, 2.767911716533159e-06, 9.51022452850402e-07, -7.842512886201608e-07, -2.431943351975813e-06, -3.98687178582989e-06, -5.444630771040423e-06, -6.801578518107273e-06, -8.054821396164235e-06, -9.202194564392534e-06, -1.0242239383614622e-05, -1.1174177890846695e-05, -1.199788462275826e-05, -1.27138560753778e-05, -1.332317808707237e-05, -1.3827491429899265e-05, -1.422895589096802e-05, -1.4530213120554145e-05, -1.4734348517468725e-05, -1.4844852414709953e-05, -1.4865580819806216e-05, -1.4800715954608191e-05, -1.465472682870545e-05, -1.4432330069234538e-05, -1.4138451217716097e-05, -1.3778186691811405e-05, -1.3356766596625574e-05, -1.2879518556506616e-05, -1.2351832724293343e-05, -1.1779128110746353e-05, -1.1166820362546216e-05, -1.0520291102849693e-05, -9.84485893404208e-06, -9.145752188091687e-06, -8.428083495875823e-06, -7.696826233077331e-06, -6.956792886812202e-06, -6.212615374102513e-06, -5.468727330710659e-06, -4.729348376750523e-06, -3.9984703539340896e-06, -3.279845518337573e-06, -2.5769766622142446e-06, -1.893109128670871e-06, -1.2312246739855197e-06, -5.940371239955896e-07, 1.601023665910493e-08, 5.967456105829486e-07, 1.1462680433154246e-06, 1.6629452685100401e-06, 2.145410127217017e-06, 2.5925556499471488e-06, 3.0035288935568693e-06, 3.3777236276722216e-06, 3.714771967379798e-06, 4.014535050276366e-06, 4.277092856708894e-06, 4.502733272178905e-06, 4.691940490457089e-06, 4.845382854985908e-06, 4.963900234670734e-06, 5.048491028206645e-06, 5.100298888692535e-06, 5.120599257481126e-06, 5.1107857930385365e-06, 5.072356777076124e-06, 5.006901576406248e-06, 4.916087234898756e-06, 4.801645265611952e-06, 4.665358708676151e-06, 4.5090495158543256e-06, 4.334566317927036e-06, 4.143772626180696e-06, 3.938535514351569e-06, 3.7207148224232873e-06, 3.492152918722922e-06, 3.2546650518376384e-06, 3.010030319007384e-06, 2.7599832728639284e-06, 2.50620618370612e-06, 2.2503219699472236e-06, 1.993887804962237e-06, 1.7383894043198386e-06, 1.4852359933202397e-06, 1.2357559508928921e-06, 9.911931222472266e-07, 7.527037892287056e-07, 5.213542841179921e-07, 2.9811922963297643e-07, 8.388038515482095e-08, -1.2057392329323255e-07, -3.1454881403198953e-07, -4.974423283919384e-07, -6.687444055234381e-07, -8.280353833198861e-07, -9.749840566843249e-07, -1.1093453253926134e-06, -1.230957464597572e-06, -1.3397390515827118e-06, -1.4356855827211485e-06, -1.5188658147314022e-06, -1.5894178642583111e-06, -1.6475450995523046e-06, -1.6935118575861374e-06, -1.7276390193443405e-06, -1.7502994752601106e-06, -1.7619135118676912e-06, -1.7629441496987588e-06, -1.7538924612902434e-06, -1.7352928969016572e-06, -1.7077086441740354e-06, -1.6717270465130628e-06, -1.6279551034575962e-06}};


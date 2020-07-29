# 1 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c"
# 1 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 149 "<built-in>" 3
# 1 "<command line>" 1





# 1 "/cad/xilinx/vivado/2018.2/Vivado/2018.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 300 "/cad/xilinx/vivado/2018.2/Vivado/2018.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 7 "<command line>" 2
# 1 "<built-in>" 2
# 1 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c" 2
# 27 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c"
# 1 "../../../../../pool0/Saranyu/gsm/cpp_bug4/private.h" 1
# 30 "../../../../../pool0/Saranyu/gsm/cpp_bug4/private.h"
typedef short word;
typedef long longword;
# 28 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c" 2
# 1 "../../../../../pool0/Saranyu/gsm/cpp_bug4/add.c" 1
# 34 "../../../../../pool0/Saranyu/gsm/cpp_bug4/add.c"
word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
  return ((sum) < ((-32767)-1) ? ((-32767)-1) : (sum) > ( 32767) ? ( 32767): (sum));
}

word
gsm_mult (word a, word b)
{
  if (a == ((-32767)-1) && b == ((-32767)-1))
    return ( 32767);
  else
    return (((longword) a * (longword) b) >> (15));
}

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == ((-32767)-1) && a == ((-32767)-1))
    return ( 32767);
  else
    {
      prod = (longword) a *(longword) b + 16384;
      prod >>= 15;
      return prod & 0xFFFF;
    }
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == ((-32767)-1) ? ( 32767) : -a) : a;
}

const unsigned char bitoff[256] = {
  8, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4,
  3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

word
gsm_norm (longword a)
# 110 "../../../../../pool0/Saranyu/gsm/cpp_bug4/add.c"
{

  if (a < 0)
    {
      if (a <= -1073741824)
 return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
}

word
gsm_div (word num, word denum)
{
  longword L_num;
  longword L_denum;
  word div;
  int k;

  L_num = num;
  L_denum = denum;
  div = 0;
  k = 15;





  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
 {
   L_num -= L_denum;
   div++;
 }
    }

  return div;
}
# 29 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c" 2
# 39 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c"
void
Autocorrelation (word * s ,
   longword * L_ACF )




{
  register int k, i;

  word temp;
  word smax;
  word scalauto, n;
  word *sp;
  word sl;



  smax = 0;
  for (k = 0; k <= (4 -1); k++)
    {
_ssdm_op_SpecPipeline(-1, 1, 1, 0, "");
 temp = gsm_abs(s[k]);
      if (temp > smax)
 smax = temp;
    }



  if (smax == 0)
    scalauto = 0;
  else
    scalauto = 4 - gsm_norm ((longword) smax << 16);

  if (scalauto > 0 && scalauto <= 4)
    {
      n = scalauto;
      for (k = 0; k <= (4 -1); k++)
_ssdm_Unroll(0,0,0, "");
 s[k] = gsm_mult_r(s[k], 16384 >> (n - 1));
    }



  {
    sp = s;
    sl = *sp;
# 159 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c"
  }


  if (scalauto > 0)

    for (k = (4 -1); k >= 0; k--)
_ssdm_Unroll(0,0,0, "");
 *s++ <<= scalauto;
}



void
Reflection_coefficients (longword * L_ACF ,
    register word * r )
{
  register int i, m, n;
  register word temp;
  word ACF[9];
  word P[9];
  word K[9];




  if (L_ACF[0] == 0)
_ssdm_op_SpecPipeline(-1, 1, 1, 0, "");
 {
      for (i = 8; i > 0; i--)
 *r++ = 0;
      return;
    }

  temp = gsm_norm (L_ACF[0]);
  for (i = 0; i <= 8; i++)
_ssdm_op_SpecPipeline(-1, 1, 1, 0, "");
 ACF[i] = ((L_ACF[i] << temp) >> (16));




  for (i = 1; i <= 7; i++)
_ssdm_op_SpecPipeline(-1, 1, 1, 0, "");
 K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
_ssdm_op_SpecPipeline(-1, 1, 1, 0, "");
 P[i] = ACF[i];



  for (n = 1; n <= 8; n++, r++)
_ssdm_op_SpecPipeline(-1, 1, 1, 0, "");
 {

      temp = P[1];
      temp = gsm_abs(temp);
      if (P[0] < temp)
 {
   for (i = n; i <= 8; i++)
     *r++ = 0;
   return;
 }

      *r = gsm_div (temp, P[0]);

      if (P[1] > 0)
 *r = -*r;
      if (n == 8)
 return;



      temp = gsm_mult_r(P[1], *r);
      P[0] = gsm_add(P[0], temp);

      for (m = 1; m <= 8 - n; m++)
 {
   temp = gsm_mult_r(K[m], *r);
   P[m] = gsm_add(P[m + 1], temp);

   temp = gsm_mult_r(P[m + 1], *r);
   K[m] = gsm_add(K[m], temp);
 }
    }
}



void
Transformation_to_Log_Area_Ratios (register word * r )







{
  register word temp;
  register int i;




  for (i = 1; i <= 8; i++, r++)
_ssdm_op_SpecPipeline(-1, 1, 1, 0, "");
 {

      temp = *r;
      temp = gsm_abs(temp);

      if (temp < 22118)
 {
   temp >>= 1;
 }
      else if (temp < 31130)
 {
   temp -= 11059;
 }
      else
 {
   temp -= 26112;
   temp <<= 2;
 }

      *r = *r < 0 ? -temp : temp;
    }
}



void
Quantization_and_coding (register word * LAR )
{
  register word temp;
# 314 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c"
  temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, 0); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>31 ? 31 - -32 : (temp<-32 ? 0 : temp - -32); LAR++;;
  temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, 0); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>31 ? 31 - -32 : (temp<-32 ? 0 : temp - -32); LAR++;;
  temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, 2048); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>15 ? 15 - -16 : (temp<-16 ? 0 : temp - -16); LAR++;;
  temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, -2560); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>15 ? 15 - -16 : (temp<-16 ? 0 : temp - -16); LAR++;;

  temp = gsm_mult(13964, *LAR); temp = gsm_add(temp, 94); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>7 ? 7 - -8 : (temp<-8 ? 0 : temp - -8); LAR++;;
  temp = gsm_mult(15360, *LAR); temp = gsm_add(temp, -1792); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>7 ? 7 - -8 : (temp<-8 ? 0 : temp - -8); LAR++;;
  temp = gsm_mult(8534, *LAR); temp = gsm_add(temp, -341); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>3 ? 3 - -4 : (temp<-4 ? 0 : temp - -4); LAR++;;
  temp = gsm_mult(9036, *LAR); temp = gsm_add(temp, -1144); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>3 ? 3 - -4 : (temp<-4 ? 0 : temp - -4); LAR++;;


}

void
Gsm_LPC_Analysis (word * s ,
    word * LARc )
{
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
  Reflection_coefficients (L_ACF, LARc);
  Transformation_to_Log_Area_Ratios (LARc);
  Quantization_and_coding (LARc);
}

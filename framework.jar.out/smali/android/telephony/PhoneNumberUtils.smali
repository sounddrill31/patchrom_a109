.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
.field private static final CCC_LENGTH:I

.field public static final CDMA_CFALL_DISABLE:Ljava/lang/String; = "*730"

.field public static final CDMA_CFB_DISABLE:Ljava/lang/String; = "*900"

.field public static final CDMA_CFB_ENABLE:Ljava/lang/String; = "*90"

.field public static final CDMA_CFDF_DISABLE:Ljava/lang/String; = "*680"

.field public static final CDMA_CFDF_ENABLE:Ljava/lang/String; = "*68"

.field public static final CDMA_CFNR_DISABLE:Ljava/lang/String; = "*920"

.field public static final CDMA_CFNR_ENABLE:Ljava/lang/String; = "*92"

.field public static final CDMA_CFU_DISABLE:Ljava/lang/String; = "*720"

.field public static final CDMA_CFU_ENABLE:Ljava/lang/String; = "*72"

.field public static final CDMA_CW_DISABLE:Ljava/lang/String; = "*740"

.field public static final CDMA_CW_ENABLE:Ljava/lang/String; = "*74"

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field public static final ID_INVALID:I = 0x5

.field public static final ID_VALID:I = 0x3

.field public static final ID_VALID_BUT_NEED_AREA_CODE:I = 0x2

.field public static final ID_VALID_DOMESTIC_ONLY:I = 0x4

.field public static final ID_VALID_ECC:I = 0x1

.field public static final ID_VALID_WHEN_CALL_EXIST:I = 0x6

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0x7

.field static final MIN_MATCH_CTA:I = 0xb

.field private static final MTK_CTA_SUPPORT_FLAG:Z = false

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x34

    const/16 v7, 0x33

    const/16 v6, 0x32

    const/16 v5, 0x39

    const/16 v4, 0x37

    .line 103
    const-string v1, "[\\+]?[0-9.-]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 149
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "US"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "CA"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "AS"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "AI"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "AG"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "BS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "BB"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "BM"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "VG"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "KY"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "DM"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "DO"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "GD"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "GU"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "JM"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "PR"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "MS"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "MP"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "KN"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "LC"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "VC"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "TT"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "TC"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "VI"

    aput-object v3, v1, v2

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 2104
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2106
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x61

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x62

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2107
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x41

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x42

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x43

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2109
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2110
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x44

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x45

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2112
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2113
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x47

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x48

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x49

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2115
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6a

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6b

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6c

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2116
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4a

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4b

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4c

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2118
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6d

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6e

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6f

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2119
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4d

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4e

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4f

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2121
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x70

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x71

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x73

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2122
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x51

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x52

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x53

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2124
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x74

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x75

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x76

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2125
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x54

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x55

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x56

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2127
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x77

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x78

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2128
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x57

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x58

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x59

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2604
    const/16 v1, 0x64

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 2616
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v1, v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2604
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2639
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2464
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 2465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2466
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2467
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2474
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "retStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2471
    .end local v2    # "retStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2472
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "retStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 1007
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1008
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1017
    :goto_0
    return v0

    .line 1009
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1017
    const/4 v0, 0x0

    goto :goto_0

    .line 1010
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 1011
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 1012
    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    .line 1013
    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    .line 1015
    :pswitch_4
    const/16 v0, 0x3b

    goto :goto_0

    .line 1009
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 999
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1001
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 923
    const/4 v0, 0x0

    .line 924
    .local v0, "prependPlus":Z
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 926
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    if-ge p2, v3, :cond_0

    .line 927
    const-string v3, ""

    .line 949
    :goto_0
    return-object v3

    .line 931
    :cond_0
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x90

    if-ne v3, v4, :cond_1

    .line 932
    const/4 v0, 0x1

    .line 935
    :cond_1
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p2, -0x1

    invoke-static {v1, p0, v3, v4}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 938
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 940
    const-string v3, ""

    goto :goto_0

    .line 943
    :cond_2
    if-eqz v0, :cond_3

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "ret":Ljava/lang/StringBuilder;
    move-object v1, v2

    .line 949
    .end local v2    # "ret":Ljava/lang/StringBuilder;
    .restart local v1    # "ret":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2167
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2169
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2170
    .local v0, "currIso":Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2171
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2172
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2178
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .prologue
    const/4 v7, 0x1

    .line 2231
    move-object v3, p0

    .line 2234
    .local v3, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2238
    if-ne p1, p2, :cond_7

    if-ne p1, v7, :cond_7

    .line 2240
    const/4 v2, 0x0

    .line 2241
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 2244
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2251
    :cond_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2253
    .local v1, "networkDialStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2257
    if-nez v3, :cond_3

    .line 2258
    move-object v3, v1

    .line 2269
    :goto_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2270
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2271
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 2274
    .local v0, "dialableIndex":I
    if-lt v0, v7, :cond_5

    .line 2275
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2278
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2290
    .end local v0    # "dialableIndex":I
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    :cond_2
    :goto_2
    move-object p0, v3

    .line 2298
    .end local p0    # "dialStr":Ljava/lang/String;
    :goto_3
    return-object p0

    .line 2260
    .restart local v1    # "networkDialStr":Ljava/lang/String;
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v4    # "tempDialStr":Ljava/lang/String;
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2266
    :cond_4
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2283
    .restart local v0    # "dialableIndex":I
    :cond_5
    if-gez v0, :cond_6

    .line 2284
    const-string v2, ""

    .line 2286
    :cond_6
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2295
    .end local v0    # "dialableIndex":I
    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    :cond_7
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2191
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2192
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2193
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2194
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 2195
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2199
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static charToBCD(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 1023
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1024
    add-int/lit8 v0, p0, -0x30

    .line 1035
    :goto_0
    return v0

    .line 1025
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 1026
    const/16 v0, 0xa

    goto :goto_0

    .line 1027
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 1028
    const/16 v0, 0xb

    goto :goto_0

    .line 1029
    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 1030
    const/16 v0, 0xc

    goto :goto_0

    .line 1031
    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    .line 1032
    const/16 v0, 0xd

    goto :goto_0

    .line 1034
    :cond_4
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_5

    .line 1035
    const/16 v0, 0xe

    goto :goto_0

    .line 1038
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 2767
    const/4 v0, 0x0

    .line 2768
    .local v0, "trunk_prefix_was_read":Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 2769
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_2

    .line 2770
    if-eqz v0, :cond_0

    .line 2785
    :goto_1
    return v1

    .line 2776
    :cond_0
    const/4 v0, 0x1

    .line 2782
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2778
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2785
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 521
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 510
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .prologue
    .line 528
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 549
    const/4 v8, 0x0

    .line 550
    .local v8, "numNonDialableCharsInA":I
    const/4 v9, 0x0

    .line 552
    .local v9, "numNonDialableCharsInB":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v11, 0x1

    .line 649
    :goto_0
    return v11

    .line 552
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 555
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 558
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 559
    .local v4, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 560
    .local v5, "ib":I
    const/4 v6, 0x0

    .line 562
    .local v6, "matched":I
    :cond_5
    :goto_1
    if-ltz v4, :cond_8

    if-ltz v5, :cond_8

    .line 564
    const/4 v10, 0x0

    .line 566
    .local v10, "skipCmp":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 568
    .local v0, "ca":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_6

    .line 569
    add-int/lit8 v4, v4, -0x1

    .line 570
    const/4 v10, 0x1

    .line 571
    add-int/lit8 v8, v8, 0x1

    .line 574
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 576
    .local v1, "cb":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_7

    .line 577
    add-int/lit8 v5, v5, -0x1

    .line 578
    const/4 v10, 0x1

    .line 579
    add-int/lit8 v9, v9, 0x1

    .line 582
    :cond_7
    if-nez v10, :cond_5

    .line 583
    if-eq v1, v0, :cond_9

    const/16 v11, 0x4e

    if-eq v0, v11, :cond_9

    const/16 v11, 0x4e

    if-eq v1, v11, :cond_9

    .line 591
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v10    # "skipCmp":Z
    :cond_8
    const/4 v7, 0x0

    .line 595
    .local v7, "minMatchLen":I
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v11}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->getMinMatch()I

    move-result v7

    .line 598
    const-string v11, "PhoneNumberUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[compareLoosely] a: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", b: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", minMatchLen:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    if-ge v6, v7, :cond_b

    .line 601
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v8

    .line 602
    .local v2, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v9

    .line 607
    .local v3, "effectiveBLen":I
    if-ne v2, v3, :cond_a

    if-ne v2, v6, :cond_a

    .line 608
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 586
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    .end local v7    # "minMatchLen":I
    .restart local v0    # "ca":C
    .restart local v1    # "cb":C
    .restart local v10    # "skipCmp":Z
    :cond_9
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 611
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v10    # "skipCmp":Z
    .restart local v2    # "effectiveALen":I
    .restart local v3    # "effectiveBLen":I
    .restart local v7    # "minMatchLen":I
    :cond_a
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[compareLoosely] return: false"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 616
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_b
    if-lt v6, v7, :cond_d

    if-ltz v4, :cond_c

    if-gez v5, :cond_d

    .line 617
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 630
    :cond_d
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_e

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 633
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 636
    :cond_e
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 639
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 642
    :cond_f
    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 645
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 648
    :cond_10
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[compareLoosely] return: false"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 657
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .prologue
    .line 665
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 666
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    .line 803
    :goto_0
    return v18

    .line 666
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 667
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    .line 668
    const/16 v18, 0x0

    goto :goto_0

    .line 671
    :cond_3
    const/4 v10, 0x0

    .line 672
    .local v10, "forwardIndexA":I
    const/4 v11, 0x0

    .line 674
    .local v11, "forwardIndexB":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 676
    .local v6, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 678
    .local v7, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 679
    .local v5, "bothHasCountryCallingCode":Z
    const/4 v13, 0x1

    .line 680
    .local v13, "okToIgnorePrefix":Z
    const/16 v16, 0x0

    .line 681
    .local v16, "trunkPrefixIsOmittedA":Z
    const/16 v17, 0x0

    .line 682
    .local v17, "trunkPrefixIsOmittedB":Z
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 683
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 685
    const/16 v18, 0x0

    goto :goto_0

    .line 689
    :cond_4
    const/4 v13, 0x0

    .line 690
    const/4 v5, 0x1

    .line 691
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 692
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 718
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 719
    .local v3, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 720
    .local v4, "backwardIndexB":I
    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    if-lt v4, v11, :cond_f

    .line 721
    const/4 v14, 0x0

    .line 722
    .local v14, "skip_compare":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 723
    .local v8, "chA":C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 724
    .local v9, "chB":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 725
    add-int/lit8 v3, v3, -0x1

    .line 726
    const/4 v14, 0x1

    .line 728
    :cond_7
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 729
    add-int/lit8 v4, v4, -0x1

    .line 730
    const/4 v14, 0x1

    .line 733
    :cond_8
    if-nez v14, :cond_6

    .line 734
    if-eq v8, v9, :cond_e

    .line 735
    const/16 v18, 0x0

    goto :goto_0

    .line 693
    .end local v3    # "backwardIndexA":I
    .end local v4    # "backwardIndexB":I
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    .line 696
    const/4 v13, 0x0

    goto :goto_1

    .line 698
    :cond_a
    if-eqz v6, :cond_c

    .line 699
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 707
    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    .line 708
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 701
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 702
    .local v15, "tmp":I
    if-ltz v15, :cond_b

    .line 703
    move v10, v15

    .line 704
    const/16 v16, 0x1

    goto :goto_3

    .line 710
    .end local v15    # "tmp":I
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 711
    .restart local v15    # "tmp":I
    if-ltz v15, :cond_5

    .line 712
    move v11, v15

    .line 713
    const/16 v17, 0x1

    goto :goto_1

    .line 737
    .end local v15    # "tmp":I
    .restart local v3    # "backwardIndexA":I
    .restart local v4    # "backwardIndexB":I
    .restart local v8    # "chA":C
    .restart local v9    # "chB":C
    .restart local v14    # "skip_compare":Z
    :cond_e
    add-int/lit8 v3, v3, -0x1

    .line 738
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 742
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_f
    if-eqz v13, :cond_17

    .line 743
    if-eqz v16, :cond_10

    if-le v10, v3, :cond_11

    :cond_10
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_13

    .line 745
    :cond_11
    if-eqz p2, :cond_12

    .line 755
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 757
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 760
    :cond_13
    if-eqz v17, :cond_14

    if-le v11, v4, :cond_15

    :cond_14
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 762
    :cond_15
    if-eqz p2, :cond_16

    .line 763
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 765
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 778
    :cond_17
    if-nez v5, :cond_19

    const/4 v12, 0x1

    .line 779
    .local v12, "maybeNamp":Z
    :goto_4
    if-lt v3, v10, :cond_1b

    .line 780
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 781
    .restart local v8    # "chA":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 782
    if-eqz v12, :cond_1a

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 783
    const/4 v12, 0x0

    .line 788
    :cond_18
    add-int/lit8 v3, v3, -0x1

    .line 789
    goto :goto_4

    .line 778
    .end local v8    # "chA":C
    .end local v12    # "maybeNamp":Z
    :cond_19
    const/4 v12, 0x0

    goto :goto_4

    .line 785
    .restart local v8    # "chA":C
    .restart local v12    # "maybeNamp":Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 790
    .end local v8    # "chA":C
    :cond_1b
    :goto_5
    if-lt v4, v11, :cond_1e

    .line 791
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 792
    .restart local v9    # "chB":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 793
    if-eqz v12, :cond_1d

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 794
    const/4 v12, 0x0

    .line 799
    :cond_1c
    add-int/lit8 v4, v4, -0x1

    .line 800
    goto :goto_5

    .line 796
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 803
    .end local v9    # "chB":C
    .end local v12    # "maybeNamp":Z
    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 2081
    if-nez p0, :cond_1

    .line 2097
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2084
    .restart local p0    # "input":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2085
    .local v2, "len":I
    if-eqz v2, :cond_0

    .line 2089
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2091
    .local v3, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2092
    aget-char v0, v3, v1

    .line 2094
    .local v0, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 2091
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2097
    .end local v0    # "c":C
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0    # "input":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 416
    if-nez p0, :cond_0

    .line 417
    const/4 v4, 0x0

    .line 432
    :goto_0
    return-object v4

    .line 419
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 420
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 422
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 423
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 425
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    const/16 v0, 0x2c

    .line 430
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 427
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    const/16 v0, 0x3b

    goto :goto_2

    .line 432
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static extractGsmMmiNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2b

    .line 2796
    if-nez p0, :cond_0

    .line 2797
    const/4 v6, 0x0

    .line 2817
    :goto_0
    return-object v6

    .line 2800
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2801
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2802
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2804
    .local v1, "firstCharAdded":Z
    const/4 v5, 0x0

    .line 2806
    .local v5, "starfound":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 2807
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2808
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne v0, v8, :cond_1

    if-eqz v1, :cond_1

    if-ne v0, v8, :cond_3

    const/4 v6, 0x1

    if-le v2, v6, :cond_3

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2a

    if-ne v6, v7, :cond_3

    .line 2810
    :cond_1
    const/4 v1, 0x1

    .line 2811
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2806
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2812
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2817
    .end local v0    # "c":C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 299
    if-nez p0, :cond_0

    .line 300
    const/4 v6, 0x0

    .line 325
    :goto_0
    return-object v6

    .line 303
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 304
    .local v3, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 306
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 307
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 309
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 310
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 311
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    .line 314
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 316
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 318
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 319
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 320
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 339
    const/4 v5, 0x0

    .line 363
    :goto_0
    return-object v5

    .line 342
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 343
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 344
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 346
    .local v1, "haveSeenPlus":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 347
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 348
    .local v0, "c":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 349
    if-eqz v1, :cond_2

    .line 346
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 352
    :cond_2
    const/4 v1, 0x1

    .line 354
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 355
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 356
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 361
    .end local v0    # "c":C
    :cond_5
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[extractNetworkPortionAlt] phoneNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 485
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 501
    :goto_0
    return-object v5

    .line 488
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 492
    .local v4, "trimIndex":I
    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 493
    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 495
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 496
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 497
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 501
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .param p0, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 2448
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2449
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2450
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2454
    .end local v0    # "c":C
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 2448
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2454
    .end local v0    # "c":C
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1411
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1412
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 15
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 1298
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1299
    .local v4, "length":I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1302
    :cond_1
    const/4 v11, 0x5

    if-le v4, v11, :cond_0

    .line 1307
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1310
    .local v9, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1311
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1316
    new-array v1, v13, [I

    .line 1317
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1319
    .local v5, "numDashes":I
    const/4 v10, 0x1

    .line 1320
    .local v10, "state":I
    const/4 v7, 0x0

    .line 1321
    .local v7, "numDigits":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 1322
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1323
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 1367
    :cond_2
    :pswitch_0
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1325
    :pswitch_1
    if-eqz v7, :cond_3

    if-ne v10, v14, :cond_4

    .line 1326
    :cond_3
    const/4 v10, 0x3

    move v5, v6

    .line 1321
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_1

    .line 1339
    :cond_4
    :pswitch_2
    if-ne v10, v14, :cond_5

    .line 1341
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1343
    :cond_5
    if-ne v10, v13, :cond_6

    .line 1345
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    .line 1350
    :goto_3
    const/4 v10, 0x1

    .line 1351
    add-int/lit8 v7, v7, 0x1

    .line 1352
    goto :goto_2

    .line 1346
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_6
    const/4 v11, 0x4

    if-eq v10, v11, :cond_b

    if-eq v7, v13, :cond_7

    const/4 v11, 0x6

    if-ne v7, v11, :cond_b

    .line 1348
    :cond_7
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    goto :goto_3

    .line 1355
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_3
    const/4 v10, 0x4

    move v5, v6

    .line 1356
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    .line 1359
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_4
    if-nez v2, :cond_2

    .line 1361
    const/4 v10, 0x2

    move v5, v6

    .line 1362
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    .line 1372
    .end local v0    # "c":C
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_8
    const/4 v11, 0x7

    if-ne v7, v11, :cond_a

    .line 1374
    add-int/lit8 v5, v6, -0x1

    .line 1378
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_9

    .line 1379
    aget v8, v1, v2

    .line 1380
    .local v8, "pos":I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1378
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1384
    .end local v8    # "pos":I
    :cond_9
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1385
    .local v3, "len":I
    :goto_6
    if-lez v3, :cond_0

    .line 1386
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 1387
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1388
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v3    # "len":I
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_a
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_4

    .end local v5    # "numDashes":I
    .restart local v0    # "c":C
    .restart local v6    # "numDashes":I
    :cond_b
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_3

    .line 1323
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 1208
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1209
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1210
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I

    .prologue
    .line 1225
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1226
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1227
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1478
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, p0

    .line 1489
    :goto_0
    return-object v1

    .line 1482
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1483
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1485
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1486
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1487
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1514
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1515
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1516
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1538
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 1515
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1520
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 1522
    .local v5, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_2

    .line 1527
    :try_start_0
    const-string v6, "ZZ"

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1528
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1529
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gtz v6, :cond_2

    .line 1532
    move-object p2, v3

    .line 1537
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1538
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_3

    .end local v4    # "result":Ljava/lang/String;
    :goto_3
    move-object p0, v4

    goto :goto_1

    .restart local v4    # "result":Ljava/lang/String;
    :cond_3
    move-object v4, p0

    goto :goto_3

    .line 1534
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1252
    move v0, p1

    .line 1254
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1255
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1256
    const/4 v0, 0x1

    .line 1265
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1276
    :goto_1
    return-void

    .line 1257
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1259
    const/4 v0, 0x2

    goto :goto_0

    .line 1261
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1267
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1270
    :pswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1273
    :pswitch_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1

    .line 1265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1449
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1450
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1452
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1453
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1454
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1458
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    return-object v1

    .line 1456
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2303
    const/4 v0, 0x0

    .line 2304
    .local v0, "ps":Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2305
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2306
    const-string v0, "011"

    .line 2308
    :cond_0
    return-object v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1238
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1240
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 2321
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 2322
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2323
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2324
    const/4 v2, 0x1

    .line 2330
    :goto_1
    return v2

    .line 2322
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2327
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2328
    const/4 v2, 0x2

    goto :goto_1

    .line 2330
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 225
    const/4 v9, 0x0

    .line 227
    .local v9, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 229
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-object v3

    .line 233
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 235
    .local v11, "scheme":Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "sip"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 242
    :cond_3
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    const-string/jumbo v0, "persist.radio.default_sim"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 246
    .local v12, "simId":I
    const-string/jumbo v0, "simId"

    invoke-virtual {p0, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 249
    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 250
    .local v8, "iTel":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v8, v12}, Lcom/android/internal/telephony/ITelephony;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 251
    .end local v8    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 256
    .end local v12    # "simId":I
    :cond_4
    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 261
    .local v13, "type":Ljava/lang/String;
    const/4 v10, 0x0

    .line 264
    .local v10, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 266
    const-string/jumbo v10, "number"

    .line 271
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v10, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 274
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 276
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 277
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 280
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v3, v9

    .line 284
    goto :goto_0

    .line 267
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_8
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    const-string v10, "data1"

    goto :goto_1

    .line 280
    .restart local v7    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 844
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 848
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2404
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2405
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_0

    .line 2406
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2408
    :cond_0
    if-gez v0, :cond_1

    .line 2409
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2413
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 463
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 464
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 466
    .local v3, "wIndex":I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 468
    .local v2, "trimIndex":I
    if-gez v2, :cond_0

    .line 469
    add-int/lit8 v4, v0, -0x1

    .line 471
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 955
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    .line 959
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 961
    .local v1, "c":C
    if-nez v1, :cond_1

    .line 988
    .end local v1    # "c":C
    :cond_0
    return-void

    .line 964
    .restart local v1    # "c":C
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 973
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 975
    .local v0, "b":B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    .line 980
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 981
    if-eqz v1, :cond_0

    .line 985
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 955
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .prologue
    .line 857
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 870
    :goto_0
    return-object v5

    .line 859
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 860
    .local v3, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 862
    .local v2, "length":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    move v4, v2

    .line 863
    .local v4, "s":I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    .line 865
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 867
    .local v0, "c":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 863
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 870
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final is12Key(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 167
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .param p0, "countryCallingCodeCandidate"    # I

    .prologue
    .line 2622
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 173
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1073
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1074
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1075
    const/4 v2, 0x0

    .line 1078
    :goto_1
    return v2

    .line 1073
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1078
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isDomesticOnly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "countryIso"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3011
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v4, v5

    .line 3024
    :cond_1
    :goto_0
    return v4

    .line 3015
    :cond_2
    const/4 v4, 0x1

    .line 3016
    .local v4, "result":Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3017
    .local v1, "number":Ljava/lang/String;
    const-string v6, "cn"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "tw"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3019
    :cond_3
    const-string v3, "[1-9]{1}[0-9]{2,5}"

    .line 3020
    .local v3, "patternString":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3021
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3022
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v4, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 14
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1631
    const-string v11, "PhoneNumberUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[isEmergencyNumber] number: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const/4 v10, 0x0

    .line 1634
    .local v10, "plusNumber":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1635
    .local v8, "numberPlus":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1638
    .local v1, "bSIMInserted":Z
    if-nez p0, :cond_0

    const/4 v11, 0x0

    .line 1772
    :goto_0
    return v11

    .line 1647
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1648
    const/4 v11, 0x0

    goto :goto_0

    .line 1653
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1671
    const-string/jumbo v11, "ril.ecclist"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1672
    .local v9, "numbers":Ljava/lang/String;
    const-string v11, "PhoneNumberUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[isEmergencyNumber] ril.ecclist: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1676
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v3, v0, v6

    .line 1677
    .local v3, "emergencyNum":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1678
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1680
    :cond_2
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[isEmergencyNumber] ril.ecclist: return true"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const/4 v11, 0x1

    goto :goto_0

    .line 1676
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1684
    .end local v3    # "emergencyNum":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x1

    .line 1688
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_5
    const-string/jumbo v11, "ril.ecclist2"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1689
    const-string v11, "PhoneNumberUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[isEmergencyNumber] ril.ecclist2: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 1693
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v7, :cond_8

    aget-object v3, v0, v6

    .line 1694
    .restart local v3    # "emergencyNum":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1695
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1697
    :cond_6
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[isEmergencyNumber] ril.ecclist2: return true"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1693
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1701
    .end local v3    # "emergencyNum":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x1

    .line 1705
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_9
    const-string/jumbo v11, "ril.ecclist3"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1706
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 1709
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_3
    if-ge v6, v7, :cond_c

    aget-object v3, v0, v6

    .line 1710
    .restart local v3    # "emergencyNum":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1711
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1713
    :cond_a
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[isEmergencyNumber] ril.ecclist3: return true"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1709
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1717
    .end local v3    # "emergencyNum":Ljava/lang/String;
    :cond_c
    const/4 v1, 0x1

    .line 1721
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_d
    const-string/jumbo v11, "ril.ecclist4"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1722
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 1725
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_4
    if-ge v6, v7, :cond_10

    aget-object v3, v0, v6

    .line 1726
    .restart local v3    # "emergencyNum":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1727
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1729
    :cond_e
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[isEmergencyNumber] ril.ecclist4: return true"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1725
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1733
    .end local v3    # "emergencyNum":Ljava/lang/String;
    :cond_10
    const/4 v1, 0x1

    .line 1736
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_11
    if-eqz v1, :cond_12

    .line 1738
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v11, p0, v10, v8}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isCustomizedEmergencyNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1739
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1743
    :cond_12
    const/4 v11, 0x2

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "112"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string v12, "911"

    aput-object v12, v4, v11

    .line 1744
    .local v4, "emergencyNumList":[Ljava/lang/String;
    array-length v2, v4

    .line 1756
    .local v2, "eccNo":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v2, :cond_15

    .line 1757
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v4, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1758
    aget-object v11, v4, v5

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 1760
    :cond_13
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[isEmergencyNumber] no sim ecclist: return true"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1756
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1767
    :cond_15
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v11, p0, v10, v8}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isCustomizedEmergencyNumberExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1768
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1772
    .end local v2    # "eccNo":I
    .end local v4    # "emergencyNumList":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1839
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumberExt(Ljava/lang/String;I)Z
    .locals 10
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    const/4 v6, 0x0

    .line 2972
    const/4 v7, 0x2

    if-ne v7, p1, :cond_4

    .line 2974
    if-nez p0, :cond_0

    .line 2975
    const-string v7, "PhoneNumberUtils"

    const-string v8, "[isEmergencyNumberExt] phoneNumber is null"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    :goto_0
    return v6

    .line 2982
    :cond_0
    const-string/jumbo v7, "ro.ril.ecclist.cdma"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2983
    .local v5, "numbers":Ljava/lang/String;
    const-string v7, "PhoneNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isEmergencyNumberExt] ro.ril.ecclist.cdma: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2987
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 2988
    .local v1, "emergencyNum":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2989
    .local v4, "numberPlus":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2991
    :cond_1
    const-string v6, "PhoneNumberUtils"

    const-string v7, "[isEmergencyNumberExt] return true"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    const/4 v6, 0x1

    goto :goto_0

    .line 2987
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2996
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "numberPlus":Ljava/lang/String;
    :cond_3
    const-string v7, "PhoneNumberUtils"

    const-string v8, "[isEmergencyNumberExt] return false"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2999
    .end local v5    # "numbers":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    goto :goto_0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 1890
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    .line 1824
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1064
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    const/4 v1, 0x0

    .line 1069
    :goto_0
    return v1

    .line 1068
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1069
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 161
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1974
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 2028
    const-string v3, "country_detector"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2030
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2031
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2038
    .local v0, "countryIso":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 2033
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2034
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2035
    .restart local v0    # "countryIso":Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 2338
    const/4 v2, 0x0

    .line 2339
    .local v2, "retVal":Z
    if-eqz p0, :cond_2

    .line 2340
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 2341
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2343
    const/4 v2, 0x1

    .line 2344
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 2345
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2346
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2347
    const/4 v2, 0x0

    .line 2356
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 2344
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2354
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 185
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isPauseOrWait(C)Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x30

    if-lt p0, v1, :cond_2

    const/16 v1, 0x39

    if-le p0, v1, :cond_0

    :cond_2
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x4e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1082
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1083
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1084
    const/4 v2, 0x0

    .line 1087
    :goto_1
    return v2

    .line 1082
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2363
    const/4 v1, 0x0

    .line 2364
    .local v1, "retVal":Z
    if-eqz p0, :cond_1

    .line 2365
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2366
    .local v0, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2367
    const/4 v1, 0x1

    .line 2372
    .end local v0    # "newDialStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2370
    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 202
    const/16 v0, 0x70

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1800
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1866
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2002
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 179
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 213
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpecialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dialString"    # Ljava/lang/String;

    .prologue
    .line 2957
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v0, p0}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSpecialMmiNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 3117
    const-string v2, "[0-5]{1}|[1-2]{1}[1-9]{1}"

    .line 3120
    .local v2, "patternString":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3121
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3122
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 197
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isToneWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 207
    const/16 v0, 0x77

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2312
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2313
    const/4 v0, 0x1

    .line 2315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2388
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidNationalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "countryIso"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x30

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 3035
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v6, v7

    .line 3106
    :cond_1
    :goto_0
    return v6

    .line 3039
    :cond_2
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[isValidNationalNumber]countryIso: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", phonenumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    const-string v8, "0"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3043
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3044
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[isValidNationalNumber] cut \'0\' - phonenumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    :cond_3
    const/4 v6, 0x0

    .line 3048
    .local v6, "result":Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3052
    .local v4, "number":Ljava/lang/String;
    const/16 v8, 0x153

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "10"

    aput-object v8, v0, v7

    const-string v8, "21"

    aput-object v8, v0, v11

    const/4 v8, 0x2

    const-string v9, "22"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    const-string v9, "23"

    aput-object v9, v0, v8

    const/4 v8, 0x4

    const-string v9, "24"

    aput-object v9, v0, v8

    const/4 v8, 0x5

    const-string v9, "25"

    aput-object v9, v0, v8

    const/4 v8, 0x6

    const-string v9, "26"

    aput-object v9, v0, v8

    const/4 v8, 0x7

    const-string v9, "27"

    aput-object v9, v0, v8

    const/16 v8, 0x8

    const-string v9, "28"

    aput-object v9, v0, v8

    const/16 v8, 0x9

    const-string v9, "29"

    aput-object v9, v0, v8

    const/16 v8, 0xa

    const-string v9, "20"

    aput-object v9, v0, v8

    const/16 v8, 0xb

    const-string v9, "311"

    aput-object v9, v0, v8

    const/16 v8, 0xc

    const-string v9, "312"

    aput-object v9, v0, v8

    const/16 v8, 0xd

    const-string v9, "313"

    aput-object v9, v0, v8

    const/16 v8, 0xe

    const-string v9, "314"

    aput-object v9, v0, v8

    const/16 v8, 0xf

    const-string v9, "315"

    aput-object v9, v0, v8

    const/16 v8, 0x10

    const-string v9, "316"

    aput-object v9, v0, v8

    const/16 v8, 0x11

    const-string v9, "317"

    aput-object v9, v0, v8

    const/16 v8, 0x12

    const-string v9, "318"

    aput-object v9, v0, v8

    const/16 v8, 0x13

    const-string v9, "319"

    aput-object v9, v0, v8

    const/16 v8, 0x14

    const-string v9, "310"

    aput-object v9, v0, v8

    const/16 v8, 0x15

    const-string v9, "335"

    aput-object v9, v0, v8

    const/16 v8, 0x16

    const-string v9, "349"

    aput-object v9, v0, v8

    const/16 v8, 0x17

    const-string v9, "351"

    aput-object v9, v0, v8

    const/16 v8, 0x18

    const-string v9, "352"

    aput-object v9, v0, v8

    const/16 v8, 0x19

    const-string v9, "353"

    aput-object v9, v0, v8

    const/16 v8, 0x1a

    const-string v9, "354"

    aput-object v9, v0, v8

    const/16 v8, 0x1b

    const-string v9, "355"

    aput-object v9, v0, v8

    const/16 v8, 0x1c

    const-string v9, "356"

    aput-object v9, v0, v8

    const/16 v8, 0x1d

    const-string v9, "357"

    aput-object v9, v0, v8

    const/16 v8, 0x1e

    const-string v9, "358"

    aput-object v9, v0, v8

    const/16 v8, 0x1f

    const-string v9, "350"

    aput-object v9, v0, v8

    const/16 v8, 0x20

    const-string v9, "371"

    aput-object v9, v0, v8

    const/16 v8, 0x21

    const-string v9, "372"

    aput-object v9, v0, v8

    const/16 v8, 0x22

    const-string v9, "373"

    aput-object v9, v0, v8

    const/16 v8, 0x23

    const-string v9, "374"

    aput-object v9, v0, v8

    const/16 v8, 0x24

    const-string v9, "375"

    aput-object v9, v0, v8

    const/16 v8, 0x25

    const-string v9, "376"

    aput-object v9, v0, v8

    const/16 v8, 0x26

    const-string v9, "377"

    aput-object v9, v0, v8

    const/16 v8, 0x27

    const-string v9, "378"

    aput-object v9, v0, v8

    const/16 v8, 0x28

    const-string v9, "379"

    aput-object v9, v0, v8

    const/16 v8, 0x29

    const-string v9, "370"

    aput-object v9, v0, v8

    const/16 v8, 0x2a

    const-string v9, "391"

    aput-object v9, v0, v8

    const/16 v8, 0x2b

    const-string v9, "392"

    aput-object v9, v0, v8

    const/16 v8, 0x2c

    const-string v9, "393"

    aput-object v9, v0, v8

    const/16 v8, 0x2d

    const-string v9, "394"

    aput-object v9, v0, v8

    const/16 v8, 0x2e

    const-string v9, "395"

    aput-object v9, v0, v8

    const/16 v8, 0x2f

    const-string v9, "396"

    aput-object v9, v0, v8

    const-string v8, "397"

    aput-object v8, v0, v12

    const/16 v8, 0x31

    const-string v9, "398"

    aput-object v9, v0, v8

    const/16 v8, 0x32

    const-string v9, "411"

    aput-object v9, v0, v8

    const/16 v8, 0x33

    const-string v9, "412"

    aput-object v9, v0, v8

    const/16 v8, 0x34

    const-string v9, "414"

    aput-object v9, v0, v8

    const/16 v8, 0x35

    const-string v9, "415"

    aput-object v9, v0, v8

    const/16 v8, 0x36

    const-string v9, "416"

    aput-object v9, v0, v8

    const/16 v8, 0x37

    const-string v9, "417"

    aput-object v9, v0, v8

    const/16 v8, 0x38

    const-string v9, "418"

    aput-object v9, v0, v8

    const/16 v8, 0x39

    const-string v9, "419"

    aput-object v9, v0, v8

    const/16 v8, 0x3a

    const-string v9, "421"

    aput-object v9, v0, v8

    const/16 v8, 0x3b

    const-string v9, "427"

    aput-object v9, v0, v8

    const/16 v8, 0x3c

    const-string v9, "429"

    aput-object v9, v0, v8

    const/16 v8, 0x3d

    const-string v9, "431"

    aput-object v9, v0, v8

    const/16 v8, 0x3e

    const-string v9, "432"

    aput-object v9, v0, v8

    const/16 v8, 0x3f

    const-string v9, "433"

    aput-object v9, v0, v8

    const/16 v8, 0x40

    const-string v9, "434"

    aput-object v9, v0, v8

    const/16 v8, 0x41

    const-string v9, "435"

    aput-object v9, v0, v8

    const/16 v8, 0x42

    const-string v9, "436"

    aput-object v9, v0, v8

    const/16 v8, 0x43

    const-string v9, "437"

    aput-object v9, v0, v8

    const/16 v8, 0x44

    const-string v9, "438"

    aput-object v9, v0, v8

    const/16 v8, 0x45

    const-string v9, "439"

    aput-object v9, v0, v8

    const/16 v8, 0x46

    const-string v9, "451"

    aput-object v9, v0, v8

    const/16 v8, 0x47

    const-string v9, "452"

    aput-object v9, v0, v8

    const/16 v8, 0x48

    const-string v9, "453"

    aput-object v9, v0, v8

    const/16 v8, 0x49

    const-string v9, "454"

    aput-object v9, v0, v8

    const/16 v8, 0x4a

    const-string v9, "455"

    aput-object v9, v0, v8

    const/16 v8, 0x4b

    const-string v9, "456"

    aput-object v9, v0, v8

    const/16 v8, 0x4c

    const-string v9, "457"

    aput-object v9, v0, v8

    const/16 v8, 0x4d

    const-string v9, "458"

    aput-object v9, v0, v8

    const/16 v8, 0x4e

    const-string v9, "459"

    aput-object v9, v0, v8

    const/16 v8, 0x4f

    const-string v9, "464"

    aput-object v9, v0, v8

    const/16 v8, 0x50

    const-string v9, "467"

    aput-object v9, v0, v8

    const/16 v8, 0x51

    const-string v9, "468"

    aput-object v9, v0, v8

    const/16 v8, 0x52

    const-string v9, "469"

    aput-object v9, v0, v8

    const/16 v8, 0x53

    const-string v9, "471"

    aput-object v9, v0, v8

    const/16 v8, 0x54

    const-string v9, "472"

    aput-object v9, v0, v8

    const/16 v8, 0x55

    const-string v9, "473"

    aput-object v9, v0, v8

    const/16 v8, 0x56

    const-string v9, "474"

    aput-object v9, v0, v8

    const/16 v8, 0x57

    const-string v9, "475"

    aput-object v9, v0, v8

    const/16 v8, 0x58

    const-string v9, "476"

    aput-object v9, v0, v8

    const/16 v8, 0x59

    const-string v9, "477"

    aput-object v9, v0, v8

    const/16 v8, 0x5a

    const-string v9, "478"

    aput-object v9, v0, v8

    const/16 v8, 0x5b

    const-string v9, "479"

    aput-object v9, v0, v8

    const/16 v8, 0x5c

    const-string v9, "470"

    aput-object v9, v0, v8

    const/16 v8, 0x5d

    const-string v9, "482"

    aput-object v9, v0, v8

    const/16 v8, 0x5e

    const-string v9, "483"

    aput-object v9, v0, v8

    const/16 v8, 0x5f

    const-string v9, "511"

    aput-object v9, v0, v8

    const/16 v8, 0x60

    const-string v9, "512"

    aput-object v9, v0, v8

    const/16 v8, 0x61

    const-string v9, "513"

    aput-object v9, v0, v8

    const/16 v8, 0x62

    const-string v9, "514"

    aput-object v9, v0, v8

    const/16 v8, 0x63

    const-string v9, "515"

    aput-object v9, v0, v8

    const/16 v8, 0x64

    const-string v9, "516"

    aput-object v9, v0, v8

    const/16 v8, 0x65

    const-string v9, "517"

    aput-object v9, v0, v8

    const/16 v8, 0x66

    const-string v9, "518"

    aput-object v9, v0, v8

    const/16 v8, 0x67

    const-string v9, "519"

    aput-object v9, v0, v8

    const/16 v8, 0x68

    const-string v9, "510"

    aput-object v9, v0, v8

    const/16 v8, 0x69

    const-string v9, "523"

    aput-object v9, v0, v8

    const/16 v8, 0x6a

    const-string v9, "527"

    aput-object v9, v0, v8

    const/16 v8, 0x6b

    const-string v9, "531"

    aput-object v9, v0, v8

    const/16 v8, 0x6c

    const-string v9, "532"

    aput-object v9, v0, v8

    const/16 v8, 0x6d

    const-string v9, "533"

    aput-object v9, v0, v8

    const/16 v8, 0x6e

    const-string v9, "534"

    aput-object v9, v0, v8

    const/16 v8, 0x6f

    const-string v9, "535"

    aput-object v9, v0, v8

    const/16 v8, 0x70

    const-string v9, "536"

    aput-object v9, v0, v8

    const/16 v8, 0x71

    const-string v9, "537"

    aput-object v9, v0, v8

    const/16 v8, 0x72

    const-string v9, "538"

    aput-object v9, v0, v8

    const/16 v8, 0x73

    const-string v9, "539"

    aput-object v9, v0, v8

    const/16 v8, 0x74

    const-string v9, "530"

    aput-object v9, v0, v8

    const/16 v8, 0x75

    const-string v9, "543"

    aput-object v9, v0, v8

    const/16 v8, 0x76

    const-string v9, "546"

    aput-object v9, v0, v8

    const/16 v8, 0x77

    const-string v9, "631"

    aput-object v9, v0, v8

    const/16 v8, 0x78

    const-string v9, "632"

    aput-object v9, v0, v8

    const/16 v8, 0x79

    const-string v9, "633"

    aput-object v9, v0, v8

    const/16 v8, 0x7a

    const-string v9, "634"

    aput-object v9, v0, v8

    const/16 v8, 0x7b

    const-string v9, "635"

    aput-object v9, v0, v8

    const/16 v8, 0x7c

    const-string v9, "551"

    aput-object v9, v0, v8

    const/16 v8, 0x7d

    const-string v9, "552"

    aput-object v9, v0, v8

    const/16 v8, 0x7e

    const-string v9, "553"

    aput-object v9, v0, v8

    const/16 v8, 0x7f

    const-string v9, "554"

    aput-object v9, v0, v8

    const/16 v8, 0x80

    const-string v9, "555"

    aput-object v9, v0, v8

    const/16 v8, 0x81

    const-string v9, "555"

    aput-object v9, v0, v8

    const/16 v8, 0x82

    const-string v9, "556"

    aput-object v9, v0, v8

    const/16 v8, 0x83

    const-string v9, "557"

    aput-object v9, v0, v8

    const/16 v8, 0x84

    const-string v9, "558"

    aput-object v9, v0, v8

    const/16 v8, 0x85

    const-string v9, "559"

    aput-object v9, v0, v8

    const/16 v8, 0x86

    const-string v9, "561"

    aput-object v9, v0, v8

    const/16 v8, 0x87

    const-string v9, "562"

    aput-object v9, v0, v8

    const/16 v8, 0x88

    const-string v9, "563"

    aput-object v9, v0, v8

    const/16 v8, 0x89

    const-string v9, "564"

    aput-object v9, v0, v8

    const/16 v8, 0x8a

    const-string v9, "565"

    aput-object v9, v0, v8

    const/16 v8, 0x8b

    const-string v9, "566"

    aput-object v9, v0, v8

    const/16 v8, 0x8c

    const-string v9, "571"

    aput-object v9, v0, v8

    const/16 v8, 0x8d

    const-string v9, "572"

    aput-object v9, v0, v8

    const/16 v8, 0x8e

    const-string v9, "573"

    aput-object v9, v0, v8

    const/16 v8, 0x8f

    const-string v9, "574"

    aput-object v9, v0, v8

    const/16 v8, 0x90

    const-string v9, "575"

    aput-object v9, v0, v8

    const/16 v8, 0x91

    const-string v9, "576"

    aput-object v9, v0, v8

    const/16 v8, 0x92

    const-string v9, "577"

    aput-object v9, v0, v8

    const/16 v8, 0x93

    const-string v9, "578"

    aput-object v9, v0, v8

    const/16 v8, 0x94

    const-string v9, "579"

    aput-object v9, v0, v8

    const/16 v8, 0x95

    const-string v9, "570"

    aput-object v9, v0, v8

    const/16 v8, 0x96

    const-string v9, "580"

    aput-object v9, v0, v8

    const/16 v8, 0x97

    const-string v9, "591"

    aput-object v9, v0, v8

    const/16 v8, 0x98

    const-string v9, "592"

    aput-object v9, v0, v8

    const/16 v8, 0x99

    const-string v9, "593"

    aput-object v9, v0, v8

    const/16 v8, 0x9a

    const-string v9, "594"

    aput-object v9, v0, v8

    const/16 v8, 0x9b

    const-string v9, "595"

    aput-object v9, v0, v8

    const/16 v8, 0x9c

    const-string v9, "596"

    aput-object v9, v0, v8

    const/16 v8, 0x9d

    const-string v9, "597"

    aput-object v9, v0, v8

    const/16 v8, 0x9e

    const-string v9, "598"

    aput-object v9, v0, v8

    const/16 v8, 0x9f

    const-string v9, "599"

    aput-object v9, v0, v8

    const/16 v8, 0xa0

    const-string v9, "631"

    aput-object v9, v0, v8

    const/16 v8, 0xa1

    const-string v9, "632"

    aput-object v9, v0, v8

    const/16 v8, 0xa2

    const-string v9, "633"

    aput-object v9, v0, v8

    const/16 v8, 0xa3

    const-string v9, "634"

    aput-object v9, v0, v8

    const/16 v8, 0xa4

    const-string v9, "635"

    aput-object v9, v0, v8

    const/16 v8, 0xa5

    const-string v9, "660"

    aput-object v9, v0, v8

    const/16 v8, 0xa6

    const-string v9, "662"

    aput-object v9, v0, v8

    const/16 v8, 0xa7

    const-string v9, "663"

    aput-object v9, v0, v8

    const/16 v8, 0xa8

    const-string v9, "668"

    aput-object v9, v0, v8

    const/16 v8, 0xa9

    const-string v9, "691"

    aput-object v9, v0, v8

    const/16 v8, 0xaa

    const-string v9, "692"

    aput-object v9, v0, v8

    const/16 v8, 0xab

    const-string v9, "711"

    aput-object v9, v0, v8

    const/16 v8, 0xac

    const-string v9, "712"

    aput-object v9, v0, v8

    const/16 v8, 0xad

    const-string v9, "713"

    aput-object v9, v0, v8

    const/16 v8, 0xae

    const-string v9, "714"

    aput-object v9, v0, v8

    const/16 v8, 0xaf

    const-string v9, "715"

    aput-object v9, v0, v8

    const/16 v8, 0xb0

    const-string v9, "716"

    aput-object v9, v0, v8

    const/16 v8, 0xb1

    const-string v9, "717"

    aput-object v9, v0, v8

    const/16 v8, 0xb2

    const-string v9, "718"

    aput-object v9, v0, v8

    const/16 v8, 0xb3

    const-string v9, "719"

    aput-object v9, v0, v8

    const/16 v8, 0xb4

    const-string v9, "710"

    aput-object v9, v0, v8

    const/16 v8, 0xb5

    const-string v9, "722"

    aput-object v9, v0, v8

    const/16 v8, 0xb6

    const-string v9, "724"

    aput-object v9, v0, v8

    const/16 v8, 0xb7

    const-string v9, "728"

    aput-object v9, v0, v8

    const/16 v8, 0xb8

    const-string v9, "731"

    aput-object v9, v0, v8

    const/16 v8, 0xb9

    const-string v9, "734"

    aput-object v9, v0, v8

    const/16 v8, 0xba

    const-string v9, "735"

    aput-object v9, v0, v8

    const/16 v8, 0xbb

    const-string v9, "736"

    aput-object v9, v0, v8

    const/16 v8, 0xbc

    const-string v9, "737"

    aput-object v9, v0, v8

    const/16 v8, 0xbd

    const-string v9, "738"

    aput-object v9, v0, v8

    const/16 v8, 0xbe

    const-string v9, "739"

    aput-object v9, v0, v8

    const/16 v8, 0xbf

    const-string v9, "730"

    aput-object v9, v0, v8

    const/16 v8, 0xc0

    const-string v9, "743"

    aput-object v9, v0, v8

    const/16 v8, 0xc1

    const-string v9, "744"

    aput-object v9, v0, v8

    const/16 v8, 0xc2

    const-string v9, "745"

    aput-object v9, v0, v8

    const/16 v8, 0xc3

    const-string v9, "746"

    aput-object v9, v0, v8

    const/16 v8, 0xc4

    const-string v9, "750"

    aput-object v9, v0, v8

    const/16 v8, 0xc5

    const-string v9, "751"

    aput-object v9, v0, v8

    const/16 v8, 0xc6

    const-string v9, "752"

    aput-object v9, v0, v8

    const/16 v8, 0xc7

    const-string v9, "753"

    aput-object v9, v0, v8

    const/16 v8, 0xc8

    const-string v9, "754"

    aput-object v9, v0, v8

    const/16 v8, 0xc9

    const-string v9, "755"

    aput-object v9, v0, v8

    const/16 v8, 0xca

    const-string v9, "756"

    aput-object v9, v0, v8

    const/16 v8, 0xcb

    const-string v9, "757"

    aput-object v9, v0, v8

    const/16 v8, 0xcc

    const-string v9, "758"

    aput-object v9, v0, v8

    const/16 v8, 0xcd

    const-string v9, "759"

    aput-object v9, v0, v8

    const/16 v8, 0xce

    const-string v9, "760"

    aput-object v9, v0, v8

    const/16 v8, 0xcf

    const-string v9, "762"

    aput-object v9, v0, v8

    const/16 v8, 0xd0

    const-string v9, "763"

    aput-object v9, v0, v8

    const/16 v8, 0xd1

    const-string v9, "766"

    aput-object v9, v0, v8

    const/16 v8, 0xd2

    const-string v9, "768"

    aput-object v9, v0, v8

    const/16 v8, 0xd3

    const-string v9, "769"

    aput-object v9, v0, v8

    const/16 v8, 0xd4

    const-string v9, "660"

    aput-object v9, v0, v8

    const/16 v8, 0xd5

    const-string v9, "662"

    aput-object v9, v0, v8

    const/16 v8, 0xd6

    const-string v9, "663"

    aput-object v9, v0, v8

    const/16 v8, 0xd7

    const-string v9, "668"

    aput-object v9, v0, v8

    const/16 v8, 0xd8

    const-string v9, "771"

    aput-object v9, v0, v8

    const/16 v8, 0xd9

    const-string v9, "772"

    aput-object v9, v0, v8

    const/16 v8, 0xda

    const-string v9, "773"

    aput-object v9, v0, v8

    const/16 v8, 0xdb

    const-string v9, "774"

    aput-object v9, v0, v8

    const/16 v8, 0xdc

    const-string v9, "775"

    aput-object v9, v0, v8

    const/16 v8, 0xdd

    const-string v9, "776"

    aput-object v9, v0, v8

    const/16 v8, 0xde

    const-string v9, "777"

    aput-object v9, v0, v8

    const/16 v8, 0xdf

    const-string v9, "778"

    aput-object v9, v0, v8

    const/16 v8, 0xe0

    const-string v9, "779"

    aput-object v9, v0, v8

    const/16 v8, 0xe1

    const-string v9, "770"

    aput-object v9, v0, v8

    const/16 v8, 0xe2

    const-string v9, "791"

    aput-object v9, v0, v8

    const/16 v8, 0xe3

    const-string v9, "792"

    aput-object v9, v0, v8

    const/16 v8, 0xe4

    const-string v9, "793"

    aput-object v9, v0, v8

    const/16 v8, 0xe5

    const-string v9, "794"

    aput-object v9, v0, v8

    const/16 v8, 0xe6

    const-string v9, "795"

    aput-object v9, v0, v8

    const/16 v8, 0xe7

    const-string v9, "796"

    aput-object v9, v0, v8

    const/16 v8, 0xe8

    const-string v9, "797"

    aput-object v9, v0, v8

    const/16 v8, 0xe9

    const-string v9, "798"

    aput-object v9, v0, v8

    const/16 v8, 0xea

    const-string v9, "799"

    aput-object v9, v0, v8

    const/16 v8, 0xeb

    const-string v9, "790"

    aput-object v9, v0, v8

    const/16 v8, 0xec

    const-string v9, "701"

    aput-object v9, v0, v8

    const/16 v8, 0xed

    const-string v9, "812"

    aput-object v9, v0, v8

    const/16 v8, 0xee

    const-string v9, "813"

    aput-object v9, v0, v8

    const/16 v8, 0xef

    const-string v9, "816"

    aput-object v9, v0, v8

    const/16 v8, 0xf0

    const-string v9, "817"

    aput-object v9, v0, v8

    const/16 v8, 0xf1

    const-string v9, "818"

    aput-object v9, v0, v8

    const/16 v8, 0xf2

    const-string v9, "825"

    aput-object v9, v0, v8

    const/16 v8, 0xf3

    const-string v9, "826"

    aput-object v9, v0, v8

    const/16 v8, 0xf4

    const-string v9, "827"

    aput-object v9, v0, v8

    const/16 v8, 0xf5

    const-string v9, "831"

    aput-object v9, v0, v8

    const/16 v8, 0xf6

    const-string v9, "832"

    aput-object v9, v0, v8

    const/16 v8, 0xf7

    const-string v9, "833"

    aput-object v9, v0, v8

    const/16 v8, 0xf8

    const-string v9, "834"

    aput-object v9, v0, v8

    const/16 v8, 0xf9

    const-string v9, "835"

    aput-object v9, v0, v8

    const/16 v8, 0xfa

    const-string v9, "836"

    aput-object v9, v0, v8

    const/16 v8, 0xfb

    const-string v9, "837"

    aput-object v9, v0, v8

    const/16 v8, 0xfc

    const-string v9, "838"

    aput-object v9, v0, v8

    const/16 v8, 0xfd

    const-string v9, "839"

    aput-object v9, v0, v8

    const/16 v8, 0xfe

    const-string v9, "830"

    aput-object v9, v0, v8

    const/16 v8, 0xff

    const-string v9, "851"

    aput-object v9, v0, v8

    const/16 v8, 0x100

    const-string v9, "852"

    aput-object v9, v0, v8

    const/16 v8, 0x101

    const-string v9, "853"

    aput-object v9, v0, v8

    const/16 v8, 0x102

    const-string v9, "854"

    aput-object v9, v0, v8

    const/16 v8, 0x103

    const-string v9, "855"

    aput-object v9, v0, v8

    const/16 v8, 0x104

    const-string v9, "856"

    aput-object v9, v0, v8

    const/16 v8, 0x105

    const-string v9, "857"

    aput-object v9, v0, v8

    const/16 v8, 0x106

    const-string v9, "858"

    aput-object v9, v0, v8

    const/16 v8, 0x107

    const-string v9, "859"

    aput-object v9, v0, v8

    const/16 v8, 0x108

    const-string v9, "871"

    aput-object v9, v0, v8

    const/16 v8, 0x109

    const-string v9, "872"

    aput-object v9, v0, v8

    const/16 v8, 0x10a

    const-string v9, "873"

    aput-object v9, v0, v8

    const/16 v8, 0x10b

    const-string v9, "874"

    aput-object v9, v0, v8

    const/16 v8, 0x10c

    const-string v9, "875"

    aput-object v9, v0, v8

    const/16 v8, 0x10d

    const-string v9, "876"

    aput-object v9, v0, v8

    const/16 v8, 0x10e

    const-string v9, "877"

    aput-object v9, v0, v8

    const/16 v8, 0x10f

    const-string v9, "878"

    aput-object v9, v0, v8

    const/16 v8, 0x110

    const-string v9, "879"

    aput-object v9, v0, v8

    const/16 v8, 0x111

    const-string v9, "870"

    aput-object v9, v0, v8

    const/16 v8, 0x112

    const-string v9, "883"

    aput-object v9, v0, v8

    const/16 v8, 0x113

    const-string v9, "886"

    aput-object v9, v0, v8

    const/16 v8, 0x114

    const-string v9, "887"

    aput-object v9, v0, v8

    const/16 v8, 0x115

    const-string v9, "888"

    aput-object v9, v0, v8

    const/16 v8, 0x116

    const-string v9, "691"

    aput-object v9, v0, v8

    const/16 v8, 0x117

    const-string v9, "692"

    aput-object v9, v0, v8

    const/16 v8, 0x118

    const-string v9, "891"

    aput-object v9, v0, v8

    const/16 v8, 0x119

    const-string v9, "892"

    aput-object v9, v0, v8

    const/16 v8, 0x11a

    const-string v9, "893"

    aput-object v9, v0, v8

    const/16 v8, 0x11b

    const-string v9, "894"

    aput-object v9, v0, v8

    const/16 v8, 0x11c

    const-string v9, "895"

    aput-object v9, v0, v8

    const/16 v8, 0x11d

    const-string v9, "896"

    aput-object v9, v0, v8

    const/16 v8, 0x11e

    const-string v9, "897"

    aput-object v9, v0, v8

    const/16 v8, 0x11f

    const-string v9, "898"

    aput-object v9, v0, v8

    const/16 v8, 0x120

    const-string v9, "911"

    aput-object v9, v0, v8

    const/16 v8, 0x121

    const-string v9, "912"

    aput-object v9, v0, v8

    const/16 v8, 0x122

    const-string v9, "913"

    aput-object v9, v0, v8

    const/16 v8, 0x123

    const-string v9, "914"

    aput-object v9, v0, v8

    const/16 v8, 0x124

    const-string v9, "915"

    aput-object v9, v0, v8

    const/16 v8, 0x125

    const-string v9, "916"

    aput-object v9, v0, v8

    const/16 v8, 0x126

    const-string v9, "917"

    aput-object v9, v0, v8

    const/16 v8, 0x127

    const-string v9, "919"

    aput-object v9, v0, v8

    const/16 v8, 0x128

    const-string v9, "931"

    aput-object v9, v0, v8

    const/16 v8, 0x129

    const-string v9, "932"

    aput-object v9, v0, v8

    const/16 v8, 0x12a

    const-string v9, "933"

    aput-object v9, v0, v8

    const/16 v8, 0x12b

    const-string v9, "934"

    aput-object v9, v0, v8

    const/16 v8, 0x12c

    const-string v9, "935"

    aput-object v9, v0, v8

    const/16 v8, 0x12d

    const-string v9, "936"

    aput-object v9, v0, v8

    const/16 v8, 0x12e

    const-string v9, "937"

    aput-object v9, v0, v8

    const/16 v8, 0x12f

    const-string v9, "938"

    aput-object v9, v0, v8

    const/16 v8, 0x130

    const-string v9, "939"

    aput-object v9, v0, v8

    const/16 v8, 0x131

    const-string v9, "930"

    aput-object v9, v0, v8

    const/16 v8, 0x132

    const-string v9, "940"

    aput-object v9, v0, v8

    const/16 v8, 0x133

    const-string v9, "941"

    aput-object v9, v0, v8

    const/16 v8, 0x134

    const-string v9, "943"

    aput-object v9, v0, v8

    const/16 v8, 0x135

    const-string v9, "951"

    aput-object v9, v0, v8

    const/16 v8, 0x136

    const-string v9, "952"

    aput-object v9, v0, v8

    const/16 v8, 0x137

    const-string v9, "953"

    aput-object v9, v0, v8

    const/16 v8, 0x138

    const-string v9, "954"

    aput-object v9, v0, v8

    const/16 v8, 0x139

    const-string v9, "955"

    aput-object v9, v0, v8

    const/16 v8, 0x13a

    const-string v9, "971"

    aput-object v9, v0, v8

    const/16 v8, 0x13b

    const-string v9, "972"

    aput-object v9, v0, v8

    const/16 v8, 0x13c

    const-string v9, "973"

    aput-object v9, v0, v8

    const/16 v8, 0x13d

    const-string v9, "974"

    aput-object v9, v0, v8

    const/16 v8, 0x13e

    const-string v9, "975"

    aput-object v9, v0, v8

    const/16 v8, 0x13f

    const-string v9, "976"

    aput-object v9, v0, v8

    const/16 v8, 0x140

    const-string v9, "977"

    aput-object v9, v0, v8

    const/16 v8, 0x141

    const-string v9, "979"

    aput-object v9, v0, v8

    const/16 v8, 0x142

    const-string v9, "970"

    aput-object v9, v0, v8

    const/16 v8, 0x143

    const-string v9, "991"

    aput-object v9, v0, v8

    const/16 v8, 0x144

    const-string v9, "992"

    aput-object v9, v0, v8

    const/16 v8, 0x145

    const-string v9, "993"

    aput-object v9, v0, v8

    const/16 v8, 0x146

    const-string v9, "994"

    aput-object v9, v0, v8

    const/16 v8, 0x147

    const-string v9, "995"

    aput-object v9, v0, v8

    const/16 v8, 0x148

    const-string v9, "996"

    aput-object v9, v0, v8

    const/16 v8, 0x149

    const-string v9, "997"

    aput-object v9, v0, v8

    const/16 v8, 0x14a

    const-string v9, "998"

    aput-object v9, v0, v8

    const/16 v8, 0x14b

    const-string v9, "999"

    aput-object v9, v0, v8

    const/16 v8, 0x14c

    const-string v9, "990"

    aput-object v9, v0, v8

    const/16 v8, 0x14d

    const-string v9, "901"

    aput-object v9, v0, v8

    const/16 v8, 0x14e

    const-string v9, "902"

    aput-object v9, v0, v8

    const/16 v8, 0x14f

    const-string v9, "903"

    aput-object v9, v0, v8

    const/16 v8, 0x150

    const-string v9, "906"

    aput-object v9, v0, v8

    const/16 v8, 0x151

    const-string v9, "908"

    aput-object v9, v0, v8

    const/16 v8, 0x152

    const-string v9, "909"

    aput-object v9, v0, v8

    .line 3092
    .local v0, "CHINA_AREA_PREFIXS":[Ljava/lang/String;
    const-string v8, "cn"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3093
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 3094
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3095
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_4

    .line 3096
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidNationalNumber = CN invalid number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3099
    :cond_4
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidNationalNumber = CN number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    const/4 v6, 0x1

    .line 3102
    goto/16 :goto_0

    .line 3093
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2056
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2063
    .local v1, "vmNumber":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2067
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v1    # "vmNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 2057
    :catch_0
    move-exception v0

    .line 2058
    .local v0, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static isVoiceMailNumberGemini(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "simId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2917
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2920
    :try_start_0
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2921
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2928
    .local v2, "vmNumber":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2932
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .end local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "vmNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 2922
    :catch_0
    move-exception v0

    .line 2923
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1055
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1058
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 450
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2495
    const/4 v2, 0x0

    .line 2496
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 2497
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2499
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 2518
    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2524
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 2501
    .restart local v0    # "c":C
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    .line 2496
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2502
    :cond_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2503
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2507
    :pswitch_2
    if-ne v0, v6, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2508
    :cond_4
    if-ne v0, v7, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2509
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2513
    :pswitch_3
    if-ne v0, v7, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2514
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2524
    .end local v0    # "c":C
    :cond_7
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_1

    .line 2499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 2534
    const/4 v2, 0x0

    .line 2535
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 2536
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2538
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 2570
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2574
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 2540
    .restart local v0    # "c":C
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/4 v2, 0x1

    .line 2535
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2541
    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2542
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2546
    :pswitch_1
    if-ne v0, v5, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2547
    :cond_4
    if-ne v0, v6, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2548
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2552
    :pswitch_2
    if-ne v0, v6, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2553
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2559
    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x6

    goto :goto_2

    .line 2560
    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2565
    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2566
    :cond_8
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2574
    .end local v0    # "c":C
    :cond_9
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 2538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 2582
    const/4 v1, 0x0

    .line 2584
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 2585
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2587
    .local v0, "c":C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 2588
    const/4 v1, 0x1

    .line 2584
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2589
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2590
    const/4 v1, 0x0

    .line 2594
    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_2
    return v1
.end method

.method private static minPositive(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 438
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 439
    if-ge p0, p1, :cond_1

    .line 445
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_1
    move p0, p1

    .line 439
    goto :goto_0

    .line 440
    :cond_2
    if-gez p0, :cond_0

    .line 442
    if-ltz p1, :cond_3

    move p0, p1

    .line 443
    goto :goto_0

    .line 445
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1097
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1107
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1553
    if-nez p0, :cond_0

    .line 1554
    const/4 v5, 0x0

    .line 1571
    :goto_0
    return-object v5

    .line 1557
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1558
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1559
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 1560
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1562
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1563
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 1564
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1559
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1565
    :cond_2
    if-nez v2, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 1566
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1567
    :cond_3
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    .line 1568
    :cond_5
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1571
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1120
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 15
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .prologue
    .line 1129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1130
    .local v6, "numberLenReal":I
    move v5, v6

    .line 1131
    .local v5, "numberLenEffective":I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    const/4 v3, 0x1

    .line 1132
    .local v3, "hasPlus":Z
    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 1134
    :cond_0
    if-nez v5, :cond_2

    const/4 v9, 0x0

    .line 1159
    :goto_1
    return-object v9

    .line 1131
    .end local v3    # "hasPlus":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1136
    .restart local v3    # "hasPlus":Z
    :cond_2
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1137
    .local v10, "resultLen":I
    const/4 v2, 0x1

    .line 1138
    .local v2, "extraBytes":I
    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1139
    :cond_3
    add-int/2addr v10, v2

    .line 1141
    new-array v9, v10, [B

    .line 1143
    .local v9, "result":[B
    const/4 v1, 0x0

    .line 1144
    .local v1, "digitCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v6, :cond_6

    .line 1145
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1146
    .local v0, "c":C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_4

    .line 1144
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1147
    :cond_4
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v11, 0x4

    .line 1148
    .local v11, "shift":I
    :goto_4
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1149
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1147
    .end local v11    # "shift":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 1153
    .end local v0    # "c":C
    :cond_6
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1155
    :cond_7
    const/4 v7, 0x0

    .line 1156
    .local v7, "offset":I
    if-eqz p1, :cond_8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1157
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_8
    if-eqz v3, :cond_9

    const/16 v12, 0x91

    :goto_5
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_1

    :cond_9
    const/16 v12, 0x81

    goto :goto_5
.end method

.method public static prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2851
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2852
    .local v3, "retString":Ljava/lang/String;
    const-string v4, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2853
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2854
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2855
    const-string v4, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2860
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2861
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2899
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2869
    .end local v2    # "ret":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2870
    .restart local v2    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2873
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2874
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2875
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2878
    .end local v2    # "ret":Ljava/lang/StringBuilder;
    :cond_1
    const-string v4, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2879
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2880
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2886
    .restart local v2    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2890
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2893
    .end local v2    # "ret":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2894
    .restart local v2    # "ret":Ljava/lang/StringBuilder;
    const/16 v4, 0x2b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "networkDialStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 2423
    move-object v2, p0

    .line 2428
    .local v2, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 2431
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2432
    .local v1, "newStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2434
    move-object v2, v1

    .line 2442
    .end local v1    # "newStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 2436
    .restart local v1    # "newStr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 2438
    .local v0, "idpStr":Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1420
    const/4 v0, 0x0

    .line 1421
    .local v0, "p":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1422
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1423
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1425
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1428
    :cond_1
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1583
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1584
    .local v5, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 1585
    .local v1, "c":C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1586
    .local v2, "digit":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 1587
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1584
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1589
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1592
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .prologue
    .line 881
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 887
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 883
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x91

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 373
    const/4 v5, 0x0

    .line 392
    :goto_0
    return-object v5

    .line 375
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 376
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 378
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 379
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 381
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 383
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 384
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 385
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 387
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 392
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 817
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "np":Ljava/lang/String;
    const/4 v0, 0x0

    .line 824
    .local v0, "minMatchLen":I
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->getMinMatch()I

    move-result v0

    .line 827
    const-string v2, "PhoneNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[toCallerIDMinMatch] phoneNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", minMatchLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 897
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 898
    const/16 v0, 0x91

    .line 901
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x81

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 2661
    const/4 v5, 0x0

    .line 2662
    .local v5, "state":I
    const/4 v0, 0x0

    .line 2663
    .local v0, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2664
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2665
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2666
    .local v1, "ch":C
    packed-switch v5, :pswitch_data_0

    .line 2735
    .end local v1    # "ch":C
    :cond_0
    :goto_1
    return-object v6

    .line 2668
    .restart local v1    # "ch":C
    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_2

    const/4 v5, 0x1

    .line 2664
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2669
    :cond_2
    if-ne v1, v9, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    .line 2670
    :cond_3
    if-ne v1, v8, :cond_4

    .line 2671
    if-eqz p1, :cond_0

    .line 2672
    const/16 v5, 0x8

    goto :goto_2

    .line 2676
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2682
    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    .line 2683
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    .line 2684
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2690
    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    .line 2691
    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2702
    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2703
    .local v4, "ret":I
    if-lez v4, :cond_c

    .line 2704
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 2705
    const/16 v7, 0x64

    if-ge v0, v7, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2706
    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2708
    :cond_9
    const/4 v7, 0x1

    if-eq v5, v7, :cond_a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_a

    const/4 v7, 0x5

    if-ne v5, v7, :cond_b

    .line 2709
    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    .line 2711
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2713
    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2719
    .end local v4    # "ret":I
    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_2

    .line 2720
    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2725
    :pswitch_5
    if-ne v1, v10, :cond_0

    .line 2726
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2666
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 2632
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2633
    add-int/lit8 v0, p0, -0x30

    .line 2635
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 2748
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2749
    .local v2, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2750
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2751
    .local v0, "ch":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_1

    .line 2752
    add-int/lit8 v3, v1, 0x1

    .line 2757
    .end local v0    # "ch":C
    :cond_0
    return v3

    .line 2753
    .restart local v0    # "ch":C
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2749
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

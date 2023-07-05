.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field private static final MAX_PDP_NUM:I = 0x3

.field private static final MAX_SIM1_PDP_NUM:I = 0x3

.field private static final MAX_SIM2_PDP_NUM:I = 0x1

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final RADIO_MISC:I = 0x2

.field public static final RADIO_WCDMA:I = 0x1

.field public static final SAR_BAND_GSM_DCS1800:I = 0x2

.field public static final SAR_BAND_GSM_EGSM900:I = 0x1

.field public static final SAR_BAND_GSM_GSM850:I = 0x0

.field public static final SAR_BAND_GSM_PCS1900:I = 0x3

.field public static final SAR_BAND_UMTS_WCDMA_1700:I = 0xd

.field public static final SAR_BAND_UMTS_WCDMA_1800:I = 0xc

.field public static final SAR_BAND_UMTS_WCDMA_800:I = 0x9

.field public static final SAR_BAND_UMTS_WCDMA_AWS_1700:I = 0x7

.field public static final SAR_BAND_UMTS_WCDMA_CLR_850:I = 0x8

.field public static final SAR_BAND_UMTS_WCDMA_DCS_1800:I = 0x6

.field public static final SAR_BAND_UMTS_WCDMA_GSM_900:I = 0xb

.field public static final SAR_BAND_UMTS_WCDMA_IMT_2000:I = 0x4

.field public static final SAR_BAND_UMTS_WCDMA_IMT_E_2600:I = 0xa

.field public static final SAR_BAND_UMTS_WCDMA_PCS_1900:I = 0x5

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static defaultSimId:I = 0x0

.field private static final mtkGeminiSupport:Z = true

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static sRegistry3:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static sRegistry4:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

.field private PROPERTY_SIM_STATE:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    sput v0, Landroid/telephony/TelephonyManager;->defaultSimId:I

    .line 250
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 402
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 408
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 414
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 716
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 719
    const-string v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 723
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "iphonesubinfo"

    aput-object v3, v2, v4

    const-string v3, "iphonesubinfo2"

    aput-object v3, v2, v5

    const-string v3, "iphonesubinfo3"

    aput-object v3, v2, v6

    const-string v3, "iphonesubinfo4"

    aput-object v3, v2, v7

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    .line 172
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "gsm.sim.state"

    aput-object v3, v2, v4

    const-string v3, "gsm.sim.state.2"

    aput-object v3, v2, v5

    const-string v3, "gsm.sim.state.3"

    aput-object v3, v2, v6

    const-string v3, "gsm.sim.state.4"

    aput-object v3, v2, v7

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->PROPERTY_SIM_STATE:[Ljava/lang/String;

    .line 182
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 233
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 236
    :try_start_0
    const-class v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 237
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "actualClassName":Ljava/lang/String;
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initial mOnlyOwnerSimSupport done, actual class name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0    # "actualClassName":Ljava/lang/String;
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string v2, "TelephonyManager"

    const-string v3, "FAIL! intial mOnlyOwnerSimSupport"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "TelephonyManager"

    const-string v3, "FAIL! No IOnlyOwnerSimSupport"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "iphonesubinfo"

    aput-object v4, v3, v5

    const-string v4, "iphonesubinfo2"

    aput-object v4, v3, v8

    const-string v4, "iphonesubinfo3"

    aput-object v4, v3, v9

    const-string v4, "iphonesubinfo4"

    aput-object v4, v3, v6

    iput-object v3, p0, Landroid/telephony/TelephonyManager;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    .line 172
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "gsm.sim.state"

    aput-object v4, v3, v5

    const-string v4, "gsm.sim.state.2"

    aput-object v4, v3, v8

    const-string v4, "gsm.sim.state.3"

    aput-object v4, v3, v9

    const-string v4, "gsm.sim.state.4"

    aput-object v4, v3, v6

    iput-object v3, p0, Landroid/telephony/TelephonyManager;->PROPERTY_SIM_STATE:[Ljava/lang/String;

    .line 182
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 187
    .local v1, "appContext":Landroid/content/Context;
    if-eqz v1, :cond_4

    .line 188
    iput-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 193
    :goto_0
    sget-object v3, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v3, :cond_0

    .line 194
    const-string/jumbo v3, "telephony.registry"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    sput-object v3, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 198
    :cond_0
    sget-object v3, Landroid/telephony/TelephonyManager;->sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v3, :cond_1

    .line 200
    const-string/jumbo v3, "telephony.registry2"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    sput-object v3, Landroid/telephony/TelephonyManager;->sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 205
    :cond_1
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v3, v6, :cond_2

    .line 206
    const-string/jumbo v3, "telephony.registry3"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    sput-object v3, Landroid/telephony/TelephonyManager;->sRegistry3:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 210
    :cond_2
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v3, v7, :cond_3

    .line 211
    const-string/jumbo v3, "telephony.registry4"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    sput-object v3, Landroid/telephony/TelephonyManager;->sRegistry4:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 217
    :cond_3
    :try_start_0
    const-class v3, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v3, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 218
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v3, :cond_5

    .line 219
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "actualClassName":Ljava/lang/String;
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initial mOnlyOwnerSimSupport done, actual class name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "actualClassName":Ljava/lang/String;
    :goto_1
    return-void

    .line 190
    :cond_4
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 222
    :cond_5
    :try_start_1
    const-string v3, "TelephonyManager"

    const-string v4, "FAIL! intial mOnlyOwnerSimSupport"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 224
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "TelephonyManager"

    const-string v4, "FAIL! No IOnlyOwnerSimSupport"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getDefaultSim()I
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    .line 2339
    const/4 v1, 0x0

    .line 2346
    .local v1, "default_sim":I
    const/4 v6, 0x0

    .line 2347
    .local v6, "single_sim":Z
    const/4 v4, 0x0

    .line 2348
    .local v4, "first_single_sim":I
    const/4 v0, 0x0

    .line 2349
    .local v0, "counter":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    sget v7, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v5, v7, :cond_2

    .line 2350
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2351
    add-int/lit8 v0, v0, 0x1

    .line 2352
    if-ne v0, v8, :cond_1

    .line 2353
    const/4 v6, 0x1

    .line 2354
    move v4, v5

    .line 2349
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2356
    :cond_1
    if-le v0, v8, :cond_0

    .line 2357
    const/4 v6, 0x0

    .line 2363
    :cond_2
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultSim check single_sim="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", first_single_sim="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    if-eqz v6, :cond_3

    .line 2366
    move v1, v4

    .line 2368
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultSim = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 2387
    .end local v1    # "default_sim":I
    .local v2, "default_sim":I
    :goto_1
    return v2

    .line 2374
    .end local v2    # "default_sim":I
    .restart local v1    # "default_sim":I
    :cond_3
    const-string/jumbo v7, "persist.radio.default_sim"

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2375
    if-ne v1, v10, :cond_4

    .line 2377
    const-string/jumbo v7, "persist.radio.default_sim"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    const/4 v1, 0x0

    .line 2381
    :cond_4
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultSim = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v2, v1

    .line 2387
    .end local v1    # "default_sim":I
    .restart local v2    # "default_sim":I
    goto :goto_1

    .line 2382
    .end local v2    # "default_sim":I
    .restart local v1    # "default_sim":I
    :catch_0
    move-exception v3

    .line 2383
    .local v3, "ex":Ljava/lang/Exception;
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultSim has exception ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), set as default PhoneConstants.GEMINI_SIM_1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1620
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 1624
    const-string/jumbo v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 739
    const-string v2, ""

    .line 741
    .local v2, "productType":Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 743
    .local v0, "curVal":I
    move v3, v0

    .line 744
    .local v3, "retVal":I
    if-ne v3, v5, :cond_0

    .line 745
    sget-object v4, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v5, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 746
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 747
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 748
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 749
    const/4 v3, 0x1

    .line 758
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLteOnCdmaMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " curVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " product_type=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' lteOnCdmaProductType=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return v3

    .line 751
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 754
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getMaxPdpNum(I)I
    .locals 1
    .param p0, "simId"    # I

    .prologue
    .line 283
    const/4 v0, 0x3

    return v0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 967
    packed-switch p0, :pswitch_data_0

    .line 987
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 973
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 983
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 985
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1010
    packed-switch p0, :pswitch_data_0

    .line 1042
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1012
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 1014
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 1016
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 1018
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 1020
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 1022
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 1024
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 1026
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 1028
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 1030
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 1032
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 1034
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 1036
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 1038
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 1040
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public static getPhoneType(I)I
    .locals 3
    .param p0, "networkMode"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 656
    packed-switch p0, :pswitch_data_0

    move v0, v1

    .line 683
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 669
    goto :goto_0

    .line 677
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 680
    goto :goto_0

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 639
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 640
    .local v0, "mode":I
    if-ne v0, v2, :cond_0

    .line 641
    const/4 v1, 0x0

    .line 642
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 628
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 631
    .local v0, "type":I
    return v0
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    .prologue
    .line 692
    const-string v1, ""

    .line 693
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 695
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 697
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 698
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 699
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    .line 704
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_3

    .line 706
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 711
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-object v1

    .line 707
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 708
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .line 701
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    :catch_1
    move-exception v4

    .line 702
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 704
    if-eqz v5, :cond_1

    .line 706
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 707
    :catch_2
    move-exception v7

    goto :goto_0

    .line 704
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v5, :cond_2

    .line 706
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 708
    :cond_2
    :goto_3
    throw v7

    .line 707
    :catch_3
    move-exception v8

    goto :goto_3

    .line 704
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 701
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_3
    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static getRadioType(I)I
    .locals 1
    .param p0, "simId"    # I

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 1512
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 2232
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubscriberInfo simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public adjustModemRadioPower(II)Z
    .locals 5
    .param p1, "level_2G"    # I
    .param p2, "level_3G"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2572
    const/4 v0, 0x0

    .line 2575
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2576
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2577
    const-string v2, "TelephonyManager"

    const-string v3, "[TelephonyManager] Call PhoneInterfaceManager - adjustModemRadioPower "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->adjustModemRadioPower(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2584
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TelephonyManager]adjustModemRadioPower, level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    return v0

    .line 2580
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public adjustModemRadioPowerByBand(II)Z
    .locals 8
    .param p1, "band"    # I
    .param p2, "level"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2599
    const/4 v2, 0x0

    .line 2600
    .local v2, "result":Z
    const/4 v1, 0x1

    .line 2601
    .local v1, "rat":I
    const/4 v6, 0x3

    if-le p1, v6, :cond_2

    move v0, v4

    .line 2602
    .local v0, "is3G":Z
    :goto_0
    if-ltz p1, :cond_3

    const/16 v6, 0xd

    if-gt p1, v6, :cond_3

    if-ltz p2, :cond_3

    const/16 v6, 0xff

    if-gt p2, v6, :cond_3

    .line 2607
    .local v4, "validValue":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 2609
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 2610
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_1

    .line 2611
    if-eqz v0, :cond_0

    .line 2613
    add-int/lit8 p1, p1, -0x4

    .line 2614
    const/4 v1, 0x2

    .line 2616
    :cond_0
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TelephonyManager]adjustModemRadioPowerByBand, band = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    invoke-interface {v3, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->adjustModemRadioPowerByBand(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2627
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_2
    return v2

    .end local v0    # "is3G":Z
    .end local v4    # "validValue":Z
    :cond_2
    move v0, v5

    .line 2601
    goto :goto_0

    .restart local v0    # "is3G":Z
    :cond_3
    move v4, v5

    .line 2602
    goto :goto_1

    .line 2624
    .restart local v4    # "validValue":Z
    :cond_4
    const-string v5, "TelephonyManager"

    const-string v6, "[TelephonyManager]Invalid band or level value !"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2619
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "cmdAPDU"    # Ljava/lang/String;
    .param p3, "btRsp"    # Landroid/telephony/BtSimapOperResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2459
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2460
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2461
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2469
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2463
    :catch_0
    move-exception v0

    .line 2465
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2469
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2466
    :catch_1
    move-exception v0

    .line 2467
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .param p1, "simId"    # I
    .param p2, "btRsp"    # Landroid/telephony/BtSimapOperResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2413
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2414
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2415
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2423
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2417
    :catch_0
    move-exception v0

    .line 2419
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2423
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2420
    :catch_1
    move-exception v0

    .line 2421
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapDisconnectSIM()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2435
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2436
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2437
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->btSimapDisconnectSIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2445
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2439
    :catch_0
    move-exception v0

    .line 2441
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2445
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2442
    :catch_1
    move-exception v0

    .line 2443
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapPowerOffSIM()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2526
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2527
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2528
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->btSimapPowerOffSIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2536
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2530
    :catch_0
    move-exception v0

    .line 2532
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2536
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2533
    :catch_1
    move-exception v0

    .line 2534
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "btRsp"    # Landroid/telephony/BtSimapOperResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2505
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2506
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2507
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2515
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2509
    :catch_0
    move-exception v0

    .line 2511
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2515
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2512
    :catch_1
    move-exception v0

    .line 2513
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "btRsp"    # Landroid/telephony/BtSimapOperResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2482
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2483
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2484
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2492
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2486
    :catch_0
    move-exception v0

    .line 2488
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2492
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2489
    :catch_1
    move-exception v0

    .line 2490
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 541
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    goto :goto_0

    .line 542
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public disableLocationUpdatesGemini(I)V
    .locals 1
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1922
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1926
    :goto_0
    return-void

    .line 1924
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1923
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 524
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    goto :goto_0

    .line 525
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdatesGemini(I)V
    .locals 1
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1902
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1906
    :goto_0
    return-void

    .line 1904
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1903
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1811
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1815
    :goto_0
    return-object v1

    .line 1812
    :catch_0
    move-exception v0

    .line 1813
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1814
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1815
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1532
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1540
    :goto_0
    return v1

    .line 1533
    :catch_0
    move-exception v0

    .line 1535
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1537
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1539
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1706
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1711
    :goto_0
    return v1

    .line 1707
    :catch_0
    move-exception v0

    .line 1709
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1710
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1711
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1724
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1729
    :goto_0
    return v1

    .line 1725
    :catch_0
    move-exception v0

    .line 1727
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1728
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1729
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1740
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1745
    :goto_0
    return-object v1

    .line 1741
    :catch_0
    move-exception v0

    .line 1743
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1744
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1745
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 493
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCellLocationGemini(I)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationGemini(I)Landroid/telephony/CellLocation;
    .locals 5
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1871
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->getCellLocation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1874
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 1875
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 1884
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v1

    .line 1879
    :catch_0
    move-exception v2

    .line 1880
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v3

    .line 1881
    goto :goto_0

    .line 1882
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1883
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v3

    .line 1884
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1394
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1401
    :goto_0
    return-object v1

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1398
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1400
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentPhoneType()I
    .locals 3

    .prologue
    .line 592
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 593
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 594
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 606
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 597
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 599
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 602
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 603
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 606
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1570
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1578
    :goto_0
    return v1

    .line 1571
    :catch_0
    move-exception v0

    .line 1573
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1575
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1577
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 907
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1608
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1615
    :goto_0
    return v1

    .line 1609
    :catch_0
    move-exception v0

    .line 1611
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1613
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1614
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 464
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 471
    :goto_0
    return-object v1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 469
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 470
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 445
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 450
    :goto_0
    return-object v1

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 449
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 450
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1292
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1297
    :goto_0
    return-object v1

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1295
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1297
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1482
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1489
    :goto_0
    return-object v1

    .line 1483
    :catch_0
    move-exception v0

    .line 1484
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1486
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1488
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1464
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1471
    :goto_0
    return-object v1

    .line 1465
    :catch_0
    move-exception v0

    .line 1466
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1468
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1470
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1501
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1506
    :goto_0
    return-object v1

    .line 1502
    :catch_0
    move-exception v0

    .line 1503
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1504
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1506
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1332
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1339
    :goto_0
    return-object v1

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1336
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1338
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1310
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1317
    :goto_0
    return-object v1

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1314
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1316
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1231
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1237
    :goto_0
    return v1

    .line 1232
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1235
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1237
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMissedCallCount()I
    .locals 5

    .prologue
    .line 2546
    const/4 v1, 0x0

    .line 2548
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2549
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2550
    const-string v3, "TelephonyManager"

    const-string v4, "[TelephonyManager] Call PhoneInterfaceManager - getMissedCallCount "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMissedCallCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2558
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 2553
    :catch_0
    move-exception v0

    .line 2554
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1852
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1853
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1843
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1844
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMobileRevisionAndImei(ILandroid/os/Message;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "message"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2328
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getMobileRevisionAndImei(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2335
    :goto_0
    return-void

    .line 2329
    :catch_0
    move-exception v0

    .line 2331
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2332
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2333
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1354
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1361
    :goto_0
    return-object v1

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1358
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1360
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 560
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 566
    :goto_0
    return-object v1

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 564
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 565
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNeighboringCellInfoGemini(I)Ljava/util/List;
    .locals 4
    .param p1, "simId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1942
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->getNeighboringCellInfo(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1949
    :goto_0
    return-object v1

    .line 1944
    :catch_0
    move-exception v0

    .line 1945
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1947
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1948
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoGemini(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2011
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2012
    const-string v0, "gsm.operator.iso-country.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2018
    :goto_0
    return-object v0

    .line 2013
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2014
    const-string v0, "gsm.operator.iso-country.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2015
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 2016
    const-string v0, "gsm.operator.iso-country.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2018
    :cond_2
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1987
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1988
    const-string v0, "gsm.operator.numeric.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1994
    :goto_0
    return-object v0

    .line 1989
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1990
    const-string v0, "gsm.operator.numeric.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1991
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1992
    const-string v0, "gsm.operator.numeric.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1994
    :cond_2
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 782
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameGemini(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1965
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1966
    const-string v0, "gsm.operator.alpha.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1972
    :goto_0
    return-object v0

    .line 1967
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1968
    const-string v0, "gsm.operator.alpha.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1969
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1970
    const-string v0, "gsm.operator.alpha.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1972
    :cond_2
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 877
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeGemini(I)I
    .locals 3
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2044
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2045
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2046
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2058
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 2051
    :catch_0
    move-exception v0

    .line 2053
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2055
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2057
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeNameGemini(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2073
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2105
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 2075
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 2077
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 2079
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 2081
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 2083
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 2085
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 2087
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 2089
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 2091
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 2093
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 2095
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 2097
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 2099
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 2101
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 2103
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 2073
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    const/4 v0, 0x0

    .line 623
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getSN()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2640
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSN()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2645
    :goto_0
    return-object v1

    .line 2641
    :catch_0
    move-exception v0

    .line 2643
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2644
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2645
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1176
    const-string v0, "TelephonyManager"

    const-string v1, "getSimCountryIso return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const-string v0, ""

    .line 1182
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimCountryIsoGemini(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2145
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimCountryIso:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSimCountryIso(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2155
    :goto_0
    return-object v1

    .line 2148
    :catch_0
    move-exception v0

    .line 2150
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2152
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2154
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1132
    const-string v0, "TelephonyManager"

    const-string v1, "getSimOperator return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const-string v0, ""

    .line 1138
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperatorGemini(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2122
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSimOperator(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2132
    :goto_0
    return-object v1

    .line 2125
    :catch_0
    move-exception v0

    .line 2127
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2129
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2131
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1151
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1152
    const-string v1, "TelephonyManager"

    const-string v2, "getSimOperatorName return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-string v1, ""

    .line 1166
    :goto_0
    return-object v1

    .line 1158
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getSimOperatorName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1159
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1163
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1165
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    const-string v0, "TelephonyManager"

    const-string v1, "getSimSerialNumber return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const-string v0, ""

    .line 1203
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumberGemini(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumberGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2173
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2180
    :goto_0
    return-object v1

    .line 2174
    :catch_0
    move-exception v0

    .line 2175
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2177
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2179
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimState()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1102
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1103
    const-string v2, "TelephonyManager"

    const-string v3, "getSimState return: 3gdatasms  MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :goto_0
    return v1

    .line 1109
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1114
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1116
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSmsDefaultSim()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2395
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSmsDefaultSim()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2399
    :goto_0
    return v1

    .line 2396
    :catch_0
    move-exception v0

    .line 2397
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2398
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2399
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1258
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1266
    :goto_0
    return-object v1

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1263
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1265
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1441
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTagGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2220
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2227
    :goto_0
    return-object v1

    .line 2221
    :catch_0
    move-exception v0

    .line 2222
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2224
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2226
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1373
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1380
    :goto_0
    return-object v1

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1377
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1379
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1415
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCountGemini(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountGemini(I)I
    .locals 3
    .param p1, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2196
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2203
    :goto_0
    return v1

    .line 2197
    :catch_0
    move-exception v0

    .line 2198
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2200
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2202
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVoiceNetworkType()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 935
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 936
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 937
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 947
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 942
    :catch_0
    move-exception v0

    .line 944
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 945
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 947
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1075
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyEx()Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1084
    :goto_0
    return v1

    .line 1079
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1082
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1084
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 808
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 809
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 810
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->isNetworkRoamingGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 820
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 818
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 819
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 1783
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1784
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 1766
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1767
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 1658
    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1660
    .local v3, "pkgForDebug":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1661
    .local v2, "notifyNow":Ljava/lang/Boolean;
    sget-object v4, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, p2, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 1665
    if-nez p2, :cond_2

    .line 1667
    sget-object v4, Landroid/telephony/TelephonyManager;->sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, p2, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1697
    .end local v2    # "notifyNow":Ljava/lang/Boolean;
    :cond_0
    :goto_1
    return-void

    .line 1658
    .end local v3    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string v3, "<unknown>"

    goto :goto_0

    .line 1668
    .restart local v2    # "notifyNow":Ljava/lang/Boolean;
    .restart local v3    # "pkgForDebug":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x20

    if-ne p2, v4, :cond_3

    .line 1669
    :try_start_1
    sget-object v4, Landroid/telephony/TelephonyManager;->sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, p2, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1690
    .end local v2    # "notifyNow":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 1692
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1671
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "notifyNow":Ljava/lang/Boolean;
    :cond_3
    const/4 v0, 0x0

    .line 1672
    .local v0, "data_events":I
    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_4

    .line 1673
    or-int/lit8 v0, v0, 0x40

    .line 1675
    :cond_4
    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_5

    .line 1676
    or-int/lit16 v0, v0, 0x80

    .line 1679
    :cond_5
    if-eqz v0, :cond_0

    .line 1684
    :try_start_2
    sget-object v4, Landroid/telephony/TelephonyManager;->sRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1693
    .end local v0    # "data_events":I
    .end local v2    # "notifyNow":Ljava/lang/Boolean;
    :catch_1
    move-exception v1

    .line 1695
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    .prologue
    .line 1833
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    :goto_0
    return-void

    .line 1835
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1834
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public simAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strRand"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2245
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2246
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2247
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->simAuth(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2254
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2251
    :catch_0
    move-exception v0

    .line 2253
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "strRand"    # Ljava/lang/String;
    .param p2, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2286
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2287
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2288
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2294
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2292
    :catch_0
    move-exception v0

    .line 2293
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strRand"    # Ljava/lang/String;
    .param p2, "strAutn"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2267
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2268
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2269
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2276
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2273
    :catch_0
    move-exception v0

    .line 2275
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "strRand"    # Ljava/lang/String;
    .param p2, "strAutn"    # Ljava/lang/String;
    .param p3, "simId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2304
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2305
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2306
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2312
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2310
    :catch_0
    move-exception v0

    .line 2311
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

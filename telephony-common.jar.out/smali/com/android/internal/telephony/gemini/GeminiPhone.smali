.class public Lcom/android/internal/telephony/gemini/GeminiPhone;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiPhone$a;
    }
.end annotation


# static fields
.field protected static final EVENT_3G_SWITCH_SET_PREFERRED_NETWORK_MODE:I = 0x3

.field protected static final EVENT_DUAL_SIM_SWITCH_DONE:I = 0x1

.field protected static final EVENT_GET_AVAILABLE_NW:I = 0x6

.field protected static final EVENT_GET_ICCID_FOR_SIM_HOT_SWAP_DONE:I = 0x5

.field protected static final EVENT_GET_NETWORK_SELECTION_MODE:I = 0x4

.field protected static final EVENT_GPRS_DETACHED:I = 0x7

.field public static EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String; = null

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x8

.field protected static final EVENT_SIM_INSERTED_STATUS:I = 0x2

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_SWAP_SIM:Ljava/lang/String; = "SWAP"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final PREFERENCE_3G_SWITCH:Ljava/lang/String; = "com.mtk.3G_SWITCH"

.field public static final PREF_3G_SIM_ID:Ljava/lang/String; = "3G_SIM_ID"

.field public static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field public static final PROPERTY_SMART_3G_SWITCH:Ljava/lang/String; = "ro.gemini.smart_3g_switch"

.field protected static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field protected static final STATUS_NO_SIM_INSERTED:I = 0x0

.field protected static final STATUS_QUAD_SIM_INSERTED:I = 0xf

.field protected static final STATUS_SIM1_INSERTED:I = 0x1

.field protected static final STATUS_SIM2_INSERTED:I = 0x2

.field protected static final STATUS_SIM3_INSERTED:I = 0x4

.field protected static final STATUS_SIM4_INSERTED:I = 0x8

.field protected static final STATUS_TRIPLE_SIM_INSERTED:I = 0x7

.field private static ao:Landroid/content/SharedPreferences;

.field private static final ay:[I


# instance fields
.field private A:[Ljava/lang/String;

.field private X:Lcom/android/internal/telephony/Phone;

.field private Y:[Lcom/android/internal/telephony/Phone;

.field private Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

.field private aA:Z

.field private aB:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

.field private aC:Ljava/lang/Runnable;

.field private aD:Ljava/lang/Runnable;

.field private aE:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

.field private aF:Ljava/lang/Runnable;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field ag:Lcom/mediatek/common/telephony/ISimInfoUpdate;

.field private ah:Landroid/os/RegistrantList;

.field private ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

.field private aj:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

.field private ak:Lcom/mediatek/common/telephony/ITelephonyExt;

.field private al:I

.field private am:Z

.field private an:Z

.field private ap:I

.field private aq:Landroid/os/PowerManager$WakeLock;

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:I

.field private aw:I

.field private ax:I

.field private az:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    const-string v0, "com.mtk.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    .line 248
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 276
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    .line 166
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ac:I

    .line 169
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ad:I

    .line 170
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    .line 172
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ae:I

    .line 173
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:I

    .line 176
    iput-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ag:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 178
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ah:Landroid/os/RegistrantList;

    .line 221
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:I

    .line 231
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Z

    .line 236
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    .line 244
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    .line 247
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:I

    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v2

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v7

    const-string v1, "ril.iccid.sim3"

    aput-object v1, v0, v8

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:[Ljava/lang/String;

    .line 674
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Ljava/lang/Runnable;

    .line 859
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Ljava/lang/Runnable;

    .line 2696
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 2874
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Ljava/lang/Runnable;

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v2

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v7

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    .line 281
    iput-boolean v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:Z

    .line 283
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 286
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()I

    move-result v2

    .line 289
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :try_start_1
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISwitch3GPolicyWrapper created (mSwitch3GPolicyWrapper="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 296
    :goto_0
    if-nez v0, :cond_1

    .line 297
    const-string v0, "PHONE"

    const-string v1, "Switch 3G Policy Wrapper Missing (mSwitch3GPolicyWrapper=null), Switch 3G Policy objects not created."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_1
    :try_start_2
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ag:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 315
    :goto_2
    :try_start_3
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ak:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 320
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    .line 323
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 330
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o()V

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->p()V

    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    .line 338
    return-void

    .line 291
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 292
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISwitch3GPolicyWrapper create exception (mSwitch3GPolicyWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    .line 299
    :cond_1
    if-ne v2, v7, :cond_2

    .line 300
    const-string v1, "DEFAULT"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 305
    :goto_5
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSwitch3GPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 301
    :cond_2
    if-ne v2, v8, :cond_3

    .line 302
    const-string v1, "OP"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_5

    .line 304
    :cond_3
    iput-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_5

    .line 311
    :catch_1
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 316
    :catch_2
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 291
    :catch_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 340
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    .line 166
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ac:I

    .line 169
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ad:I

    .line 170
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    .line 172
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ae:I

    .line 173
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:I

    .line 176
    iput-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ag:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 178
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ah:Landroid/os/RegistrantList;

    .line 221
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:I

    .line 231
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Z

    .line 236
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    .line 244
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    .line 247
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:I

    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v2

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v7

    const-string v1, "ril.iccid.sim3"

    aput-object v1, v0, v8

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:[Ljava/lang/String;

    .line 674
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Ljava/lang/Runnable;

    .line 859
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Ljava/lang/Runnable;

    .line 2696
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 2874
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Ljava/lang/Runnable;

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v2

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v7

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v8

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p4

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    .line 346
    iput-boolean v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:Z

    .line 348
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 351
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()I

    move-result v2

    .line 354
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :try_start_1
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISwitch3GPolicyWrapper created (mSwitch3GPolicyWrapper="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 361
    :goto_0
    if-nez v0, :cond_1

    .line 362
    const-string v0, "PHONE"

    const-string v1, "Switch 3G Policy Wrapper Missing (mSwitch3GPolicyWrapper=null), Switch 3G Policy objects not created."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_1
    :try_start_2
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ag:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 380
    :goto_2
    :try_start_3
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ak:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 385
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    .line 388
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 392
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 395
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o()V

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->p()V

    .line 402
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    .line 403
    return-void

    .line 356
    :catch_0
    move-exception v0

    move-object v1, v5

    .line 357
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISwitch3GPolicyWrapper create exception (mSwitch3GPolicyWrapper="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    .line 364
    :cond_1
    if-ne v2, v7, :cond_2

    .line 365
    const-string v1, "DEFAULT"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 370
    :goto_5
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSwitch3GPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 366
    :cond_2
    if-ne v2, v8, :cond_3

    .line 367
    const-string v1, "OP"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_5

    .line 369
    :cond_3
    iput-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_5

    .line 376
    :catch_1
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 381
    :catch_2
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 356
    :catch_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 7

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ac:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ad:I

    .line 170
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ae:I

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:I

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ag:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 178
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ah:Landroid/os/RegistrantList;

    .line 221
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:I

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:Z

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Z

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:I

    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ril.iccid.sim1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ril.iccid.sim2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ril.iccid.sim3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ril.iccid.sim4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:[Ljava/lang/String;

    .line 674
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Ljava/lang/Runnable;

    .line 859
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Ljava/lang/Runnable;

    .line 2696
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 2874
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Ljava/lang/Runnable;

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p5

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:Z

    .line 414
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 417
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()I

    move-result v2

    .line 418
    const/4 v1, 0x0

    .line 420
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :try_start_1
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISwitch3GPolicyWrapper created (mSwitch3GPolicyWrapper="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 427
    :goto_0
    if-nez v0, :cond_1

    .line 428
    const-string v0, "PHONE"

    const-string v1, "Switch 3G Policy Wrapper Missing (mSwitch3GPolicyWrapper=null), Switch 3G Policy objects not created."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_1
    :try_start_2
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ag:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 446
    :goto_2
    :try_start_3
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ak:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 451
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    .line 454
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 458
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 461
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o()V

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->p()V

    .line 468
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    .line 469
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISwitch3GPolicyWrapper create exception (mSwitch3GPolicyWrapper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    .line 430
    :cond_1
    const/4 v1, 0x1

    if-ne v2, v1, :cond_2

    .line 431
    const-string v1, "DEFAULT"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 436
    :goto_5
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSwitch3GPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 432
    :cond_2
    const/4 v1, 0x2

    if-ne v2, v1, :cond_3

    .line 433
    const-string v1, "OP"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_5

    .line 435
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_5

    .line 442
    :catch_1
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 447
    :catch_2
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 422
    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Z

    return p1
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    return p1
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(I)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:I

    return v0
.end method

.method private e()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCall,mSimInsertedStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    if-eq v0, v1, :cond_0

    .line 570
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_internet_call_value"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceCall,defaultSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 556
    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_1

    .line 560
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_call_sim_setting"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceCall,simid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 567
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCall,defaultSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_call_sim_setting"

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_2
    const-string v0, "setVoiceCall else"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private e(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To register SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inserted status notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneTypeGemini(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 926
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 927
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 928
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Z

    .line 929
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 930
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 938
    :goto_0
    return-void

    .line 931
    :cond_0
    if-ltz p1, :cond_1

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge p1, v0, :cond_1

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To re-register SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inserted status notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 936
    :cond_1
    const-string v0, "To re-register invalid phone inserted status notification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 683
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    .line 684
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n()Z

    move v0, v1

    .line 685
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 686
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 690
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_16

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIccId"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v3

    .line 698
    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:I

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    if-eqz v0, :cond_3

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILD initialize not completed, wait for it,counter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:[I

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:[I

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 776
    :goto_3
    return-void

    .line 690
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 704
    :cond_3
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:I

    .line 705
    const-string v0, "start telephony framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 707
    :goto_4
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_5

    .line 708
    const-string v2, "N/A"

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 709
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 707
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 711
    :cond_5
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    move v2, v1

    .line 713
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_c

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_7

    const-string v0, ""

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 715
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    shl-int v4, v3, v2

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    .line 716
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v3, :cond_6

    .line 717
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    shl-int v4, v3, v2

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    .line 719
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 721
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRildReadIMSIEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm.sim.ril.op"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_a

    const-string v0, ""

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 723
    const-string v0, ""

    .line 724
    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_8

    const-string v5, ""

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gsm.sim.ril.mcc.mnc"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_b

    const-string v0, ""

    :goto_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    const-string v5, ""

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 727
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertImsi2Op (simIdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", opStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 730
    :cond_8
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set sim op property (simIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", opStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", propName="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 733
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setSIMIccId(ILjava/lang/String;)V

    .line 713
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    .line 722
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 725
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 735
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsertedStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 736
    const/4 v0, 0x2

    :goto_8
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_d

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIccId[SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 739
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 740
    const-string v0, "[IRC] Stop initializeTelephonyFramework, start switch phone."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 741
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()V

    goto/16 :goto_3

    .line 745
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    if-eqz v0, :cond_f

    .line 746
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_11

    .line 747
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 754
    :cond_f
    :goto_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v2, :cond_15

    .line 756
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v2

    .line 757
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()I

    move-result v3

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_14

    if-ltz v3, :cond_14

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v0, :cond_14

    if-eq v2, v3, :cond_14

    .line 759
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->set3GCapabilitySIM(I)Z

    move-result v0

    .line 760
    if-eqz v0, :cond_12

    .line 761
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 762
    :goto_a
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_13

    .line 763
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 749
    :cond_11
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 750
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m()V

    goto :goto_9

    .line 766
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    .line 775
    :cond_13
    :goto_b
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    goto/16 :goto_3

    .line 769
    :cond_14
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 770
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    goto :goto_b

    .line 773
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    goto :goto_b

    :cond_16
    move v0, v1

    goto/16 :goto_2
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    return-void
.end method

.method private f(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1005
    .line 1006
    if-nez p1, :cond_2

    .line 1007
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1017
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInserted["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1018
    return v0

    :cond_1
    move v0, v1

    .line 1007
    goto :goto_0

    .line 1008
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1009
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1010
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 1011
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1012
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 1013
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1015
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInserted() got invalid simId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 779
    const-string v0, "start telephony framework initialization for sim hot swap"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 780
    iput-boolean v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    .line 784
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v7, :cond_2

    .line 785
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Z

    if-eqz v0, :cond_1

    .line 786
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDualSimHotPlugStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 788
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    if-nez v0, :cond_5

    .line 790
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Z

    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 800
    :cond_1
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    :cond_2
    move v0, v1

    .line 806
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_9

    .line 807
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    shl-int v3, v7, v0

    and-int/2addr v2, v3

    if-nez v2, :cond_6

    .line 808
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 812
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRildReadIMSIEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm.sim.ril.op"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_7

    const-string v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 814
    const-string v2, ""

    .line 815
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    const-string v4, ""

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm.sim.ril.mcc.mnc"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_8

    const-string v2, ""

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 817
    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 818
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 819
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertImsi2Op (simIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", opStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", numeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 821
    :cond_3
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set sim op property (simIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", opStr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", propName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 806
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 793
    :cond_5
    const-string v0, "Wait for other SIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 857
    :goto_4
    return-void

    .line 810
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_1

    .line 813
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 816
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 826
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    if-eqz v0, :cond_a

    .line 827
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_c

    .line 828
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 835
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v2, :cond_10

    .line 837
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v2

    .line 838
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()I

    move-result v3

    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_f

    if-ltz v3, :cond_f

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v0, :cond_f

    if-eq v2, v3, :cond_f

    .line 840
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->set3GCapabilitySIM(I)Z

    move-result v0

    .line 841
    if-eqz v0, :cond_d

    .line 842
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 843
    :goto_6
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_e

    .line 844
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 843
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 830
    :cond_c
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 831
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m()V

    goto :goto_5

    .line 847
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    .line 856
    :cond_e
    :goto_7
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    goto/16 :goto_4

    .line 850
    :cond_f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 851
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    goto :goto_7

    .line 854
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    goto :goto_7
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()V

    return-void
.end method

.method private g(I)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 2749
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Z

    .line 2751
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()Z

    .line 2753
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 2754
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->set3GCapabilitySIM(I)Z

    move-result v3

    .line 2756
    if-eqz v3, :cond_3

    move v1, v2

    .line 2757
    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_2

    .line 2758
    if-ne p1, v1, :cond_1

    .line 2759
    const-string v0, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force3GSwitch:setPreferredNetworkType:Auto,GSM only ,sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2761
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 2757
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2763
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_1

    .line 2765
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_1

    .line 2768
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2769
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 2775
    :goto_2
    return v3

    .line 2771
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "force3GSwitch else case"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    iput-boolean v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Z

    .line 2773
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m()V

    goto :goto_2
.end method

.method public static get3GSimId()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2608
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2609
    const-string v1, "gsm.3gswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2610
    if-lez v1, :cond_1

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-gt v1, v2, :cond_1

    .line 2611
    add-int/lit8 v0, v1, -0x1

    .line 2617
    :cond_0
    :goto_0
    return v0

    .line 2613
    :cond_1
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get3GSimId() got invalid property value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:Z

    if-eqz v0, :cond_0

    .line 869
    const-string v0, "Need to initialize framework again, abort update SIMInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:Z

    .line 871
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    .line 895
    :goto_0
    return-void

    .line 875
    :cond_0
    const-string v0, "start update SIM information"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ag:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->broadcastSimInsertedStatusAdp(I)V

    .line 877
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    .line 879
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 881
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->start()V

    .line 894
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()V

    goto :goto_0
.end method

.method private h(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2840
    const/4 v1, 0x0

    .line 2841
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "com.mtk.3G_SWITCH"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2842
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2844
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 2846
    const-string v0, "PHONE"

    const-string v1, "Just turn off 3G capability. not to store ICCID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    :goto_0
    return-void

    :cond_0
    move v4, v0

    move-object v0, v1

    move v1, v4

    .line 2850
    :goto_1
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v3, :cond_2

    .line 2851
    if-ne p1, v1, :cond_1

    .line 2852
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 2850
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2855
    :cond_2
    const-string v1, "3G_SIM_ID"

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2857
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    if-eqz v1, :cond_3

    .line 2858
    const-string v1, "3G_SIM_ICCID"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2859
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2860
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current 3G SIM ICCID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2862
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "No SIM inserted, not to store ICCID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 898
    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:Z

    if-eqz v1, :cond_0

    .line 899
    const-string v1, "Need to initialize framework again, abort initialize radio power"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 900
    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:Z

    .line 901
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    .line 921
    :goto_0
    return-void

    .line 905
    :cond_0
    const-string v1, "start initializing radio power"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 907
    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:Z

    if-eqz v1, :cond_1

    .line 908
    const-string v1, "query SIM Missing status for gemini card"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 909
    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:Z

    .line 910
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 911
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->notifySimMissingStatus(Z)V

    .line 910
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->finishRadioStatusInitialization([Ljava/lang/String;I)V

    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Z

    .line 918
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 920
    const-string v0, "broadcast GeminiPhone.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2507
    const-string v1, "gsm.3gswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private k()I
    .locals 2

    .prologue
    .line 2512
    const-string v0, "ro.gemini.smart_3g_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    return v0
.end method

.method private l()I
    .locals 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 2779
    const/4 v12, -0x1

    .line 2780
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v2, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2781
    const-string v2, "3G_SIM_ICCID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2782
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v3

    .line 2783
    const-string v0, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check if need to do bootup 3G Switch ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2785
    :goto_0
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v4, :cond_0

    .line 2786
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimInsertedStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mIccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2790
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    if-nez v0, :cond_2

    if-ltz v3, :cond_2

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v0, :cond_2

    .line 2791
    const/4 v0, -0x1

    .line 2792
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v4, :cond_6

    .line 2795
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v9, :cond_a

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v8

    :goto_1
    move-object v4, v0

    .line 2796
    :goto_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v10, :cond_9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v9

    :goto_3
    move-object v5, v0

    .line 2797
    :goto_4
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v11, :cond_8

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v10

    :goto_5
    move-object v6, v0

    .line 2798
    :goto_6
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v7, 0x4

    if-lt v0, v7, :cond_7

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v1, v0, v11

    :cond_1
    move-object v7, v1

    .line 2800
    :goto_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v7}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2807
    :goto_8
    sparse-switch v0, :sswitch_data_0

    move v8, v12

    .line 2833
    :goto_9
    :sswitch_0
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target3GSIM simIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selected3G="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v8

    .line 2836
    :cond_2
    return v12

    :cond_3
    move-object v0, v1

    .line 2795
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 2796
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 2797
    goto :goto_5

    .line 2804
    :cond_6
    const-string v1, "PHONE"

    const-string v2, "no 3g switch policy instance. (mSwitch3GPolicy null)"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :sswitch_1
    move v8, v9

    .line 2814
    goto :goto_9

    :sswitch_2
    move v8, v10

    .line 2818
    goto :goto_9

    :sswitch_3
    move v8, v11

    .line 2822
    goto :goto_9

    .line 2825
    :sswitch_4
    const/4 v8, -0x1

    .line 2826
    goto :goto_9

    :cond_7
    move-object v7, v1

    goto :goto_7

    :cond_8
    move-object v6, v1

    goto :goto_6

    :cond_9
    move-object v5, v1

    goto :goto_4

    :cond_a
    move-object v4, v1

    goto :goto_2

    .line 2807
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x15 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic l(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 962
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 970
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 978
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 974
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void
.end method

.method static synthetic m(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 2868
    const-string v0, "PHONE"

    const-string v1, "broadcast3GSwitchDoneEvent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    .line 2870
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2871
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2872
    return-void
.end method

.method static synthetic n(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:I

    return v0
.end method

.method private n()Z
    .locals 1

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 2976
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic o(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Ljava/lang/Runnable;

    return-object v0
.end method

.method private o()V
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3225
    const-string v0, "createInternationalRoamingController"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3226
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_0

    .line 3227
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    .line 3233
    :goto_0
    return-void

    .line 3230
    :cond_0
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 3236
    const-string v0, "createDefaultSmsSetting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3238
    :try_start_0
    const-class v0, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3243
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    if-nez v0, :cond_0

    .line 3244
    const-string v0, "PHONE"

    const-string v1, "FAIL! initial IDefaultSmsSimSettingsExt"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    :cond_0
    return-void

    .line 3239
    :catch_0
    move-exception v0

    .line 3240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private q()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3256
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 3257
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v3

    .line 3258
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 3260
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IRC] needSwitchPhone phoneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3261
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v4, v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->needToBootOnGsm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v3, v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->needToBootOnCDMA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    .line 3267
    :goto_1
    return v0

    .line 3258
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 3267
    goto :goto_1
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3274
    const-string v0, "[IRC] doSwitchPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3275
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    .line 3276
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Z

    .line 3277
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    .line 3278
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 3279
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 3280
    return-void
.end method


# virtual methods
.method public abortFemtoCellList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 3173
    const-string v0, "Geminiphone abortFemtoCellList()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3174
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->abortFemtoCellList(Landroid/os/Message;I)V

    .line 3175
    return-void
.end method

.method public abortFemtoCellList(Landroid/os/Message;I)V
    .locals 2

    .prologue
    .line 3188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortFemtoCellList(),simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3189
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->abortFemtoCellList(Landroid/os/Message;)V

    .line 3190
    return-void
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 1747
    return-void
.end method

.method public acceptVtCallWithVoiceOnly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptVtCallWithVoiceOnly()V

    .line 1816
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 2153
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public cancelAvailableNetworks(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->cancelAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 1927
    return-void
.end method

.method public cancelAvailableNetworksGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1261
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->cancelAvailableNetworks(Landroid/os/Message;)V

    .line 1262
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2302
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2306
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 1783
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 1763
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialUpCsd(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 3248
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->dialUpCsd(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheck(Z)V

    .line 1550
    return-void
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheckGemini(ZI)V

    .line 1203
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 2029
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ag:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->disposeReceiverAdp()V

    .line 476
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method

.method public doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2499
    return-void
.end method

.method public doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2503
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2081
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n()Z

    .line 2082
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1390
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n()Z

    .line 1392
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 1767
    return-void
.end method

.method public enableGPRSAlwaysAttachIfNecessary(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2921
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableGPRSAlwaysAttachIfNecessary( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    if-gtz p1, :cond_1

    .line 2959
    :cond_0
    :goto_0
    return-void

    .line 2927
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "com.mtk.GPRS"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2928
    const-string v1, "ATTACH_MODE"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2929
    const-string v2, "ATTACH_MODE_SIM"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2930
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set to GPRS mode ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2950
    :pswitch_0
    const-class v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    .line 2951
    invoke-interface {v0}, Lcom/mediatek/common/telephony/IGsmDCTExt;->getPsAttachSimWhenRadioOn()I

    move-result v1

    .line 2952
    if-ltz v1, :cond_0

    shl-int v0, v5, v1

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 2953
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    .line 2954
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    goto :goto_0

    .line 2934
    :pswitch_1
    if-ltz v2, :cond_0

    shl-int v0, v5, v2

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 2935
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    .line 2936
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    goto :goto_0

    .line 2942
    :pswitch_2
    if-ltz v2, :cond_0

    shl-int v0, v5, v2

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 2943
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    goto/16 :goto_0

    .line 2932
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 2025
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 2206
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1779
    return-void
.end method

.method public get3GCapabilitySIM()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 2630
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_2

    .line 2631
    const-string v1, "gsm.baseband.capability"

    .line 2633
    if-lez v0, :cond_0

    .line 2634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2637
    :cond_0
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2639
    if-le v1, v3, :cond_1

    .line 2640
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v0

    .line 2644
    :goto_1
    return v0

    .line 2630
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2643
    :cond_2
    const-string v0, "PHONE"

    const-string v1, "GeminiPhone get3GCapabilitySIM return -1"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public get3GSwitchAllowed3GSlots()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2578
    .line 2580
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()I

    move-result v2

    if-lez v2, :cond_1

    .line 2582
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_5

    .line 2585
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 2586
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 2587
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_7

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 2588
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 2590
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2601
    :cond_1
    :goto_7
    return v0

    :cond_2
    move-object v0, v1

    .line 2585
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 2586
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 2587
    goto :goto_4

    .line 2595
    :cond_5
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[get3GSwitchAllowed3GSlots] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_6
    move-object v5, v1

    goto :goto_6

    :cond_7
    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v3, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto :goto_1
.end method

.method public getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 2326
    return-void
.end method

.method public getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 2330
    return-void
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3038
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypeGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypesGemini(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
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
    .line 3163
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfoGemini(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1347
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 1923
    return-void
.end method

.method public getAvailableNetworksGemini(Landroid/os/Message;I)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1241
    .line 1242
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_3

    .line 1243
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetached(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1248
    :goto_1
    if-eq v0, v1, :cond_0

    if-eq v0, p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1250
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1258
    :goto_2
    return-void

    .line 1242
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1252
    :cond_2
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1253
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1254
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 1255
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1256
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v3, 0x7

    invoke-virtual {v2, v0, p0, v3, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->registerForDetached(ILandroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getAvoidSYSList(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 3206
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1790
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBtConnectedSimId()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ac:I

    return v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1893
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 1914
    return-void
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndexGemini(I)I
    .locals 1

    .prologue
    .line 1462
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconModeGemini(I)I
    .locals 1

    .prologue
    .line 1470
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriTextGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1466
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 2157
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContextGemini(I)Landroid/content/Context;
    .locals 1

    .prologue
    .line 1197
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCallMeter(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 2322
    return-void
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionListGemini(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallList(Landroid/os/Message;)V

    .line 2013
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallListGemini(Landroid/os/Message;I)V

    .line 1323
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualSimMode()I
    .locals 1

    .prologue
    .line 1057
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    return v0
.end method

.method public getEfRatBalancing()I
    .locals 1

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEfRatBalancing()I

    move-result v0

    return v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 1771
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEsnGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1433
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFDTimerValue()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 3155
    const/4 v0, 0x0

    .line 3156
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3157
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3159
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getFDTimerValue()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2294
    return-void
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2

    .prologue
    .line 3168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone getFemtoCellList(),operatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3169
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;I)V

    .line 3170
    return-void
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;I)V
    .locals 2

    .prologue
    .line 3183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone getFemtoCellList(),operatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",from SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3184
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3185
    return-void
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1786
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
    .locals 1

    .prologue
    .line 3048
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerGemini(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1441
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1429
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatusGemini(Lcom/android/internal/telephony/Phone$IccService;I)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1

    .prologue
    .line 1510
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallFailCause()I
    .locals 1

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLastCallFailCause()I

    move-result v0

    return v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMobileRevisionAndImei(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getMobileRevisionAndImei(ILandroid/os/Message;)V

    .line 2182
    return-void
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3026
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMvnoMatchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoMatchType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3113
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getMvnoMatchType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMvnoPattern(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoPattern(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3121
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 1982
    return-void
.end method

.method public getNetworkHideState()I
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getNetworkHideState()I

    move-result v0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1904
    return-void
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextList(Landroid/os/Message;)V

    .line 2009
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextListGemini(Landroid/os/Message;I)V

    .line 1318
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfoGemini(I)Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1437
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhoneTypeGemini(I)I
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhonebyId(I)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPolCapability(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPolCapability(Landroid/os/Message;)V

    .line 2963
    return-void
.end method

.method public getPpuAndCurrency(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 2334
    return-void
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 2967
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1971
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1972
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 1973
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1978
    :goto_0
    return-void

    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1794
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimIndicatorState()I
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimIndicatorState()I

    move-result v0

    return v0
.end method

.method public getSimInsertedState()I
    .locals 2

    .prologue
    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimInsertedState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1062
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    return v0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSimulatedRadioControlGemini(I)Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1372
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmsDefaultSim()I
    .locals 4

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;->getSmsDefaultSim(Landroid/content/Context;)I

    move-result v0

    .line 2493
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsDefaultSim result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    return v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 2178
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1558
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUnitTestModeGemini(I)Z
    .locals 1

    .prologue
    .line 1335
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2983
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    .line 2985
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVtCallForwardingOption(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVtCallForwardingOption(ILandroid/os/Message;)V

    .line 2426
    return-void
.end method

.method public getVtCallWaiting(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    .line 2437
    return-void
.end method

.method public getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2445
    return-void
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 580
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 582
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 670
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 584
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    goto :goto_0

    .line 591
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 592
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    goto :goto_0

    .line 597
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    .line 598
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Z

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeMessages(I)V

    .line 600
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Z

    goto :goto_0

    .line 603
    :cond_1
    const-string v0, "receive EVENT_RADIO_AVAILABLE to start framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 608
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:Z

    .line 609
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    if-eqz v0, :cond_3

    .line 610
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:Z

    .line 613
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    if-eqz v0, :cond_0

    .line 614
    const-string v0, "broadcast 3G switch done event"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m()V

    goto :goto_0

    .line 606
    :cond_2
    const-string v0, "receive EVENT_SIM_INSERTED_STATUS to start framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 612
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    goto :goto_2

    .line 620
    :sswitch_3
    const-string v0, "Receive EVENT_GET_NETWORK_SELECTION_MODE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 621
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 622
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 624
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    .line 625
    aget v0, v0, v1

    if-ne v0, v3, :cond_0

    .line 626
    const-string v0, "Start manual selection mode reminder service in GeminiPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 627
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 628
    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.settings.NoNetworkPopUpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 634
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Z

    if-nez v0, :cond_4

    .line 635
    const-string v0, "Not boot up but want to do dual sim switch done, skip"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    :cond_4
    const-string v0, "To re-register SIM inserted status notification."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 640
    :goto_3
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_5

    .line 641
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 643
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ah:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 646
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 647
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    .line 648
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m()V

    .line 649
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    .line 650
    const-string v0, "3G switch done (set preferred network mode)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 652
    :cond_6
    const-string v0, "Set preferred network mode failed, to use +ES3G and reset modem"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    .line 654
    const/16 v1, 0x63

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 655
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(I)Z

    goto/16 :goto_0

    .line 659
    :sswitch_6
    const-string v0, "Query ICCID for SIM Hot Swap done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 660
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()V

    goto/16 :goto_0

    .line 663
    :sswitch_7
    const-string v0, "GPRS detached then query available NW."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 664
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 665
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 666
    iget v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->unregisterForDetached(ILandroid/os/Handler;)V

    goto/16 :goto_0

    .line 582
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_3
        0x5 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hangupActiveCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 2318
    return-void
.end method

.method public hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 2310
    return-void
.end method

.method public hangupAllEx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 2314
    return-void
.end method

.method public internationalModeForceSimSwitch(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 3213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internationalModeForceSimSwitch simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3214
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3221
    :cond_0
    :goto_0
    return v0

    .line 3218
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3221
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    move-result v0

    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1998
    return-void
.end method

.method public invokeOemRilRequestRawGemini([BLandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1305
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1306
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2002
    return-void
.end method

.method public invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1309
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1310
    return-void
.end method

.method public is3GSwitchManualChange3GAllowed()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2551
    .line 2553
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()I

    move-result v2

    if-lez v2, :cond_5

    .line 2555
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_4

    .line 2558
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 2559
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 2560
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_7

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 2561
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 2563
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2574
    :goto_7
    return v0

    :cond_1
    move-object v0, v1

    .line 2558
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2559
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2560
    goto :goto_4

    .line 2568
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[is3GSwitchManualChange3GAllowed] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_5
    move v0, v3

    .line 2572
    goto :goto_7

    :cond_6
    move-object v5, v1

    goto :goto_6

    :cond_7
    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v3, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto :goto_1
.end method

.method public is3GSwitchManualEnabled()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2524
    .line 2526
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()I

    move-result v2

    if-lez v2, :cond_5

    .line 2528
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_4

    .line 2531
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 2532
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 2533
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_7

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 2534
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 2536
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2547
    :goto_7
    return v0

    :cond_1
    move-object v0, v1

    .line 2531
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2532
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2533
    goto :goto_4

    .line 2541
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[is3GSwitchManualEnabled] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_5
    move v0, v3

    .line 2545
    goto :goto_7

    :cond_6
    move-object v5, v1

    goto :goto_6

    :cond_7
    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v3, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto :goto_1
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isGprsDetachingOrDetached(I)Z
    .locals 1

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetachingOrDetached(I)Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumberGemini(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 1474
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRadioOnGemini(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1023
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1037
    :cond_0
    :goto_0
    return v0

    .line 1027
    :cond_1
    if-nez p1, :cond_2

    .line 1028
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1029
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1030
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1031
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 1032
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1033
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 1034
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1036
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioOnGemini() got invalid simId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    move v0, v1

    .line 1037
    goto :goto_0
.end method

.method public isSwitching3GCapability()Z
    .locals 1

    .prologue
    .line 2516
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2517
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    .line 2519
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivity()V

    .line 2174
    return-void
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivityGemini(I)V

    .line 1459
    return-void
.end method

.method public notifySimMissingStatus(Z)V
    .locals 0

    .prologue
    .line 3058
    return-void
.end method

.method public onSimHotSwap(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimHotSwap ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3065
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3066
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Z

    .line 3069
    :cond_0
    if-eqz p2, :cond_2

    .line 3070
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    .line 3071
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3072
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    .line 3074
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    .line 3083
    :goto_0
    return-void

    .line 3078
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 3079
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    shl-int v1, v2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    .line 3081
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()V

    goto :goto_0
.end method

.method public plugInNoSimSlot(I)V
    .locals 3

    .prologue
    .line 3090
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    .line 3091
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    .line 3092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugInNoSimSlot: SIM Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDualSimHotPlugStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3094
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:I

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v1, :cond_0

    .line 3095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Z

    .line 3096
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3097
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()V

    .line 3104
    :goto_0
    return-void

    .line 3099
    :cond_0
    const-string v0, "plugInNoSimSlot: Wait for other SIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3101
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3102
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 2045
    return-void
.end method

.method public queryAvailableBandModeGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1343
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1344
    return-void
.end method

.method public queryCDMANetworkInfo(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 3209
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 2057
    return-void
.end method

.method public queryCdmaRoamingPreferenceGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1360
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1361
    return-void
.end method

.method public queryCellBroadcastSmsActivation(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    .line 2170
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2149
    return-void
.end method

.method public queryTTYModeGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1453
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1454
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 2

    .prologue
    .line 1162
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->refreshSpnDisplay()V

    .line 1162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    :cond_0
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2262
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2214
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1707
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2416
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1675
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1626
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1627
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2230
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1723
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1699
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1691
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1618
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1619
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2254
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1643
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1635
    return-void
.end method

.method public registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2354
    return-void
.end method

.method public registerForNeighboringInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1502
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1503
    return-void
.end method

.method public registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2362
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1610
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1611
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2238
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1603
    return-void
.end method

.method public registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2278
    return-void
.end method

.method public registerForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1486
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1487
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2246
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2454
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1731
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1659
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2222
    return-void
.end method

.method public registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1478
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1479
    return-void
.end method

.method public registerForSimModeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 987
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 988
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ah:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 989
    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 2373
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2374
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1715
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1683
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1667
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2270
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1594
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1595
    return-void
.end method

.method public registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2408
    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2399
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2391
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2383
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1751
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    .line 483
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->removeReferences()V

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_0
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2995
    return-void
.end method

.method public requestSwitchHPF(ZLandroid/os/Message;)V
    .locals 0

    .prologue
    .line 3200
    return-void
.end method

.method public resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 2342
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 3178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone selectFemtoCell(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3179
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;I)V

    .line 3180
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;I)V
    .locals 2

    .prologue
    .line 3193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectFemtoCell(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;)V

    .line 3195
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1935
    return-void
.end method

.method public sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 2466
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 2202
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1829
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1655
    return-void
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2699
    .line 2700
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    if-eqz v0, :cond_0

    .line 2701
    const-string v0, "PHONE"

    const-string v1, "Switch 3G capability now, not to do it repeatedly"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    :goto_0
    return v5

    :cond_0
    move v1, v5

    .line 2704
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_8

    .line 2705
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    .line 2711
    :goto_2
    if-eqz v0, :cond_7

    .line 2712
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone set3GCapabilitySIM ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2714
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2715
    const-string v1, "3G_SIM_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2716
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2717
    iput-boolean v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    .line 2719
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 2720
    const-string v0, "PHONE"

    const-string v1, "Create 3G Switch wakelock"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2722
    const-string v1, "3G_SWITCH"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Landroid/os/PowerManager$WakeLock;

    .line 2723
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2725
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2726
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2727
    const-string v0, "PHONE"

    const-string v3, "Acquire 3G Switch wakelock"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2730
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2732
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2734
    if-ltz p1, :cond_3

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt p1, v0, :cond_4

    :cond_3
    const/4 v0, -0x1

    if-ne v0, p1, :cond_5

    .line 2735
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2737
    :cond_5
    const-string v0, "PHONE"

    const-string v3, "GeminiPhone is sending ordered pre 3G switch event"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->setSimId(I)V

    .line 2739
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    move v5, v8

    .line 2741
    goto/16 :goto_0

    .line 2704
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 2730
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2742
    :cond_7
    const-string v0, "PHONE"

    const-string v1, "Radio unavailable and cannot do 3G Switch"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v0, v8

    goto/16 :goto_2
.end method

.method public setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2338
    return-void
.end method

.method public setAvoidSYS(ZLandroid/os/Message;)V
    .locals 0

    .prologue
    .line 3203
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 2041
    return-void
.end method

.method public setBandModeGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1339
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1340
    return-void
.end method

.method public setBtConnectedSimId(I)V
    .locals 0

    .prologue
    .line 537
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ac:I

    .line 538
    return-void
.end method

.method public setCRO(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 3052
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3053
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3054
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1900
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1918
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 2061
    return-void
.end method

.method public setCdmaRoamingPreferenceGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1364
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1365
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 2065
    return-void
.end method

.method public setCdmaSubscriptionGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1368
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1369
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 2161
    return-void
.end method

.method public setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 2166
    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 496
    return-void
.end method

.method public setCellInfoListRateGemini(II)V
    .locals 1

    .prologue
    .line 1351
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 1352
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 0

    .prologue
    .line 3045
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setDataRoamingEnabled(Z)V

    .line 2053
    return-void
.end method

.method public setDefaultPhone(I)V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    .line 516
    return-void
.end method

.method public setDefaultPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    .line 506
    return-void
.end method

.method public setDualSimMode(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualSimMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1043
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    .line 1045
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1047
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1048
    const-string v1, "Is in flight mode, to re-register inserted status after dual SIM mode changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1049
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1050
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 1049
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    :cond_0
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 2462
    return-void
.end method

.method public setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 2

    .prologue
    .line 3140
    const/4 v0, 0x0

    .line 3141
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3142
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3144
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2298
    return-void
.end method

.method public setGprsTransferType(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 1155
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1869
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1990
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1931
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2286
    return-void
.end method

.method public setOnEcbModeExitResponseGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1494
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1495
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1986
    return-void
.end method

.method public setOnPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1301
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1302
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1910
    return-void
.end method

.method public setPolEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPolEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 2971
    return-void
.end method

.method public setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2346
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1938
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone:setPreferredNetworkType networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " default phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v2

    .line 1941
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "RATMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Landroid/content/SharedPreferences;

    .line 1942
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Landroid/content/SharedPreferences;

    const-string v3, "ModeType"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 1943
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferredNetworkType() mEmNetworkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    if-nez v0, :cond_2

    .line 1945
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1950
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    if-eq v0, v6, :cond_0

    .line 1951
    iget p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 1952
    const-string v0, "PHONE"

    const-string v3, "Notice, the network mode is set from Engineering Mode, using EM settings "

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1955
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1968
    :cond_1
    :goto_1
    return-void

    .line 1947
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode_2"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1957
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    if-ne v0, v5, :cond_5

    move v0, v1

    .line 1958
    :goto_2
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 1959
    if-ne v0, v2, :cond_4

    .line 1960
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1958
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1962
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3

    .line 1965
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1271
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v2

    .line 1272
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeminiPhone:setPreferredNetworkTypeGemini networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "RATMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Landroid/content/SharedPreferences;

    .line 1274
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Landroid/content/SharedPreferences;

    const-string v3, "ModeType"

    const/16 v4, 0xff

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 1275
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEmNetworkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1278
    if-nez p3, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode_2"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1283
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1286
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1287
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    if-ne v0, v5, :cond_4

    move v0, v1

    .line 1288
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1289
    if-ne v0, v2, :cond_3

    .line 1290
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1288
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1292
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_2

    .line 1295
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferredNetworkTypeRIL(I)V
    .locals 0

    .prologue
    .line 3042
    return-void
.end method

.method public setRadioMode(I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1079
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->isRadioStatusInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setRadioSIMMode(Landroid/content/Context;I)V

    .line 1082
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:Z

    if-eqz v0, :cond_2

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G switch now, setRadioMode later ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    .line 1085
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:I

    .line 1106
    :cond_1
    :goto_0
    return-void

    .line 1087
    :cond_2
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:I

    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetAsRadioOff(I)V

    .line 1089
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    invoke-static {p0, p1, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1092
    if-eqz v0, :cond_5

    .line 1093
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ak:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyExt;->isAutoSwitchDataToEnabledSim()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1094
    if-eq p1, v3, :cond_3

    if-ne p1, v5, :cond_1

    .line 1095
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need to auto switch to current enabled SIM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1096
    if-ne p1, v3, :cond_4

    .line 1097
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_0

    .line 1098
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1099
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_0

    .line 1103
    :cond_5
    const-string v0, "Cannot get ConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioPower,power= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GEMINI_SIM_NUM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1111
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1112
    if-eqz p1, :cond_0

    const/16 v0, 0xf

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 1118
    :goto_0
    return-void

    .line 1113
    :cond_1
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v2, v1, :cond_3

    .line 1114
    if-eqz p1, :cond_2

    const/4 v0, 0x7

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    goto :goto_0

    .line 1116
    :cond_3
    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    goto :goto_0
.end method

.method public setRadioPower(ZZ)V
    .locals 1

    .prologue
    .line 1121
    if-eqz p2, :cond_0

    .line 1122
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 1126
    :goto_0
    return-void

    .line 1124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method public setRadioPowerOn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1135
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 1137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 1147
    :goto_0
    return-void

    .line 1139
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()Z

    move-result v0

    .line 1140
    if-eqz v0, :cond_1

    .line 1141
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 1142
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0

    .line 1145
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0
.end method

.method public setSimInsertedState(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimInsertedState["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1067
    if-eqz p2, :cond_0

    .line 1068
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    .line 1072
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    shl-int v1, v2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 2186
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 2

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 2145
    return-void
.end method

.method public setTTYModeGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1450
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 2033
    return-void
.end method

.method public setUnitTestModeGemini(ZI)V
    .locals 1

    .prologue
    .line 1331
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1332
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1887
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 2991
    return-void
.end method

.method public setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2433
    return-void
.end method

.method public setVtCallWaiting(ZLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    .line 2441
    return-void
.end method

.method public setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2449
    return-void
.end method

.method public startDtmf(C)V
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1833
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1837
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1755
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2218
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1711
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCipherIndication(Landroid/os/Handler;)V

    .line 2420
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 1679
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1630
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1631
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 2234
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 1727
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1703
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1695
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1622
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1623
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 2258
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1647
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1639
    return-void
.end method

.method public unregisterForNeighboringInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 2358
    return-void
.end method

.method public unregisterForNeighboringInfoGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1506
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 1507
    return-void
.end method

.method public unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 2366
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1614
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1615
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 2242
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1607
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 2282
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1490
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 1491
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 2250
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 2458
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1735
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1663
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 2226
    return-void
.end method

.method public unregisterForSignalInfoGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1482
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1483
    return-void
.end method

.method public unregisterForSimModeChange(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ah:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 999
    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2377
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2378
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1719
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1687
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1671
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 2274
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 2266
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1598
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1599
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V

    .line 2412
    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 2403
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 2395
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 2387
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 2290
    return-void
.end method

.method public unsetOnEcbModeExitResponseGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1499
    return-void
.end method

.method public updateMobileData(I)V
    .locals 2

    .prologue
    .line 2473
    packed-switch p1, :pswitch_data_0

    .line 2481
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_0

    .line 2482
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2481
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2478
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2486
    :cond_0
    return-void

    .line 2473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePhoneObject(I)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->updatePhoneObject(I)V

    .line 576
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 2021
    return-void
.end method

.method public updateSimIndicateState()V
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 1169
    return-void
.end method

.method public updateSimIndicateStateGemini(I)V
    .locals 1

    .prologue
    .line 1514
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 1515
    return-void
.end method

.method public vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

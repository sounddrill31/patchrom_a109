.class public Lcom/android/internal/telephony/gemini/MTKPhoneFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static H:Lcom/android/internal/telephony/Phone;

.field private static I:Lcom/android/internal/telephony/CommandsInterface;

.field private static J:Lcom/android/internal/telephony/CommandsInterface;

.field private static K:Lcom/android/internal/telephony/CommandsInterface;

.field private static L:Lcom/android/internal/telephony/CommandsInterface;

.field private static M:Z

.field private static N:Lcom/android/internal/telephony/PhoneNotifier;

.field private static O:Lcom/android/internal/telephony/PhoneNotifier;

.field private static P:Landroid/os/Looper;

.field private static Q:Landroid/content/Context;

.field private static R:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static S:I

.field static T:I

.field static final U:Z

.field private static V:Lcom/android/internal/telephony/gsm/LteDcPhone;

.field private static mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 94
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 95
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    .line 96
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->K:Lcom/android/internal/telephony/CommandsInterface;

    .line 97
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->L:Lcom/android/internal/telephony/CommandsInterface;

    .line 99
    sput-boolean v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->M:Z

    .line 107
    sput v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:I

    .line 111
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteDcSupport()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Z

    .line 113
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;III)V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 379
    if-nez p1, :cond_0

    .line 380
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 381
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    .line 383
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 384
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 386
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 387
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 390
    new-instance v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v2, v3, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 391
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating EVDO GeminiPhone with CDMA as Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-void

    .line 393
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 394
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    .line 395
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 396
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 397
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 398
    new-instance v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 401
    new-instance v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v2, v3, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 402
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating EVDO GeminiPhone with CDMA as Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;III)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 415
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode_2"

    sget v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 418
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network Mode 2 set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v3, Lcom/android/internal/telephony/RIL;

    invoke-direct {v3, p0, p3, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 420
    new-instance v3, Lcom/android/internal/telephony/RIL;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    .line 435
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 436
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 437
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v3, v4, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 439
    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 442
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v4, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v3, v4, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 444
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating GSM GeminiPhone with default phone at Phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 446
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 447
    return-void

    .line 422
    :cond_0
    const-string v0, "com.mtk.3G_SWITCH"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 423
    const-string v0, "gsm.3gswitch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    .line 424
    :goto_1
    const-string v4, "3G_SIM_ID"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 425
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initiate 3G Sim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-nez v0, :cond_2

    .line 428
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 429
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 423
    goto :goto_1

    .line 431
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 432
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    goto/16 :goto_0
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 494
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 496
    monitor-exit v1

    return-object v0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 514
    sget-object v3, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v3

    .line 515
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    .line 518
    :goto_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    .line 520
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v2, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 521
    monitor-exit v3

    .line 524
    :goto_2
    return-object v0

    .line 516
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    goto :goto_0

    .line 518
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    goto :goto_1

    .line 523
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 524
    monitor-exit v3

    goto :goto_2

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 501
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 503
    monitor-exit v1

    return-object v0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 530
    sget-object v3, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v3

    .line 531
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    .line 534
    :goto_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    .line 536
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 537
    monitor-exit v3

    .line 540
    :goto_2
    return-object v0

    .line 532
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    goto :goto_0

    .line 534
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    goto :goto_1

    .line 539
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 540
    monitor-exit v3

    goto :goto_2

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getLteDcPhone()Lcom/android/internal/telephony/gsm/LteDcPhone;
    .locals 1

    .prologue
    .line 548
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/gsm/LteDcPhone;

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 2

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 456
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 473
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 466
    goto :goto_0

    .line 471
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 3

    .prologue
    .line 508
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getWorldPhone()Lcom/mediatek/common/telephony/IWorldPhone;
    .locals 2

    .prologue
    .line 552
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    if-nez v0, :cond_0

    .line 553
    const-string v0, "PHONE"

    const-string v1, "mWorldPhone is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    return-object v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 16

    .prologue
    const/4 v11, -0x1

    const/4 v15, 0x2

    const/4 v14, 0x3

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 121
    const-class v10, Lcom/android/internal/telephony/Phone;

    monitor-enter v10

    .line 122
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->M:Z

    if-nez v1, :cond_6

    .line 123
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->P:Landroid/os/Looper;

    .line 124
    sput-object p0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    .line 126
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->P:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 131
    :cond_0
    :try_start_1
    const-string v1, "persist.service.conn.looper"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x3

    const-string v5, "PHONE"

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v1, v9

    .line 139
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 144
    :try_start_2
    new-instance v3, Landroid/net/LocalServerSocket;

    const-string v4, "com.android.internal.telephony"

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v9

    .line 149
    :goto_1
    if-nez v3, :cond_7

    .line 161
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    .line 163
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 164
    const/4 v1, 0x7

    sput v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:I

    .line 167
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 169
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network Mode set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    const-string v3, "gsm.mmdc.network.mode"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_3
    const-string v3, "persist.radio.default_sim_mode"

    sget v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->S:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 180
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gemini Network Mode set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v5

    .line 183
    const-string v3, "PHONE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cdma Subscription set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v3, "com.mtk.3G_SWITCH"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 188
    const-string v3, "gsm.3gswitch"

    const/4 v7, 0x1

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v15, :cond_9

    move v3, v2

    .line 189
    :goto_2
    const-string v7, "3G_SIM_ID"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 190
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initiate 3G Sim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {v4}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getPhoneType(I)I

    move-result v4

    .line 193
    if-ne v4, v2, :cond_a

    .line 194
    new-instance v2, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 195
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 196
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 197
    const-string v1, "PHONE"

    const-string v2, "Creating GSMPhone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Z

    if-eqz v1, :cond_4

    .line 201
    new-instance v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const-string v2, "LteDc"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance v2, Lcom/android/internal/telephony/gsm/LteDcPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getLteDcManager()Lcom/android/internal/telephony/LteDcManager;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v1}, Lcom/android/internal/telephony/gsm/LteDcPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/gsm/LteDcPhone;

    .line 351
    :cond_4
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 354
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isWorldPhone()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    :try_start_4
    const-class v1, Lcom/mediatek/common/telephony/IWorldPhone;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IWorldPhone;

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    .line 357
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorldPhoneWrapper created mWorldPhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    :cond_5
    :goto_4
    const/4 v1, 0x1

    :try_start_5
    sput-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->M:Z

    .line 367
    :cond_6
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->R:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 370
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->R:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->updateRegistryCellLocation()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 375
    :goto_5
    :try_start_7
    monitor-exit v10

    .line 376
    return-void

    .line 145
    :catch_0
    move-exception v3

    move v3, v2

    .line 146
    goto/16 :goto_1

    .line 151
    :cond_7
    if-le v1, v14, :cond_8

    .line 152
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory probably already running"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 155
    :cond_8
    const-wide/16 v3, 0x7d0

    :try_start_8
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 156
    :catch_1
    move-exception v3

    goto/16 :goto_0

    :cond_9
    move v3, v9

    .line 188
    goto/16 :goto_2

    .line 204
    :cond_a
    if-ne v4, v15, :cond_b

    .line 205
    :try_start_9
    new-instance v2, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 206
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 207
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 208
    const-string v1, "PHONE"

    const-string v2, "Creating CDMAPhone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 209
    :cond_b
    const/4 v6, 0x4

    if-ne v4, v6, :cond_4

    .line 210
    new-instance v4, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    sput-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    .line 211
    new-instance v7, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v4, 0x2

    invoke-direct {v7, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    .line 212
    new-instance v8, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v4, 0x3

    invoke-direct {v8, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 216
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 218
    const-string v3, "persist.radio.default_sim"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 219
    if-ne v3, v11, :cond_1b

    .line 220
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v3

    if-nez v3, :cond_c

    move v2, v9

    .line 227
    :cond_c
    const-string v3, "persist.radio.default_sim"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_6
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Default Phone as SIM"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " during first boot-up (EVDO DT)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v1}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a(Landroid/content/Context;III)V

    .line 340
    :cond_d
    :goto_7
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    move-result-object v2

    .line 342
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 343
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 344
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v1, v14, :cond_e

    .line 345
    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 346
    :cond_e
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x4

    if-lt v1, v3, :cond_4

    .line 347
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    goto/16 :goto_3

    .line 234
    :cond_f
    const-string v2, "persist.radio.default_sim"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 235
    if-ne v2, v11, :cond_1a

    .line 237
    const/4 v2, 0x0

    .line 238
    const-string v3, "persist.radio.default_sim"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_8
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Default Phone as SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " during first boot-up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p0

    invoke-static {v0, v9, v5, v1}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b(Landroid/content/Context;III)V

    goto :goto_7

    .line 247
    :cond_10
    const-string v4, "persist.radio.default_sim"

    const/4 v6, -0x1

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 248
    if-ne v6, v11, :cond_11

    .line 250
    const/4 v4, 0x0

    .line 251
    const-string v6, "persist.radio.default_sim"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v9

    .line 253
    :cond_11
    const-string v4, "PHONE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set Default Phone as SIM"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " during first boot-up"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v4, v4, [I

    .line 257
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 258
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v11, "preferred_network_mode_2"

    sget v12, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:I

    invoke-static {v3, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 260
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    move v2, v3

    .line 269
    :goto_9
    :pswitch_0
    const-string v3, "PHONE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Network Mode 2 set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v3, Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1, v5, v11}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 271
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    .line 285
    :goto_a
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 286
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 289
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v11, v1, [Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 292
    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v12, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 294
    const/4 v1, 0x1

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v12, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 297
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v1, v15, :cond_12

    .line 298
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-direct {v3, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 302
    :cond_12
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v1, v14, :cond_14

    .line 303
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x2

    aget v2, v4, v2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->K:Lcom/android/internal/telephony/CommandsInterface;

    .line 305
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->K:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 307
    const/4 v1, 0x2

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->K:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v7, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 310
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v1, v14, :cond_13

    .line 311
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-direct {v3, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v12, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v2, v3, v12, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 315
    :cond_13
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_14

    .line 316
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x3

    aget v2, v4, v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->L:Lcom/android/internal/telephony/CommandsInterface;

    .line 318
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->L:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 320
    const/4 v1, 0x3

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->L:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v8, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 323
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v4, 0x1

    aget-object v4, v11, v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v4, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v5, 0x2

    aget-object v5, v11, v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v5, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v12, 0x3

    aget-object v12, v11, v12

    invoke-direct {v5, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 328
    :cond_14
    const-string v1, "PHONE"

    const-string v2, "Creating GeminiPhone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    .line 330
    :goto_b
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v1, :cond_d

    move v1, v9

    .line 331
    :goto_c
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v3, :cond_19

    .line 332
    if-eq v1, v2, :cond_15

    .line 333
    aget-object v3, v11, v2

    aget-object v4, v11, v1

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhones(Lcom/android/internal/telephony/gsm/GSMPhone;I)V

    .line 331
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :pswitch_1
    move v1, v2

    .line 262
    goto/16 :goto_9

    :cond_16
    move v2, v9

    .line 273
    :goto_d
    sget v11, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v11, :cond_18

    .line 274
    if-ne v3, v2, :cond_17

    .line 275
    aput v1, v4, v2

    .line 273
    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 277
    :cond_17
    const/4 v11, 0x1

    aput v11, v4, v2

    goto :goto_e

    .line 281
    :cond_18
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 282
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    goto/16 :goto_a

    .line 330
    :cond_19
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b

    .line 358
    :catch_2
    move-exception v1

    .line 359
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 371
    :catch_3
    move-exception v1

    goto/16 :goto_5

    :cond_1a
    move v9, v2

    goto/16 :goto_8

    :cond_1b
    move v2, v3

    goto/16 :goto_6

    .line 260
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static makeDefaultPhone(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 116
    sput p1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->S:I

    .line 117
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.class public Lcom/android/internal/telephony/PsArbitrator;
.super Landroid/os/Handler;
.source "PsArbitrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final BASE:I = 0x49000

.field private static final CMD_TO_STRING_COUNT:I = 0x13

.field protected static final DBG:Z = true

.field public static final EVENT_FLIGHT_MODE_OFF:I = 0x4900f

.field public static final EVENT_FLIGHT_MODE_ON:I = 0x4900e

.field public static final EVENT_PS_DECISION_CHANGED:I = 0x49000

.field public static final EVENT_PS_DECISION_PDP:I = 0x49012

.field public static final EVENT_PS_QUERY_PSDM:I = 0x49007

.field public static final EVENT_PS_SWITCH:I = 0x49001

.field public static final EVENT_PS_SWITCH_ATTACH:I = 0x49003

.field public static final EVENT_PS_SWITCH_CONFIRM:I = 0x49002

.field public static final EVENT_PS_SWITCH_DONE:I = 0x49005

.field public static final EVENT_PS_SWITCH_REJECT:I = 0x49011

.field public static final EVENT_RADIO_AVAILABLE_GSM:I = 0x4900c

.field public static final EVENT_RADIO_AVAILABLE_LTE:I = 0x4900a

.field public static final EVENT_RADIO_NOT_AVAILABLE_GSM:I = 0x4900d

.field public static final EVENT_RADIO_NOT_AVAILABLE_LTE:I = 0x4900b

.field public static final EVENT_SET_RAT_DETACH:I = 0x49008

.field public static final EVENT_SET_RAT_RESET_GPRS_MODE:I = 0x49009

.field public static final EVENT_SPECIAL_BAND_CHANGED:I = 0x49010

.field public static final EVENT_SWITCH_RESET_GPRS_MODE:I = 0x49004

.field public static final EVENT_SYNC_DATA_CALL_LIST:I = 0x49006

.field private static final LOG_TAG:Ljava/lang/String; = "PsArbitrator"

.field private static final MMDC_PSD_SWITCH_CAUSE_MANUAL_SELECTION:I = 0x1

.field private static final MMDC_PSD_SWITCH_CAUSE_NC0:I = 0x2

.field private static final MMDC_PSD_SWITCH_CAUSE_PSDM:I = 0x0

.field private static final MMDC_PSD_SWITCH_CAUSE_UNKNOWN:I = 0xff

.field public static final PSD_DECISION_AP:I = 0x2

.field public static final PSD_DECISION_OK:I = 0x1

.field public static final PSD_DECISION_REJECT:I = 0x0

.field private static final PS_DETACH_RETRY:I = 0x5

.field public static final PS_MODE_GSM:I = 0x0

.field public static final PS_MODE_LTE:I = 0x2

.field public static final PS_MODE_NONE:I = 0xff

.field public static final PS_MODE_UMTS:I = 0x1

.field public static final PS_PREFERRD_LTE:I = 0x0

.field public static final PS_PREFERRD_QUALITY:I = 0x1

.field public static final PS_PROTOCOL_1:I = 0x0

.field public static final PS_PROTOCOL_2:I = 0x1

.field private static final SM_NAME:Ljava/lang/String; = "PsArbitrator"

.field protected static final VDBG:Z

.field private static mIsSwitching:Z

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private isTurnOffLteBefore:Z

.field private mCurrentPsMode:I

.field private mDecisionPsMode:I

.field private mDetachRetry:I

.field private mDispatchProtocol:I

.field private mInitDone:Z

.field private mIsAcceptPsdmSwitch:Z

.field private mIsBandReattach:Z

.field private mIsInDecisionFlow:Z

.field private mIsQueueEpsd:Z

.field protected mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

.field private mLteModemOn:Z

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mQueueCause:I

.field private mQueueDecision:I

.field private mRat:I

.field protected mRil:Lcom/android/internal/telephony/RIL;

.field private mUserDataEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    .line 139
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_PS_DECISION_CHANGED"

    aput-object v1, v0, v3

    .line 140
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "EVENT_PS_SWITCH"

    aput-object v2, v0, v1

    .line 141
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "EVENT_PS_SWITCH_CONFIRM"

    aput-object v2, v0, v1

    .line 142
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "EVENT_PS_SWITCH_ATTACH"

    aput-object v2, v0, v1

    .line 143
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "EVENT_SWITCH_RESET_GPRS_MODE"

    aput-object v2, v0, v1

    .line 144
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "EVENT_PS_SWITCH_DONE"

    aput-object v2, v0, v1

    .line 145
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "EVENT_SYNC_DATA_CALL_LIST"

    aput-object v2, v0, v1

    .line 146
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "EVENT_PS_QUERY_PSDM"

    aput-object v2, v0, v1

    .line 147
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "EVENT_SET_RAT_DETACH"

    aput-object v2, v0, v1

    .line 148
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "EVENT_SET_RAT_RESET_GPRS_MODE"

    aput-object v2, v0, v1

    .line 149
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "EVENT_RADIO_AVAILABLE_LTE"

    aput-object v2, v0, v1

    .line 150
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "EVENT_RADIO_NOT_AVAILABLE_LTE"

    aput-object v2, v0, v1

    .line 151
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "EVENT_RADIO_AVAILABLE_GSM"

    aput-object v2, v0, v1

    .line 152
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "EVENT_RADIO_NOT_AVAILABLE_GSM"

    aput-object v2, v0, v1

    .line 153
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "EVENT_FLIGHT_MODE_ON"

    aput-object v2, v0, v1

    .line 154
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "EVENT_FLIGHT_MODE_OFF"

    aput-object v2, v0, v1

    .line 155
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "EVENT_SPECIAL_BAND_CHANGED"

    aput-object v2, v0, v1

    .line 156
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "EVENT_PS_SWITCH_REJECT"

    aput-object v2, v0, v1

    .line 157
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "EVENT_PS_DECISION_PDP"

    aput-object v2, v0, v1

    .line 176
    sput-boolean v3, Lcom/android/internal/telephony/PsArbitrator;->mIsSwitching:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/RIL;)V
    .locals 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "ril"    # Lcom/android/internal/telephony/RIL;

    .prologue
    const v5, 0x42036

    const/16 v4, 0xff

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    iput-object v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 164
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mInitDone:Z

    .line 171
    iput v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 172
    iput v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    .line 173
    iput v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mDispatchProtocol:I

    .line 174
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mUserDataEnabled:Z

    .line 175
    iput-boolean v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsAcceptPsdmSwitch:Z

    .line 177
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRat:I

    .line 178
    iput-boolean v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    .line 179
    iput v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mDetachRetry:I

    .line 180
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->isTurnOffLteBefore:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsBandReattach:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    .line 186
    iput v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueDecision:I

    .line 187
    iput v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueCause:I

    .line 212
    const-string v0, "PsArbitrator constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 214
    iput-object p2, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getLteDcManager()Lcom/android/internal/telephony/LteDcManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "PsArbitrator register PSDM decision change to RIL"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p0, v5, v2}, Lcom/android/internal/telephony/RIL;->registerForPsdmDecisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    if-eqz v0, :cond_1

    .line 224
    const-string v0, "PsArbitrator register PSDM decision change to LTEManager"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    invoke-virtual {v0, p0, v5, v2}, Lcom/android/internal/telephony/LteDcManager;->registerForPsdmDecisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    const v1, 0x4900a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/LteDcManager;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    const v1, 0x4900b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/LteDcManager;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->initBroadCastReceiver()V

    .line 235
    const-string v0, "PsArbitrator constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cmd"    # I

    .prologue
    .line 190
    const v0, 0x49000    # 4.19E-40f

    sub-int/2addr p0, v0

    .line 191
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 192
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private executeRilQueue()V
    .locals 2

    .prologue
    .line 665
    const-string v0, "switch done and execute Ril queue"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 666
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->setSwitchingState(Z)V

    .line 667
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v1, 0x49006

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->getDataCallList(Landroid/os/Message;)V

    .line 672
    return-void
.end method

.method public static getIsSwitching()Z
    .locals 1

    .prologue
    .line 318
    sget-boolean v0, Lcom/android/internal/telephony/PsArbitrator;->mIsSwitching:Z

    return v0
.end method

.method private initBroadCastReceiver()V
    .locals 3

    .prologue
    .line 853
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 854
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 856
    new-instance v1, Lcom/android/internal/telephony/PsArbitrator$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PsArbitrator$1;-><init>(Lcom/android/internal/telephony/PsArbitrator;)V

    .line 866
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    return-void
.end method

.method private onQueryDone(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 732
    const-string v0, "onQueryDone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 734
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 741
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 737
    iget v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 738
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decision = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onResetGprsModeDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x0

    .line 614
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 615
    const-string v2, "onResetGprsModeDone: exception; likely radio not available, ignore, but attach follow keep going"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 622
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 623
    .local v0, "protocol":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResetGprsModeDone: mDecision:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attach protocol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 624
    iget-object v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v3, 0x49005

    iget v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/RIL;->confirmPsSwitchAttach(ILandroid/os/Message;)V

    .line 631
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 632
    return-void

    .end local v0    # "protocol":I
    :cond_2
    move v0, v1

    .line 622
    goto :goto_0
.end method

.method private onSwitchPsAttachDone(Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 637
    return-void
.end method

.method private onSwitchPsConfirmDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x0

    .line 591
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 592
    const-string v2, "onSwitchPsConfirmDone: exception; likely radio not available, ignore; or EPSD return error, don\'t switch"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 595
    iget-object v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 596
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 597
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->executeRilQueue()V

    .line 609
    :goto_0
    return-void

    .line 602
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 605
    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    if-nez v2, :cond_1

    move v0, v1

    .line 606
    .local v0, "protocol":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchPsConfirmDone: mDecision:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reset protocol(peer decision):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 607
    iget-object v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v3, 0x49004

    iget v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/RIL;->resetModeAfterSwitch(ILandroid/os/Message;)V

    goto :goto_0

    .line 605
    .end local v0    # "protocol":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private onSwitchPsDone(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 645
    const-string v0, "onSwitchPsDone: exception; switch CGATT fail, ignore this fail"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 647
    iget-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    if-nez v0, :cond_0

    .line 648
    const-string v0, "no other command in process, set mIsSwitching to false"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 649
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->setSwitchingState(Z)V

    .line 650
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->executeRilQueue()V

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchPsDone: mCurrentPsMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->executeRilQueue()V

    goto :goto_0
.end method

.method private setProtocolSysProperty()V
    .locals 3

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "value":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 699
    :cond_0
    const-string v0, "0"

    .line 705
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProtocolSysProperty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 706
    const-string v1, "ril.epsd.protocol"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-void

    .line 700
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    if-nez v1, :cond_2

    .line 701
    const-string v0, "1"

    goto :goto_0

    .line 703
    :cond_2
    const-string v0, "-1"

    goto :goto_0
.end method

.method private setSwitchingState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 710
    sput-boolean p1, Lcom/android/internal/telephony/PsArbitrator;->mIsSwitching:Z

    .line 712
    if-eqz p1, :cond_0

    const-string v0, "1"

    .line 713
    .local v0, "value":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitching : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 715
    const-string v1, "ril.epsd.switching"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void

    .line 712
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private syncRilCurrentMode()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    iput v1, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync to Ril: CurrentPsMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method private syncRilDecisionMode()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    iput v1, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync to Ril: DecisionPsMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 689
    return-void
.end method


# virtual methods
.method public clearSettings()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 747
    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 749
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 750
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 751
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mUserDataEnabled:Z

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsAcceptPsdmSwitch:Z

    .line 753
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->setSwitchingState(Z)V

    .line 755
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 756
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    .line 758
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 760
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 250
    const-string v0, "PsArbitrator.dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RIL;->unregisterForPsdmDecisionChanged(Landroid/os/Handler;)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LteDcManager;->unregisterForPsdmDecisionChanged(Landroid/os/Handler;)V

    .line 255
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->dispose()V

    .line 247
    return-void
.end method

.method public getCurrentPsMode()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    return v0
.end method

.method public getDecisionPsMode()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    return v0
.end method

.method public getDispatchProtocol()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mDispatchProtocol:I

    return v0
.end method

.method public getLteModemOn()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    return v0
.end method

.method public getRil()Lcom/android/internal/telephony/RIL;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    return-object v0
.end method

.method public getUsingProtocol()I
    .locals 3

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, "protocol":I
    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 294
    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    .line 296
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "info":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/PsArbitrator;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PsArbitrator handleMessage msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 767
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 846
    const-string v2, "Unexpect!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 850
    :goto_0
    return-void

    .line 770
    :sswitch_0
    const-string v2, "EVENT_PSDM_DECISION_CHANGED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 771
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onDecisionChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 775
    :sswitch_1
    const-string v2, "EVENT_PSDM_DECISION_CHANGED done"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 776
    iput-boolean v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsBandReattach:Z

    goto :goto_0

    .line 781
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onLteRadioOff(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 786
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onLteRadioOn(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 791
    :sswitch_4
    const-string v2, "EVENT_PS_SWITCH_CONFIRM done"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 792
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onSwitchPsConfirmDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 797
    :sswitch_5
    const-string v2, "EVENT_PS_SWITCH_ATTACH done"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 798
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onSwitchPsAttachDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 803
    :sswitch_6
    const-string v2, "EVENT_SWITCH_RESET_GPRS_MODE done"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 804
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onResetGprsModeDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 809
    :sswitch_7
    const-string v2, "EVENT_PS_SWITCH_DONE"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 810
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onSwitchPsDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 816
    :sswitch_8
    iget-object v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/RIL;->SyncNotifyDataCallList(Landroid/os/AsyncResult;)V

    .line 818
    iget-boolean v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    if-eqz v2, :cond_0

    .line 819
    const-string v2, "EVENT_SYNC_DATA_CALL_LIST done, wait for next decision end, will executeMmdcDataCmdsQueue"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 820
    const v2, 0x49012

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 822
    :cond_0
    const-string v2, "EVENT_SYNC_DATA_CALL_LIST done, then trigger Ril executeMmdcDataCmdsQueue"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 823
    iput-boolean v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 824
    iget-object v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->executeMmdcDataCmdsQueue()V

    goto/16 :goto_0

    .line 830
    :sswitch_9
    const-string v2, "EVENT_PS_SWITCH_REJECT done, wait for next EPSD"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 834
    :sswitch_a
    const-string v2, "EVENT_PS_DECISION_POP, wait for next EPSD"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 835
    const/4 v2, 0x2

    new-array v0, v2, [I

    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueDecision:I

    aput v2, v0, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueCause:I

    aput v3, v0, v2

    .line 836
    .local v0, "result":[I
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v5, v0, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 837
    .local v1, "tmpAr":Landroid/os/AsyncResult;
    iput-boolean v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 838
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->onDecisionChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 842
    .end local v0    # "result":[I
    .end local v1    # "tmpAr":Landroid/os/AsyncResult;
    :sswitch_b
    const-string v2, "EVENT_PS_QUERY_PSDM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 843
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onQueryDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 767
    nop

    :sswitch_data_0
    .sparse-switch
        0x42036 -> :sswitch_0
        0x49002 -> :sswitch_4
        0x49003 -> :sswitch_5
        0x49004 -> :sswitch_6
        0x49005 -> :sswitch_7
        0x49006 -> :sswitch_8
        0x49007 -> :sswitch_b
        0x4900a -> :sswitch_3
        0x4900b -> :sswitch_2
        0x49010 -> :sswitch_1
        0x49011 -> :sswitch_9
        0x49012 -> :sswitch_a
    .end sparse-switch
.end method

.method public isAcceptPsdmSwitch()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsAcceptPsdmSwitch:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 876
    const-string v0, "PsArbitrator"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void
.end method

.method protected onDecisionChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v11, 0x49002

    const/4 v10, -0x1

    const/16 v9, 0xff

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 377
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v5

    const/4 v8, 0x6

    if-ne v5, v8, :cond_0

    .line 379
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 380
    const-string v5, "onDecisionChanged(ar): exception; likely radio not available, ignore"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    iput-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 386
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "mobile_data"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mUserDataEnabled:Z

    .line 388
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "preferred_network_mode"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRat:I

    .line 390
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    if-eq v5, v9, :cond_3

    move v1, v6

    .line 391
    .local v1, "isNowHasPs":Z
    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 392
    .local v2, "newDecision":I
    const/4 v0, 0x0

    .line 399
    .local v0, "cause":I
    iget-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    if-eqz v5, :cond_4

    .line 400
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v7

    iput v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueDecision:I

    .line 401
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v6

    iput v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueCause:I

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDecisionChanged(ar): queue this Decision:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueDecision:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", cause:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueCause:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 403
    iput-boolean v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    goto :goto_0

    .end local v0    # "cause":I
    .end local v1    # "isNowHasPs":Z
    .end local v2    # "newDecision":I
    :cond_2
    move v5, v7

    .line 386
    goto :goto_1

    :cond_3
    move v1, v7

    .line 390
    goto :goto_2

    .line 407
    .restart local v0    # "cause":I
    .restart local v1    # "isNowHasPs":Z
    .restart local v2    # "newDecision":I
    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 408
    const-string v5, "onDecisionChanged(ar): start"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 414
    iget-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    if-eqz v5, :cond_b

    .line 415
    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueDecision:I

    .line 416
    iget v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueCause:I

    .line 417
    const-string v5, "Pop Queue Decision"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 418
    iput-boolean v7, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    .line 426
    :goto_3
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    if-nez v5, :cond_c

    move v4, v6

    .line 427
    .local v4, "oldProtocol":I
    :goto_4
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    if-ne v5, v9, :cond_5

    const/4 v4, -0x1

    .line 428
    :cond_5
    if-nez v2, :cond_d

    move v3, v6

    .line 429
    .local v3, "newProtocol":I
    :goto_5
    if-ne v2, v9, :cond_6

    const/4 v3, -0x1

    .line 431
    :cond_6
    if-nez v3, :cond_7

    iput-boolean v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    .line 432
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRat:I

    if-ne v5, v6, :cond_8

    iput-boolean v7, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    .line 434
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current mode = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", old decision = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New decision = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", cause : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New Protocol / old Protocol: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUserDataEnabled: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mUserDataEnabled:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "mLteModemOn: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 444
    iget-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsBandReattach:Z

    if-eqz v5, :cond_e

    .line 445
    const-string v5, "B3/B39 reattach, reject this epsd"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 446
    if-ne v4, v10, :cond_9

    move v4, v6

    .end local v4    # "oldProtocol":I
    :cond_9
    iput v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mDispatchProtocol:I

    .line 447
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRat:I

    if-ne v5, v6, :cond_a

    .line 449
    iput v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mDispatchProtocol:I

    .line 451
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v6, 0x49011

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {p0, v6, v8, v7}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v2, v6}, Lcom/android/internal/telephony/RIL;->confirmPsSwitch(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 421
    .end local v3    # "newProtocol":I
    :cond_b
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v2, v5, v7

    .line 422
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v0, v5, v6

    goto/16 :goto_3

    :cond_c
    move v4, v7

    .line 426
    goto/16 :goto_4

    .restart local v4    # "oldProtocol":I
    :cond_d
    move v3, v7

    .line 428
    goto/16 :goto_5

    .line 458
    .restart local v3    # "newProtocol":I
    :cond_e
    if-ne v3, v4, :cond_10

    if-eqz v1, :cond_10

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C1]newDecision/currentPs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", no need to switch!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 465
    const-string v5, "[C1]3/4G interRat, no need to switch"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 466
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 467
    invoke-virtual {p0, v2, v7}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 469
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 471
    iget-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    if-eqz v5, :cond_f

    .line 472
    const-string v5, "Next decision to be handled"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 473
    const v5, 0x49012

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 475
    :cond_f
    const-string v5, "EVENT_SYNC_DATA_CALL_LIST done, then trigger Ril executeMmdcDataCmdsQueue"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 476
    iput-boolean v7, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 477
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->executeMmdcDataCmdsQueue()V

    goto/16 :goto_0

    .line 482
    :cond_10
    if-eq v3, v4, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->isAcceptPsdmSwitch()Z

    move-result v5

    if-nez v5, :cond_11

    if-ne v0, v6, :cond_16

    .line 497
    :cond_11
    if-eqz v1, :cond_14

    .line 502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[C2]newDecision/currentPs:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", need to switch!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 503
    const-string v5, "[C2]Normal switch case"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PsArbitrator;->setSwitchingState(Z)V

    .line 507
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 509
    if-ne v4, v10, :cond_12

    move v4, v6

    .end local v4    # "oldProtocol":I
    :cond_12
    iput v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mDispatchProtocol:I

    .line 511
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRat:I

    if-ne v5, v6, :cond_13

    .line 513
    iput v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mDispatchProtocol:I

    .line 516
    :cond_13
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {p0, v11, v8, v7}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7}, Lcom/android/internal/telephony/RIL;->confirmPsSwitch(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 521
    .restart local v4    # "oldProtocol":I
    :cond_14
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    if-ne v5, v9, :cond_15

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[C3]newDecision/currentPs:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", need to switch!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 528
    const-string v5, "[C3]Data Enable case"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PsArbitrator;->setSwitchingState(Z)V

    .line 531
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 532
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 534
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->executeRilQueue()V

    goto/16 :goto_0

    .line 540
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C4]newDecision/currentPs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", need to switch!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 541
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    goto/16 :goto_0

    .line 545
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->isAcceptPsdmSwitch()Z

    move-result v5

    if-nez v5, :cond_19

    if-eq v0, v6, :cond_19

    .line 548
    const-string v5, "[C5]Reject the PSDM switch suggestion!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 550
    if-ne v4, v10, :cond_17

    move v4, v6

    .end local v4    # "oldProtocol":I
    :cond_17
    iput v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mDispatchProtocol:I

    .line 551
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRat:I

    if-ne v5, v6, :cond_18

    .line 553
    iput v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mDispatchProtocol:I

    .line 555
    :cond_18
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    iget v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {p0, v11, v6, v7}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v2, v6}, Lcom/android/internal/telephony/RIL;->confirmPsSwitch(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 559
    .restart local v4    # "oldProtocol":I
    :cond_19
    iget-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mUserDataEnabled:Z

    if-eqz v5, :cond_1a

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[C6]newDecision/currentPs:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", need to switch!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 566
    const-string v5, "[C6]Data Enable case"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PsArbitrator;->setSwitchingState(Z)V

    .line 569
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 570
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 571
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->executeRilQueue()V

    goto/16 :goto_0

    .line 576
    :cond_1a
    const-string v5, "[C7]No Ps now"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 577
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    goto/16 :goto_0
.end method

.method protected onLteRadioOff(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x0

    .line 259
    const-string v0, "Radio 1 off reset Ps Arbitrator state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 260
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    .line 263
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 264
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilDecisionMode()V

    .line 266
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 267
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    .line 268
    return-void
.end method

.method protected onLteRadioOn(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 271
    const-string v0, "Radio 1 on reset Ps Arbitrator state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    .line 273
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public setAcceptPsdmSwitch(Z)V
    .locals 2
    .param p1, "accept"    # Z

    .prologue
    .line 726
    const-string v0, "setAcceptPsdmSwitch E, mIsAcceptPsdmSwitch"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 727
    iput-boolean p1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsAcceptPsdmSwitch:Z

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAcceptPsdmSwitch X, mIsAcceptPsdmSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsAcceptPsdmSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public setApDecisionPsMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ap set decision to PSDM: DecisionPSMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CurrentPsMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    const v2, 0x49002

    iget v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->confirmPsSwitch(IILandroid/os/Message;)V

    .line 347
    return-void
.end method

.method public setPsReattach()V
    .locals 2

    .prologue
    .line 325
    sget-boolean v0, Lcom/android/internal/telephony/PsArbitrator;->mIsSwitching:Z

    if-nez v0, :cond_0

    .line 326
    const-string v0, "send EVENT_SPECIAL_BAND_CHANGED to reattach"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v1, 0x49010

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->requestPsReattach(Landroid/os/Message;)V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsBandReattach:Z

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v0, "Ignore EVENT_SPECIAL_BAND_CHANGED when switching"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncRilPsMode()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    iput v1, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    iput v1, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync to Ril: DecisionPsMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CurrentPsMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PsArbitrator]targetRat/currentRat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "ps_state":Ljava/lang/String;
    return-object v0
.end method

.method public updateCurrentPsMode(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "sync"    # Z

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCurrentPsMode: new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 359
    iput p1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    .line 360
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->setProtocolSysProperty()V

    .line 362
    if-eqz p2, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 366
    :cond_0
    return-void
.end method

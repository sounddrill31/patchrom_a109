.class Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScriManager"
.end annotation


# static fields
.field protected static final DBG:Z = true

.field public static final SCRI_2G:I = 0x2

.field public static final SCRI_3G:I = 0x1

.field public static final SCRI_CS_SESSION_ONGOING:I = 0x1

.field public static final SCRI_MAX_RETRY_COUNTER:I = 0x3

.field public static final SCRI_MAX_RETRY_TIMERS:I = 0x7530

.field public static final SCRI_NONE:I = 0x0

.field public static final SCRI_NOT_ALLOWED:I = 0x5

.field public static final SCRI_NO_PS_DATA_SESSION:I = 0x3

.field public static final SCRI_PS_SIGNALLING_ONGOING:I = 0x2

.field public static final SCRI_RAU_ENABLED:I = 0x6

.field public static final SCRI_REQ_NOT_SENT:I = 0x4

.field public static final SCRI_RESULT_REQ_SENT:I = 0x0

.field public static final STATE_ACTIVATED:I = 0x2

.field public static final STATE_ACTIVIATING:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_RETRY:I = 0x3


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field public mFirstESCRIRAUFollowOnProceed:Z

.field private mGuardTimerExpired:Z

.field private mNwType:I

.field public mPeriodicRAUFollowOnProceedEnable:Z

.field private mPsSession:Z

.field private mScriAddCounter:I

.field private mScriDataCounter:I

.field public mScriGuardTimer:I

.field private mScriNeeded:Z

.field public mScriPollTimer:I

.field public mScriRetryCounter:I

.field public mScriRetryTimer:I

.field private mScriState:I

.field public mScriTriggerDataCounter:I

.field public mScriTriggerDataOffCounter:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4059
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4047
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPeriodicRAUFollowOnProceedEnable:Z

    .line 4048
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mFirstESCRIRAUFollowOnProceed:Z

    .line 4057
    const-string v0, "GSM"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->LOG_TAG:Ljava/lang/String;

    .line 4060
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriGuardTimer:I

    .line 4061
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriPollTimer:I

    .line 4062
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    .line 4063
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryTimer:I

    .line 4064
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriAddCounter:I

    .line 4065
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataCounter:I

    .line 4066
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataOffCounter:I

    .line 4067
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryCounter:I

    .line 4068
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPsSession:Z

    .line 4070
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriNeeded:Z

    .line 4071
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mGuardTimerExpired:Z

    .line 4072
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriState:I

    .line 4074
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mNwType:I

    .line 4075
    return-void
.end method


# virtual methods
.method public getPsSessionStatus()Z
    .locals 1

    .prologue
    .line 4153
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPsSession:Z

    return v0
.end method

.method public getScriNwType(I)I
    .locals 4
    .param p1, "networktype"    # I

    .prologue
    .line 4174
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SCRI]getScriNwType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    const/4 v0, 0x0

    .line 4177
    .local v0, "nwType":I
    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    .line 4178
    const/4 v0, 0x1

    .line 4186
    :goto_0
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mNwType:I

    if-eq v1, v0, :cond_3

    .line 4188
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mNwType:I

    .line 4193
    :goto_1
    return v0

    .line 4179
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 4180
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 4182
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 4190
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getScriState()I
    .locals 1

    .prologue
    .line 4142
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriState:I

    return v0
.end method

.method public isDataTransmitting()Z
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 4198
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v7, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriTxPkts:J

    .local v7, "preTxPkts":J
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v5, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriRxPkts:J

    .line 4200
    .local v5, "preRxPkts":J
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4201
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 4203
    .local v0, "curTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTxRxSum()V

    .line 4204
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v10, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iput-wide v10, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriTxPkts:J

    .line 4205
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v10, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iput-wide v10, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriRxPkts:J

    .line 4211
    .end local v0    # "curTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    :goto_0
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SCRI]tx: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v11, v11, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriTxPkts:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SCRI]rx  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v11, v11, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriRxPkts:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v9, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriTxPkts:J

    sub-long v3, v9, v7

    .line 4215
    .local v3, "deltaTx":J
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-wide v9, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriRxPkts:J

    sub-long v1, v9, v5

    .line 4216
    .local v1, "deltaRx":J
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SCRI]delta rx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    cmp-long v9, v3, v13

    if-gtz v9, :cond_0

    cmp-long v9, v1, v13

    if-lez v9, :cond_2

    :cond_0
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 4207
    .end local v1    # "deltaRx":J
    .end local v3    # "deltaTx":J
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriTxPkts:J

    .line 4208
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriRxPkts:J

    goto/16 :goto_0

    .line 4218
    .restart local v1    # "deltaRx":J
    .restart local v3    # "deltaTx":J
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public isPollTimerTrigger(Z)Z
    .locals 4
    .param p1, "isScreenOn"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4166
    if-eqz p1, :cond_2

    .line 4167
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataCounter:I

    if-lt v2, v3, :cond_1

    .line 4169
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 4167
    goto :goto_0

    .line 4169
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataOffCounter:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4127
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriNeeded:Z

    .line 4128
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mGuardTimerExpired:Z

    .line 4129
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPsSession:Z

    .line 4130
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryCounter:I

    .line 4131
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriState:I

    .line 4132
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    .line 4133
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriPollTimer:I

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriAddCounter:I

    .line 4134
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->setScriTimer()V

    .line 4135
    return-void
.end method

.method public setPsSessionStatus(Z)V
    .locals 1
    .param p1, "hasPsSession"    # Z

    .prologue
    .line 4146
    if-eqz p1, :cond_0

    .line 4147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryCounter:I

    .line 4149
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPsSession:Z

    .line 4150
    return-void
.end method

.method public setScriDataCount(Z)V
    .locals 3
    .param p1, "reset"    # Z

    .prologue
    .line 4157
    if-nez p1, :cond_0

    .line 4158
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriAddCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    .line 4162
    :goto_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SCRI]setScriDataCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4163
    return-void

    .line 4160
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriDataCounter:I

    goto :goto_0
.end method

.method public setScriState(I)V
    .locals 0
    .param p1, "scriState"    # I

    .prologue
    .line 4138
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriState:I

    .line 4139
    return-void
.end method

.method public setScriTimer()V
    .locals 9

    .prologue
    const/16 v8, 0x258

    const/16 v5, 0xe10

    const/16 v7, 0x14

    const/4 v6, 0x5

    .line 4079
    const/4 v1, 0x0

    .line 4080
    .local v1, "str":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4084
    .local v2, "val":Ljava/lang/Integer;
    :try_start_0
    const-string v3, "persist.radio.fd.guard.timer"

    const-string v4, "60"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4085
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4086
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v5, :cond_1

    :cond_0
    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4087
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriGuardTimer:I

    .line 4090
    const-string v3, "persist.radio.fd.poll.timer"

    const-string v4, "5"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4091
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4092
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v8, :cond_3

    :cond_2
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4093
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriAddCounter:I

    .line 4094
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriPollTimer:I

    .line 4097
    const-string v3, "persist.radio.fd.counter"

    const-string v4, "20"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4098
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4099
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v5, :cond_5

    :cond_4
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4100
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataCounter:I

    .line 4103
    const-string v3, "persist.radio.fd.off.counter"

    const-string v4, "20"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4104
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4105
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v5, :cond_7

    :cond_6
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4106
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataOffCounter:I

    .line 4109
    const-string v3, "persist.radio.fd.retry.timer"

    const-string v4, "20"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4110
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4111
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v8, :cond_9

    :cond_8
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4112
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryTimer:I

    .line 4114
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SCRI] init value ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriGuardTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriPollTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataOffCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4124
    :goto_0
    return-void

    .line 4115
    :catch_0
    move-exception v0

    .line 4116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4117
    const v3, 0xea60

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriGuardTimer:I

    .line 4118
    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriPollTimer:I

    .line 4119
    iput v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataCounter:I

    .line 4120
    iput v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriTriggerDataOffCounter:I

    .line 4121
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriRetryTimer:I

    .line 4122
    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriAddCounter:I

    goto :goto_0
.end method

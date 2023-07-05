.class public Lcom/android/internal/telephony/gsm/LteDcPhone;
.super Lcom/android/internal/telephony/gsm/GSMPhone;
.source "LteDcPhone.java"


# static fields
.field private static final LOCAL_DEBUG:Z = true

.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE_MMDC:I = 0x0

.field private static final MESSAGE_QUERY_AVAILABLE_NETWORK_MMDC:I = 0x2

.field private static final MESSAGE_SET_NW_MANUAL_COMPLETE_MMDC:I = 0x3

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE_MMDC:I = 0x1


# instance fields
.field private mNetworkType:I

.field private mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 99
    const-string v0, "LteDc"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 100
    const-string v0, "Create LteDcPhone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 108
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 111
    const-string v0, "setPhoneComponent() with mPeerGsmPhone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-interface {p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneComponent(Lcom/android/internal/telephony/Phone;)V

    .line 113
    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 300
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 302
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object v3, v4

    check-cast v3, Landroid/os/Message;

    .line 304
    .local v3, "response":Landroid/os/Message;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    .line 305
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v2, v4

    check-cast v2, [I

    .line 307
    .local v2, "modemNetworkMode":[I
    array-length v4, v2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 308
    aget v0, v2, v6

    .line 309
    .local v0, "P1NetworkType":I
    sparse-switch v0, :sswitch_data_0

    .line 386
    const-string v4, "RAT mode is not support"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGE(Ljava/lang/String;)V

    .line 387
    aput v0, v2, v6

    .line 388
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v3, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 396
    .end local v0    # "P1NetworkType":I
    .end local v2    # "modemNetworkMode":[I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 397
    return-void

    .line 314
    .restart local v0    # "P1NetworkType":I
    .restart local v2    # "modemNetworkMode":[I
    :sswitch_0
    aput v8, v2, v6

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 319
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 326
    :sswitch_1
    const/16 v4, 0x1f

    aput v4, v2, v6

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 331
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 338
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    aput v6, v2, v6

    .line 347
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 350
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 345
    :cond_1
    const/4 v4, 0x2

    aput v4, v2, v6

    goto :goto_1

    .line 356
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 359
    const/16 v4, 0x22

    aput v4, v2, v6

    .line 365
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 368
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 362
    :cond_2
    const/16 v4, 0xb

    aput v4, v2, v6

    goto :goto_2

    .line 373
    :sswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 374
    aput v8, v2, v6

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "and radio2 is on -> transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 382
    :goto_3
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 378
    :cond_3
    const/16 v4, 0xc

    aput v4, v2, v6

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "and radio2 is off -> transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto :goto_3

    .line 394
    .end local v0    # "P1NetworkType":I
    .end local v2    # "modemNetworkMode":[I
    :cond_4
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 309
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected LOGD(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 482
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method protected LOGE(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 472
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method protected LOGI(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 477
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method protected LOGW(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 487
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 118
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 459
    const-string v0, "LteDcPhone finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 445
    const-string v1, "before query available network, cleanup all data connections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 447
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 448
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 449
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->sendMessage(Landroid/os/Message;)Z

    .line 450
    return-void
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    const-string v0, "LteDc"

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 431
    .local v0, "mCurrentNetworkMode":I
    if-ne v0, v5, :cond_0

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferredNetworkType() mCurrentNetworkMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return GSM_ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 433
    new-array v1, v5, [I

    .line 434
    .local v1, "modemNetworkMode":[I
    aput v5, v1, v4

    .line 435
    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 436
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 440
    .end local v1    # "modemNetworkMode":[I
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    const-string v0, "handleMessage"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 138
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 146
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    goto :goto_0

    .line 152
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string v0, "Override - notifyDataConnection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 412
    const-string v0, "Override - notifyLocationChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public notifyOtaspChanged(I)V
    .locals 1
    .param p1, "otaspMode"    # I

    .prologue
    .line 407
    const-string v0, "Override - notifyOtaspChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 455
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeReferences()V

    .line 456
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 162
    const/4 v0, 0x1

    .line 163
    .local v0, "isNeedTurnOnRadio1":Z
    const/4 v1, 0x1

    .line 165
    .local v1, "isNeedTurnOnRadio2":Z
    const/4 v4, 0x0

    .line 169
    .local v4, "isRequestFromBootUpFlow":Z
    if-eqz p2, :cond_0

    iget v6, p2, Landroid/os/Message;->arg1:I

    if-ne v6, v10, :cond_1

    .line 170
    :cond_0
    const/4 v4, 0x1

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 178
    .local v5, "mCurrentNetworkMode":I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    const-string v6, "gsm.mmdc.network.mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPreferredNetworkTypeLteDc currentType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  networkType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 187
    sparse-switch p1, :sswitch_data_0

    .line 248
    const-string v6, "RAT mode is not support"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGE(Ljava/lang/String;)V

    .line 250
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    const-string v6, "gsm.mmdc.network.mode"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v4, 0x1

    .line 260
    :goto_0
    if-nez v4, :cond_c

    .line 261
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    .line 262
    .local v2, "isRadioOn1":Z
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    .line 264
    .local v3, "isRadioOn2":Z
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 265
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 266
    :cond_2
    const-string v6, "need to setRadioMode(MODE_DUAL_SIM) but need to sync with data service"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 268
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerForRatModeChanged(Landroid/os/Message;)V

    .line 297
    .end local v2    # "isRadioOn1":Z
    .end local v3    # "isRadioOn2":Z
    :cond_3
    :goto_1
    return-void

    .line 190
    :sswitch_0
    const/16 p1, 0x21

    .line 191
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 197
    :sswitch_1
    const/16 p1, 0x20

    .line 198
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 203
    :sswitch_2
    const/4 p1, 0x2

    .line 204
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 209
    :sswitch_3
    const/16 p1, 0x23

    .line 210
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 215
    :sswitch_4
    const/4 p1, 0x2

    .line 216
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 217
    const/4 v1, 0x0

    .line 218
    goto :goto_0

    .line 222
    :sswitch_5
    const/16 p1, 0xb

    .line 223
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 224
    const/4 v1, 0x0

    .line 225
    goto :goto_0

    .line 228
    :sswitch_6
    if-nez v4, :cond_4

    .line 229
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :cond_4
    if-nez p2, :cond_5

    .line 232
    const-string v6, "response is NULL"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_5
    if-ne v5, v10, :cond_6

    iget v6, p2, Landroid/os/Message;->arg1:I

    if-ne v6, v10, :cond_6

    .line 234
    const-string v6, "boot up with 2G only"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    const-string v6, "gsm.mmdc.network.mode"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v4, 0x1

    .line 242
    const-string v6, "exception on set to 2G only"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    .restart local v2    # "isRadioOn1":Z
    .restart local v3    # "isRadioOn2":Z
    :cond_7
    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    .line 274
    if-eqz v2, :cond_8

    if-eqz v3, :cond_3

    .line 275
    :cond_8
    const-string v6, "need ot setRadioMode(MODE_SIM1_ONLY) but need to sync with data service"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 277
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerForRatModeChanged(Landroid/os/Message;)V

    goto :goto_1

    .line 280
    :cond_9
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 282
    if-nez v2, :cond_a

    if-nez v3, :cond_b

    .line 283
    :cond_a
    const-string v6, "need ot switch mode to GSM_ONLY, but need to sync with data service"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 284
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v6, p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerForRatModeChanged(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 287
    :cond_b
    if-eqz p2, :cond_3

    .line 288
    const-string v6, "no need to change Radio Mode"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 289
    invoke-static {p2, v9, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 290
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 295
    .end local v2    # "isRadioOn1":Z
    .end local v3    # "isRadioOn2":Z
    :cond_c
    const-string v6, "RAT mode not support or in bootup flow"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_6
        0x2 -> :sswitch_4
        0x9 -> :sswitch_0
        0xb -> :sswitch_5
        0x1f -> :sswitch_1
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public updateSimIndicateState()V
    .locals 1

    .prologue
    .line 401
    const-string v0, "updateSimIndicateState"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 403
    return-void
.end method

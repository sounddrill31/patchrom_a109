.class Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MobileDataStateReceiver"
.end annotation


# instance fields
.field private mTrackerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/MobileDataStateTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/MobileDataStateTracker$1;

    .prologue
    .line 277
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public addTracker(Ljava/lang/String;Landroid/net/MobileDataStateTracker;)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "tracker"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 281
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobileDataStateReceiver add target tracker ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 289
    const-string v21, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, "apnName":Ljava/lang/String;
    const-string v21, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/MobileDataStateTracker;

    .line 292
    .local v20, "tracker":Landroid/net/MobileDataStateTracker;
    if-nez v20, :cond_1

    .line 293
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "tracker(null), apn type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v5    # "apnName":Ljava/lang/String;
    .end local v6    # "apnType":Ljava/lang/String;
    .end local v20    # "tracker":Landroid/net/MobileDataStateTracker;
    :cond_0
    :goto_0
    return-void

    .line 297
    .restart local v5    # "apnName":Ljava/lang/String;
    .restart local v6    # "apnType":Ljava/lang/String;
    .restart local v20    # "tracker":Landroid/net/MobileDataStateTracker;
    :cond_1
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 301
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Broadcast received: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " apnType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " apnName="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 306
    sget-object v21, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$502(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 307
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)V

    .line 308
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkInfo;->setIsConnectedToProvisioningNetwork(Z)V

    .line 312
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v5}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    .end local v5    # "apnName":Ljava/lang/String;
    .end local v6    # "apnType":Ljava/lang/String;
    .end local v20    # "tracker":Landroid/net/MobileDataStateTracker;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.ANY_DATA_STATE_MOBILE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 314
    const-string v21, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 315
    .restart local v6    # "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/MobileDataStateTracker;

    .line 316
    .restart local v20    # "tracker":Landroid/net/MobileDataStateTracker;
    if-nez v20, :cond_3

    .line 317
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "tracker(null), apn type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 321
    :cond_3
    const/16 v17, 0x0

    .line 322
    .local v17, "slot":I
    const/4 v8, 0x0

    .line 324
    .local v8, "curSlot":I
    const-string/jumbo v21, "simId"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 325
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v8

    .line 328
    invoke-static {}, Landroid/net/MobileDataStateTracker;->access$900()Z

    move-result v21

    if-nez v21, :cond_5

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 331
    :cond_4
    move/from16 v0, v17

    if-eq v0, v8, :cond_5

    .line 332
    const-string v21, "Receive peer SIM data state.ignor!"

    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_5
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkInfo;->setIsConnectedToProvisioningNetwork(Z)V

    .line 345
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Broadcast received: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " apnType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 349
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v15

    .line 350
    .local v15, "oldSubtype":I
    const/4 v13, 0x0

    .line 353
    .local v13, "newSubType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v13

    .line 354
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v19

    .line 360
    .local v19, "subTypeName":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 361
    if-eq v13, v15, :cond_6

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 362
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1000(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v21

    const v22, 0x70003

    const/16 v23, 0x0

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v24

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 364
    .local v12, "msg":Landroid/os/Message;
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 367
    .end local v12    # "msg":Landroid/os/Message;
    :cond_6
    const-class v21, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string/jumbo v22, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 369
    .local v18, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string/jumbo v21, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 370
    .local v16, "reason":Ljava/lang/String;
    const-string v21, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 371
    .restart local v5    # "apnName":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    const-string/jumbo v22, "networkRoaming"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 373
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " setting isAvailable to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v21, "networkUnvailable"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_8

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 376
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v22

    const-string/jumbo v21, "networkUnvailable"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_9

    const/16 v21, 0x1

    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 380
    const/4 v9, 0x0

    .line 381
    .local v9, "dataStateChanged":Z
    invoke-static {}, Landroid/net/MobileDataStateTracker;->access$900()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 382
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1100(Landroid/net/MobileDataStateTracker;)[Landroid/net/NetworkInfo;

    move-result-object v21

    aget-object v14, v21, v17

    .line 383
    .local v14, "nwInfo":Landroid/net/NetworkInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v21

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 385
    const-string/jumbo v21, "networkRoaming"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 386
    const-string/jumbo v21, "networkUnvailable"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_a

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 387
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1200(Landroid/net/MobileDataStateTracker;)[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v21

    aget-object v21, v21, v17

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_b

    const/4 v9, 0x1

    .line 389
    :goto_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[DT]Received state="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", old[slot:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1200(Landroid/net/MobileDataStateTracker;)[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v22

    aget-object v22, v22, v17

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", reason="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v16, :cond_c

    const-string v21, "(unspecified)"

    :goto_5
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 401
    .end local v14    # "nwInfo":Landroid/net/NetworkInfo;
    :goto_6
    if-eqz v9, :cond_14

    .line 402
    invoke-static {}, Landroid/net/MobileDataStateTracker;->access$900()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 403
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1200(Landroid/net/MobileDataStateTracker;)[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v21

    aput-object v18, v21, v17

    .line 408
    :goto_7
    sget-object v21, Landroid/net/MobileDataStateTracker$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 454
    :goto_8
    const-string v21, "MobileDataStateTracker"

    const-string v22, "TelephonyMgr.DataConnectionStateChanged"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 456
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "NetworkInfo = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "subType = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "subType = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_7
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1300(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v21

    if-eqz v21, :cond_12

    .line 461
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LinkProperties = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1300(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_9
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1400(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v21

    if-eqz v21, :cond_13

    .line 467
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LinkCapabilities = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1400(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/LinkCapabilities;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_a
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1500(Landroid/net/MobileDataStateTracker;)Landroid/net/SamplingDataTracker;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/SamplingDataTracker;->resetSamplingData()V

    goto/16 :goto_0

    .line 373
    .end local v9    # "dataStateChanged":Z
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 376
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 386
    .restart local v9    # "dataStateChanged":Z
    .restart local v14    # "nwInfo":Landroid/net/NetworkInfo;
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 387
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_c
    move-object/from16 v21, v16

    .line 389
    goto/16 :goto_5

    .line 393
    .end local v14    # "nwInfo":Landroid/net/NetworkInfo;
    :cond_d
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    const/4 v9, 0x1

    .line 395
    :goto_b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Received state="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", old="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", reason="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v16, :cond_f

    const-string v21, "(unspecified)"

    :goto_c
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 393
    :cond_e
    const/4 v9, 0x0

    goto :goto_b

    :cond_f
    move-object/from16 v21, v16

    .line 395
    goto :goto_c

    .line 405
    :cond_10
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$502(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_7

    .line 410
    :pswitch_0
    invoke-virtual/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 411
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 414
    :cond_11
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 427
    :pswitch_1
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 434
    :pswitch_2
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 441
    :pswitch_3
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)V

    .line 444
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 463
    :cond_12
    const-string v21, "MobileDataStateTracker"

    const-string v22, "LinkProperties = "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 469
    :cond_13
    const-string v21, "MobileDataStateTracker"

    const-string v22, "LinkCapabilities = "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 480
    :cond_14
    const-string v21, "linkPropertiesChanged"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 481
    const-string v21, "linkProperties"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/LinkProperties;

    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$1302(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 482
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1300(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v21

    if-nez v21, :cond_15

    .line 483
    const-string v21, "No link property in LINK_PROPERTIES change event."

    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$1600(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 484
    new-instance v21, Landroid/net/LinkProperties;

    invoke-direct/range {v21 .. v21}, Landroid/net/LinkProperties;-><init>()V

    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$1302(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 487
    :cond_15
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1000(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v21

    const v22, 0x70001

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 491
    .restart local v12    # "msg":Landroid/os/Message;
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 494
    .end local v12    # "msg":Landroid/os/Message;
    :cond_16
    if-eqz v16, :cond_0

    const-string v21, "apnFailed"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_17

    const-string/jumbo v21, "noSuchPdp"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    :cond_17
    if-eqz v6, :cond_0

    const-string v21, "default"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 499
    const-string v21, "Handle PhoneConstants.REASON_APN_FAILED OR  PhoneConstants.REASON_NO_SUCH_PDP from GeminiDataSubUtil"

    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 500
    sget-object v21, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 501
    invoke-virtual/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 502
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 505
    :cond_18
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 512
    .end local v5    # "apnName":Ljava/lang/String;
    .end local v6    # "apnType":Ljava/lang/String;
    .end local v8    # "curSlot":I
    .end local v9    # "dataStateChanged":Z
    .end local v13    # "newSubType":I
    .end local v15    # "oldSubtype":I
    .end local v16    # "reason":Ljava/lang/String;
    .end local v17    # "slot":I
    .end local v18    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v19    # "subTypeName":Ljava/lang/String;
    .end local v20    # "tracker":Landroid/net/MobileDataStateTracker;
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 513
    const-string v21, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 514
    .restart local v6    # "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/MobileDataStateTracker;

    .line 515
    .restart local v20    # "tracker":Landroid/net/MobileDataStateTracker;
    if-nez v20, :cond_1a

    .line 516
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "tracker(null), apn type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 520
    :cond_1a
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MobileDataStateReceiver received: ACTION_ANY_DATA_CONNECTION_FAILED ignore ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/16 v17, 0x0

    .line 525
    .restart local v17    # "slot":I
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkInfo;->setIsConnectedToProvisioningNetwork(Z)V

    .line 527
    const-string/jumbo v21, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 528
    .restart local v16    # "reason":Ljava/lang/String;
    const-string v21, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 530
    .restart local v5    # "apnName":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Received "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " broadcast"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_1b

    const-string v21, ""

    :goto_d
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 534
    const-string/jumbo v21, "simId"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 535
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 530
    :cond_1b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_d

    .line 539
    .end local v5    # "apnName":Ljava/lang/String;
    .end local v6    # "apnType":Ljava/lang/String;
    .end local v16    # "reason":Ljava/lang/String;
    .end local v17    # "slot":I
    .end local v20    # "tracker":Landroid/net/MobileDataStateTracker;
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/DctConstants;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 541
    const-string v21, "MobileDataStateTracker"

    const-string v22, "MobileDataStateReceiver received: ACTION_DATA_CONNECTION_TRACKER_MESSENGER"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-object v21, Lcom/android/internal/telephony/DctConstants;->EXTRA_MESSENGER:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/os/Messenger;

    .line 543
    .local v11, "messenger":Landroid/os/Messenger;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    .line 544
    .local v7, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/MobileDataStateTracker;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 545
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/MobileDataStateTracker;>;"
    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 546
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/MobileDataStateTracker;

    .line 547
    .restart local v20    # "tracker":Landroid/net/MobileDataStateTracker;
    move-object/from16 v0, v20

    invoke-static {v0, v11}, Landroid/net/MobileDataStateTracker;->access$1702(Landroid/net/MobileDataStateTracker;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 548
    new-instance v4, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v4}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 549
    .local v4, "ac":Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1800(Landroid/net/MobileDataStateTracker;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1900(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v22

    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1700(Landroid/net/MobileDataStateTracker;)Landroid/os/Messenger;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_e

    .line 552
    .end local v4    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v7    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/MobileDataStateTracker;>;"
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/MobileDataStateTracker;>;"
    .end local v11    # "messenger":Landroid/os/Messenger;
    .end local v20    # "tracker":Landroid/net/MobileDataStateTracker;
    :cond_1d
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MobileDataStateReceiver received: ignore "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

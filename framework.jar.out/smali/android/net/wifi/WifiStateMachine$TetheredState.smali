.class Landroid/net/wifi/WifiStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 5454
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private sendClientsChangedBroadcast()V
    .locals 3

    .prologue
    .line 5456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5457
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5458
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5459
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5463
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$35100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5464
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1, v8}, Landroid/net/wifi/WifiStateMachine;->access$35202(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5465
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 5466
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 5467
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5468
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$35400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$35500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    if-nez v1, :cond_0

    .line 5469
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$17300(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$35600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5470
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set alarm for enter TetheredState, mDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$35400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5471
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$17300(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$35400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x493e0

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$35600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 5474
    :cond_0
    const-string/jumbo v1, "persist.radio.hotspot.probe.rq"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5475
    .local v0, "request":Ljava/lang/String;
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.radio.hotspot.probe.rq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5477
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$35700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setApProbeRequestEnabledCommand(Z)Z

    .line 5480
    :cond_1
    return-void

    .line 5467
    .end local v0    # "request":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 5610
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$35400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5611
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$17300(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$35600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5613
    :cond_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 5614
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5615
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5616
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 5617
    return-void

    .line 5615
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 16
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 5483
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$35800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5484
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 5603
    const/4 v8, 0x0

    .line 5605
    :goto_0
    return v8

    .line 5486
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 5487
    .local v6, "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, v6, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$34400(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 5488
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "Tethering reports wifi as untethered!, shut down soft Ap"

    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$35900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5489
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 5490
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 5492
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 5494
    .end local v6    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "Untethering before stopping AP"

    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$36000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5495
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v9, 0xa

    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;I)V

    .line 5496
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$36100(Landroid/net/wifi/WifiStateMachine;)V

    .line 5497
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$36200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$36300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5499
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-static {v8, v0}, Landroid/net/wifi/WifiStateMachine;->access$36400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 5605
    :cond_1
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 5502
    :sswitch_2
    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AP STA CONNECTED:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5503
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35204(Landroid/net/wifi/WifiStateMachine;)I

    .line 5504
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 5505
    .local v1, "address":Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 5506
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 5507
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v8

    new-instance v10, Landroid/net/wifi/HotspotClient;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11}, Landroid/net/wifi/HotspotClient;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v8, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5509
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5510
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 5511
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$17300(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$35600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5513
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto :goto_1

    .line 5509
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 5516
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_3
    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AP STA DISCONNECTED:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5517
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35206(Landroid/net/wifi/WifiStateMachine;)I

    .line 5518
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 5519
    .restart local v1    # "address":Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 5520
    :try_start_2
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/HotspotClient;

    .line 5521
    .local v2, "client":Landroid/net/wifi/HotspotClient;
    if-eqz v2, :cond_4

    iget-boolean v8, v2, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-nez v8, :cond_4

    .line 5522
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5524
    :cond_4
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5525
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-nez v8, :cond_5

    .line 5526
    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set alarm for no client, mDuration:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$35400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5527
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$17300(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$35400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v12

    int-to-long v12, v12

    const-wide/32 v14, 0x493e0

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$35600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 5530
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto/16 :goto_1

    .line 5524
    .end local v2    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 5533
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WpsInfo;

    .line 5534
    .local v7, "wpsConfig":Landroid/net/wifi/WpsInfo;
    iget v8, v7, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v8, :pswitch_data_0

    .line 5551
    const-string v8, "WifiStateMachine"

    const-string v9, "Invalid setup for WPS!"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5536
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$36502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5537
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiNative;->startApWpsPbcCommand()Z

    goto/16 :goto_1

    .line 5540
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    iget-object v9, v7, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5541
    .local v5, "pin":Ljava/lang/String;
    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check pin result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5542
    if-eqz v5, :cond_6

    .line 5543
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/net/wifi/WifiNative;->startApWpsWithPinFromDeviceCommand(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 5545
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.net.wifi.WIFI_WPS_CHECK_PIN_FAIL"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5546
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x4000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5547
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 5557
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "pin":Ljava/lang/String;
    .end local v7    # "wpsConfig":Landroid/net/wifi/WpsInfo;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiNative;->blockClientCommand(Ljava/lang/String;)Z

    move-result v4

    .line 5558
    .local v4, "ok":Z
    if-eqz v4, :cond_8

    .line 5559
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 5560
    :try_start_4
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/HotspotClient;

    .line 5561
    .restart local v2    # "client":Landroid/net/wifi/HotspotClient;
    if-eqz v2, :cond_7

    .line 5562
    const/4 v8, 0x1

    iput-boolean v8, v2, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 5566
    :goto_2
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 5567
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 5573
    .end local v2    # "client":Landroid/net/wifi/HotspotClient;
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$36600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    if-eqz v4, :cond_9

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v10, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5564
    .restart local v2    # "client":Landroid/net/wifi/HotspotClient;
    :cond_7
    :try_start_5
    const-string v10, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to get "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5566
    .end local v2    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .line 5569
    :cond_8
    const-string v9, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to block "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5573
    :cond_9
    const/4 v8, -0x1

    goto :goto_4

    .line 5577
    .end local v4    # "ok":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiNative;->unblockClientCommand(Ljava/lang/String;)Z

    move-result v4

    .line 5578
    .restart local v4    # "ok":Z
    if-eqz v4, :cond_a

    .line 5579
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 5580
    :try_start_6
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$35300()Ljava/util/HashMap;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5581
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 5582
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 5587
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$36600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    if-eqz v4, :cond_b

    const/4 v8, 0x1

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v10, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5581
    :catchall_3
    move-exception v8

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v8

    .line 5584
    :cond_a
    const-string v9, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to unblock "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5587
    :cond_b
    const/4 v8, -0x1

    goto :goto_6

    .line 5590
    .end local v4    # "ok":Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$35700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_c

    const/4 v8, 0x1

    :goto_7
    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiNative;->setApProbeRequestEnabledCommand(Z)Z

    move-result v4

    .line 5592
    .restart local v4    # "ok":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$36600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    if-eqz v4, :cond_d

    const/4 v8, 0x1

    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v10, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5590
    .end local v4    # "ok":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_7

    .line 5592
    .restart local v4    # "ok":Z
    :cond_d
    const/4 v8, -0x1

    goto :goto_8

    .line 5595
    .end local v4    # "ok":Z
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$36500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5596
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.net.wifi.WIFI_HOTSPOT_OVERLAP"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5597
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v8, 0x4000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5598
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5599
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$36502(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 5484
    nop

    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
        0x200aa -> :sswitch_5
        0x200ab -> :sswitch_6
        0x200ac -> :sswitch_4
        0x200ae -> :sswitch_7
        0x2400a -> :sswitch_8
        0x24029 -> :sswitch_3
        0x2402a -> :sswitch_2
    .end sparse-switch

    .line 5534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 5836
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Lcom/android/server/ConnectivityService$1;

    .prologue
    .line 5836
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5838
    if-nez p2, :cond_0

    .line 5909
    :goto_0
    return-void

    .line 5839
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5840
    .local v1, "action":Ljava/lang/String;
    const-string v9, "ConnectivityService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "received intent ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5841
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 5842
    :try_start_0
    const-string v9, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 5844
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "gprs_connection_setting"

    const/4 v12, -0x4

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 5845
    .local v5, "preSlotId":I
    const-string v9, "simid"

    const-wide/16 v11, -0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 5847
    .local v7, "simId":Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, -0x5

    cmp-long v9, v11, v13

    if-nez v9, :cond_3

    .line 5848
    :cond_1
    const/4 v8, -0x1

    .line 5854
    .local v8, "slotId":I
    :goto_1
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "gprs_connection_setting"

    add-int/lit8 v12, v8, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5855
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v9, v8}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 5856
    .local v2, "changeSimId":Ljava/lang/Long;
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "gprs_connection_sim_setting"

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v9, v11, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 5858
    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 5859
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "mobile_data"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5861
    const-string v9, "ril.mobile.data"

    const-string v11, "1"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5868
    :goto_2
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v9, v5, v8}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;II)V

    .line 5908
    .end local v2    # "changeSimId":Ljava/lang/Long;
    .end local v5    # "preSlotId":I
    .end local v7    # "simId":Ljava/lang/Long;
    .end local v8    # "slotId":I
    :cond_2
    :goto_3
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 5850
    .restart local v5    # "preSlotId":I
    .restart local v7    # "simId":Ljava/lang/Long;
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v9, v11, v12}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;J)I

    move-result v8

    .restart local v8    # "slotId":I
    goto :goto_1

    .line 5863
    .restart local v2    # "changeSimId":Ljava/lang/Long;
    :cond_4
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "mobile_data"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5865
    const-string v9, "ril.mobile.data"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5882
    .end local v2    # "changeSimId":Ljava/lang/Long;
    .end local v5    # "preSlotId":I
    .end local v7    # "simId":Ljava/lang/Long;
    .end local v8    # "slotId":I
    :cond_5
    const-string v9, "android.intent.action.TETHERING_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 5883
    const-string v9, "tethering_isconnected"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 5884
    .local v3, "isConnected":Z
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v9, v3}, Lcom/android/server/ConnectivityService;->setUsbTethering(Z)I

    goto :goto_3

    .line 5885
    .end local v3    # "isConnected":Z
    :cond_6
    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 5886
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 5887
    .local v4, "obtainBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_8

    .line 5889
    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 5890
    .local v6, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-nez v9, :cond_2

    .line 5891
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :goto_4
    const/4 v12, 0x0

    invoke-static {v11, v9, v12}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;ZZ)V

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 5896
    .end local v6    # "serviceState":Landroid/telephony/ServiceState;
    :cond_8
    const-string v9, "get bundle error!!"

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto :goto_3

    .line 5898
    .end local v4    # "obtainBundle":Landroid/os/Bundle;
    :cond_9
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 5899
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x1

    :goto_5
    const/4 v12, 0x1

    invoke-static {v11, v9, v12}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_a
    const/4 v9, 0x0

    goto :goto_5
.end method

.class Lcom/android/internal/telephony/dataconnection/DcTracker$3;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 3976
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3980
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3984
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4009
    :cond_0
    :goto_0
    return-void

    .line 3988
    :cond_1
    const-string v3, "android.intent.action.GPRS_TRANSFER_TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3989
    const-string v3, "gemini.gprs.transfer.type"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3990
    .local v2, "gprsTransferType":I
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GPRS Transfer type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->logd(Ljava/lang/String;)V

    .line 3991
    if-ne v2, v4, :cond_2

    .line 3992
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$402(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    goto :goto_0

    .line 3994
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$402(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    goto :goto_0

    .line 3996
    .end local v2    # "gprsTransferType":I
    :cond_3
    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3998
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v6, "Received ConnectivityManager.ACTION_TETHER_STATE_CHANGED"

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->logd(Ljava/lang/String;)V

    .line 3999
    const-string v3, "activeArray"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4000
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    move v3, v4

    :goto_1
    invoke-static {v6, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$502(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 4001
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TETHER_STATE_CHANGED]mIsTetheredMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mChargingMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v7, v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->mChargingMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->logd(Ljava/lang/String;)V

    .line 4003
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mChargingMode:Z

    if-nez v3, :cond_5

    .line 4004
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateFDMDEnableStatus(Z)V

    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 4000
    goto :goto_1

    .line 4006
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateFDMDEnableStatus(Z)V

    goto/16 :goto_0
.end method

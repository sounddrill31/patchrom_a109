.class Lcom/android/internal/telephony/cat/bip/BipManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/bip/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 1072
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$900(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->isClientChannelOpened()Z

    move-result v1

    if-ne v3, v1, :cond_2

    .line 1074
    :cond_1
    const-string v1, "[BIP]"

    const-string v2, "Connectivity changed onReceive Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1077
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {v1, v2, p2}, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1078
    .local v0, "rt":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1079
    const-string v1, "[BIP]"

    const-string v2, "Connectivity changed onReceive Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    .end local v0    # "rt":Ljava/lang/Thread;
    :cond_2
    return-void
.end method

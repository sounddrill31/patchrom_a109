.class public Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/bip/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SendDataThread"
.end annotation


# instance fields
.field cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field response:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/BipManager;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 2
    .param p2, "Msg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p3, "resp"    # Landroid/os/Message;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    const-string v0, "[BIP]"

    const-string v1, "SendDataThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iput-object p2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 619
    iput-object p3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->response:Landroid/os/Message;

    .line 620
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 625
    const-string v5, "[BIP]"

    const-string v6, "SendDataThread Run Enter"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v4, 0x0

    .line 628
    .local v4, "ret":I
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v0, v5, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    .line 629
    .local v0, "buffer":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v3, v5, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendMode:I

    .line 630
    .local v3, "mode":I
    const/4 v2, 0x0

    .line 631
    .local v2, "lChannel":Lcom/android/internal/telephony/cat/bip/Channel;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, v5, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendDataCid:I

    .line 633
    .local v1, "cId":I
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v2

    .line 635
    if-nez v2, :cond_0

    .line 636
    const-string v5, "[BIP]"

    const-string v6, "SendDataThread Run mChannelId != cmdMsg.mSendDataCid"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/4 v4, 0x7

    .line 653
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->response:Landroid/os/Message;

    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 654
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->response:Landroid/os/Message;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 655
    const-string v5, "[BIP]"

    const-string v6, "SendDataThread Run mHandler.sendMessage(response);"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v5}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->response:Landroid/os/Message;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 657
    return-void

    .line 641
    :cond_0
    iget v5, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 643
    const-string v5, "[BIP]"

    const-string v6, "SendDataThread Run mChannel.sendData"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/cat/bip/Channel;->sendData([BI)I

    move-result v4

    .line 645
    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/BipManager$SendDataThread;->response:Landroid/os/Message;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/bip/Channel;->getTxAvailBufferSize()I

    move-result v6

    iput v6, v5, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 649
    :cond_1
    const-string v5, "[BIP]"

    const-string v6, "SendDataThread Run CHANNEL_ID_NOT_VALID"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const/4 v4, 0x7

    goto :goto_0
.end method

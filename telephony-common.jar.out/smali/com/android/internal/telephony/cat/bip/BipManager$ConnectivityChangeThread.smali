.class public Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;
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
    name = "ConnectivityChangeThread"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/content/Intent;)V
    .locals 2
    .param p2, "in"    # Landroid/content/Intent;

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    const-string v0, "[BIP]"

    const-string v1, "ConnectivityChangeThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iput-object p2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    .line 952
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 957
    const-string v11, "[BIP]"

    const-string v12, "ConnectivityChangeThread Enter"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v11, "[BIP]"

    const-string v12, "Connectivity changed"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const/4 v8, 0x0

    .line 960
    .local v8, "ret":I
    const/4 v7, 0x0

    .line 962
    .local v7, "response":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    const-string v12, "networkInfo"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 964
    .local v4, "info":Landroid/net/NetworkInfo;
    if-nez v4, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    .line 969
    .local v10, "type":I
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    .line 970
    .local v9, "state":Landroid/net/NetworkInfo$State;
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "network type is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "network state is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 974
    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v11, :cond_7

    .line 975
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v12

    if-ne v11, v12, :cond_5

    .line 976
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 977
    const-string v11, "[BIP]"

    const-string v12, "Fail - requestRouteToHost"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 978
    const/4 v8, 0x2

    .line 980
    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v8

    .line 981
    const/16 v11, 0xa

    if-eq v8, v11, :cond_0

    .line 982
    if-eqz v8, :cond_3

    const/4 v11, 0x3

    if-ne v8, v11, :cond_4

    .line 983
    :cond_3
    const-string v11, "[BIP]"

    const-string v12, "channel is activated"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/16 v12, 0x80

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;I)V

    .line 989
    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$202(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z

    .line 990
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1e

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v14

    invoke-virtual {v11, v12, v8, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 991
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 986
    :cond_4
    const-string v11, "[BIP]"

    const-string v12, "channel is un-activated"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;I)V

    goto :goto_1

    .line 994
    :cond_5
    const-string v11, "[BIP]"

    const-string v12, "Error in channel state."

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    const/4 v11, 0x1

    if-gt v3, v11, :cond_0

    .line 996
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v2

    .line 997
    .local v2, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    if-eqz v2, :cond_6

    .line 998
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">cid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",protocolType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1001
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    .end local v3    # "i":I
    :cond_7
    sget-object v11, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v11, :cond_0

    .line 1002
    const-string v11, "[BIP]"

    const-string v12, "network state - disconnected"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v12

    if-ne v11, v12, :cond_9

    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$700(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_9

    .line 1005
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v2

    .line 1006
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const/4 v8, 0x2

    .line 1008
    if-eqz v2, :cond_8

    .line 1009
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    .line 1010
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 1015
    :goto_3
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$702(Lcom/android/internal/telephony/cat/bip/BipManager;I)I

    .line 1016
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 1017
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$202(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z

    .line 1018
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1e

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v14

    invoke-virtual {v11, v12, v8, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1019
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1012
    :cond_8
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    iget-object v13, v13, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v13, v13, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    goto :goto_3

    .line 1021
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_9
    const/4 v3, 0x0

    .line 1022
    .restart local v3    # "i":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v1, "alByte":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 1024
    .local v0, "additionalInfo":[B
    const-string v11, "[BIP]"

    const-string v12, "this is a drop link"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$702(Lcom/android/internal/telephony/cat/bip/BipManager;I)I

    .line 1026
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 1028
    new-instance v6, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v11, 0xa

    invoke-direct {v6, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 1030
    .local v6, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v3, 0x1

    :goto_4
    const/4 v11, 0x1

    if-gt v3, v11, :cond_c

    .line 1031
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v12}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v12

    if-ne v11, v12, :cond_b

    .line 1033
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v2

    .line 1034
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "channel protocolType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const/4 v11, 0x1

    iget v12, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-eq v11, v12, :cond_a

    const/4 v11, 0x2

    iget v12, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v11, v12, :cond_b

    .line 1037
    :cond_a
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    .line 1038
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 1039
    const/16 v11, -0x48

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    iget v11, v2, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelId:I

    or-int/lit8 v11, v11, 0x0

    int-to-byte v11, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1044
    :catch_0
    move-exception v5

    .line 1045
    .local v5, "ne":Ljava/lang/NullPointerException;
    const-string v11, "[BIP]"

    const-string v12, "NE,channel null"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    .line 1050
    .end local v5    # "ne":Ljava/lang/NullPointerException;
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_e

    .line 1051
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v0, v11, [B

    .line 1052
    const/4 v3, 0x0

    :goto_6
    array-length v11, v0

    if-ge v3, v11, :cond_d

    .line 1053
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    aput-byte v11, v0, v3

    .line 1052
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1055
    :cond_d
    const/16 v11, 0x82

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 1056
    const/16 v11, 0x81

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 1057
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 1058
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 1059
    const-string v11, "[BIP]"

    const-string v12, "onEventDownload: for channel status"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v11, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v11, v6}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 1062
    :cond_e
    const-string v11, "[BIP]"

    const-string v12, "onEventDownload: No client channels are opened."

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

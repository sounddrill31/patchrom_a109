.class Lcom/android/server/display/WifiDisplayController$22;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 1698
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1699
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1702
    const-string v8, "wifi_p2p_state"

    invoke-virtual {p2, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 1706
    .local v2, "enabled":Z
    :goto_0
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7, v2}, Lcom/android/server/display/WifiDisplayController;->access$4700(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 1805
    .end local v2    # "enabled":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v7

    .line 1702
    goto :goto_0

    .line 1710
    :cond_2
    const-string v8, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1711
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1712
    const-string v7, "WifiDisplayController"

    const-string v8, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_3
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$4800(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_1

    .line 1716
    :cond_4
    const-string v8, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1717
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 1720
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    const-string v7, "reason="

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1721
    .local v6, "reason":I
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1722
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :goto_2
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7, v4, v6}, Lcom/android/server/display/WifiDisplayController;->access$4900(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;I)V

    .line 1732
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/display/WifiDisplayController;->access$5002(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1735
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$5000(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v8

    invoke-static {v7, v8, p2}, Lcom/android/server/display/WifiDisplayController;->access$5100(Lcom/android/server/display/WifiDisplayController;ZLandroid/content/Intent;)V

    goto :goto_1

    .line 1725
    :cond_5
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: isConnected? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1738
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v6    # "reason":I
    :cond_6
    const-string v8, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1739
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v7, "wifiP2pDevice"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v8, v7}, Lcom/android/server/display/WifiDisplayController;->access$3902(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1741
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1742
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_THIS_DEVICE_CHANGED_ACTION: mThisDevice= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$3900(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1747
    :cond_7
    const-string v8, "com.mediatek.mediaplayer.DRM_PLAY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1748
    const/4 v5, 0x0

    .line 1749
    .local v5, "playerID":I
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v9, "isPlaying"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/display/WifiDisplayController;->access$5202(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1750
    const-string v8, "playerId"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1751
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received DRM_CONTENT_MEDIAPLAYER: isPlaying = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", player = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isConnected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isConnecting = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$3500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v7

    if-eq v2, v7, :cond_8

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$3500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v7

    if-ne v2, v7, :cond_0

    .line 1758
    :cond_8
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v7

    if-ne v2, v7, :cond_9

    .line 1760
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7, v5}, Lcom/android/server/display/WifiDisplayController;->access$5402(Lcom/android/server/display/WifiDisplayController;I)I

    goto/16 :goto_1

    .line 1762
    :cond_9
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;)I

    move-result v7

    if-eq v7, v5, :cond_0

    .line 1765
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "player ID doesn\'t match last time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1771
    .end local v5    # "playerID":I
    :cond_a
    const-string v7, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1772
    const-string v7, "discoveryState"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1774
    .local v1, "discoveryState":I
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1775
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_DISCOVERY_CHANGED_ACTION: discoveryState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_b
    if-ne v1, v2, :cond_0

    .line 1779
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    .line 1783
    .end local v1    # "discoveryState":I
    :cond_c
    const-string v7, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1784
    const-string v7, "WifiDisplayController"

    const-string v8, "Received android.intent.action.ACTION_PRE_SHUTDOWN, do disconnect anyway"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 1789
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$2000(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1792
    :cond_d
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$1700(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1793
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$1700(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/RemoteDisplay;->dispose()V

    goto/16 :goto_1

    .line 1797
    :cond_e
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1798
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1800
    .local v3, "info":Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/display/WifiDisplayController;->access$5602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1802
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WifiManager.NETWORK_STATE_CHANGED_ACTION, connected:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

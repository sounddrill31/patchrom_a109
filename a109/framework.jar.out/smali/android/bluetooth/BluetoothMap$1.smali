.class Landroid/bluetooth/BluetoothMap$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothMap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothMap;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .prologue
    .line 60
    const-string v1, "BluetoothMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothStateChange: up="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-nez p1, :cond_0

    .line 63
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->access$000(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 65
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothMap;->access$102(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    .line 66
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->access$200(Landroid/bluetooth/BluetoothMap;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {v3}, Landroid/bluetooth/BluetoothMap;->access$000(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 83
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "re":Ljava/lang/Exception;
    const-string v1, "BluetoothMap"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 72
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->access$000(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 74
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->access$100(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 76
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothMap;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :cond_1
    :goto_2
    :try_start_3
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 78
    :catch_1
    move-exception v0

    .line 79
    .restart local v0    # "re":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "BluetoothMap"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2
.end method

.class Lcom/android/server/MountService$8;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1384
    const-string v13, "vold.encrypt_progress"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1385
    .local v3, "encryptProgress":Ljava/lang/String;
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "encryptProgress("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1387
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "encryptProgress("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "), skip the command to vold."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v14}, Lcom/android/server/MountService;->access$3600(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v14

    const-string v15, "removed"

    invoke-static {v13, v14, v15}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1402
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1505
    :cond_1
    :goto_0
    return-void

    .line 1410
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string v14, "volume"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "list"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v13

    const/16 v14, 0x6e

    invoke-static {v13, v14}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v10

    .line 1413
    .local v10, "vols":[Ljava/lang/String;
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v11, v1, v4

    .line 1414
    .local v11, "volstr":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1416
    .local v9, "tok":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v6, v9, v13

    .line 1417
    .local v6, "path":Ljava/lang/String;
    const-string v8, "removed"

    .line 1420
    .local v8, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 1422
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1423
    if-nez v12, :cond_6

    .line 1425
    :try_start_2
    const-string v13, "MountService"

    const-string v14, "Error processing initial volume state:  volume == null"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1413
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1422
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1475
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "tok":[Ljava/lang/String;
    .end local v10    # "vols":[Ljava/lang/String;
    .end local v11    # "volstr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1476
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "MountService"

    const-string v14, "Error processing initial volume state"

    invoke-static {v13, v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1492
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 1493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1497
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 1502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 1429
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v8    # "state":Ljava/lang/String;
    .restart local v9    # "tok":[Ljava/lang/String;
    .restart local v10    # "vols":[Ljava/lang/String;
    .restart local v11    # "volstr":Ljava/lang/String;
    .restart local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    const/4 v13, 0x2

    :try_start_5
    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1430
    .local v7, "st":I
    if-nez v7, :cond_7

    .line 1431
    const-string v8, "removed"

    .line 1444
    :goto_3
    if-eqz v8, :cond_3

    .line 1445
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updating valid state "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v13, v12, v8}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto :goto_2

    .line 1432
    :cond_7
    const/4 v13, 0x1

    if-ne v7, v13, :cond_8

    .line 1433
    const-string v8, "unmounted"

    goto :goto_3

    .line 1434
    :cond_8
    const/4 v13, 0x4

    if-ne v7, v13, :cond_9

    .line 1435
    const-string v8, "mounted"

    .line 1436
    const-string v13, "MountService"

    const-string v14, "Media already mounted on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1437
    :cond_9
    const/4 v13, 0x7

    if-ne v7, v13, :cond_a

    .line 1438
    const-string v8, "shared"

    .line 1439
    const-string v13, "MountService"

    const-string v14, "Media shared on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1441
    :cond_a
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Unexpected state %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.class Lcom/android/server/MountService$ObbActionHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionHandler"
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 3714
    iput-object p1, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    .line 3715
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    .line 3712
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    .line 3716
    return-void
.end method

.method private connectToService()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3853
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 3854
    .local v0, "service":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v2}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v3}, Lcom/android/server/MountService;->access$4700(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3855
    iput-boolean v1, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    .line 3858
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private disconnectService()V
    .locals 2

    .prologue
    .line 3862
    iget-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$4302(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    .line 3864
    iget-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v1}, Lcom/android/server/MountService;->access$4700(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3865
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 3720
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 3847
    :cond_0
    :goto_0
    return-void

    .line 3722
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3730
    .local v0, "action":Lcom/android/server/MountService$ObbAction;
    iget-boolean v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    if-nez v8, :cond_1

    .line 3733
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->connectToService()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3734
    const-string v8, "MountService"

    const-string v9, "Failed to bind to media container service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    goto :goto_0

    .line 3740
    :cond_1
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3746
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_2

    .line 3747
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/app/IMediaContainerService;

    invoke-static {v9, v8}, Lcom/android/server/MountService;->access$4302(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3749
    :cond_2
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v8}, Lcom/android/server/MountService;->access$4300(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v8

    if-nez v8, :cond_4

    .line 3751
    const-string v8, "MountService"

    const-string v9, "Cannot bind to media container service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3754
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    goto :goto_1

    .line 3756
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_3
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 3757
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 3758
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3759
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    if-eqz v0, :cond_0

    .line 3760
    invoke-virtual {v0, p0}, Lcom/android/server/MountService$ObbAction;->execute(Lcom/android/server/MountService$ObbActionHandler;)V

    goto :goto_0

    .line 3764
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_5
    const-string v8, "MountService"

    const-string v9, "Empty queue"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3771
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 3772
    iget-boolean v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    if-eqz v8, :cond_6

    .line 3773
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->disconnectService()V

    .line 3775
    :cond_6
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->connectToService()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3776
    const-string v8, "MountService"

    const-string v9, "Failed to bind to media container service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3779
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    goto :goto_2

    .line 3781
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_7
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 3791
    .end local v3    # "i$":Ljava/util/Iterator;
    :pswitch_3
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 3792
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3794
    :cond_8
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_9

    .line 3795
    iget-boolean v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    if-eqz v8, :cond_0

    .line 3796
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->disconnectService()V

    goto/16 :goto_0

    .line 3802
    :cond_9
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v8}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3807
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 3812
    .local v6, "path":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v8}, Lcom/android/server/MountService;->access$4400(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    .line 3813
    :try_start_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 3815
    .local v5, "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v8}, Lcom/android/server/MountService;->access$4500(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3816
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3817
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/MountService$ObbState;

    .line 3824
    .local v7, "state":Lcom/android/server/MountService$ObbState;
    iget-object v8, v7, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3825
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3843
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    .end local v5    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    .end local v7    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3829
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    .restart local v5    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_b
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$ObbState;

    .line 3833
    .local v4, "obbState":Lcom/android/server/MountService$ObbState;
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v8, v4}, Lcom/android/server/MountService;->access$4600(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3836
    :try_start_2
    iget-object v8, v4, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v10, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget v11, v4, Lcom/android/server/MountService$ObbState;->nonce:I

    const/4 v12, 0x2

    invoke-interface {v8, v10, v11, v12}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 3838
    :catch_0
    move-exception v1

    .line 3839
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v8, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3843
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "obbState":Lcom/android/server/MountService$ObbState;
    :cond_c
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 3720
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

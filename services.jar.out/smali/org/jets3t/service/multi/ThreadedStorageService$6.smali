.class Lorg/jets3t/service/multi/ThreadedStorageService$6;
.super Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;->getObjects(Ljava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

.field final synthetic val$pendingObjectKeysList:Ljava/util/List;

.field final synthetic val$success:[Z

.field final synthetic val$uniqueOperationId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V
    .locals 0
    .param p2, "x0"    # [Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
    .param p3, "x1"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p4, "x2"    # Lorg/jets3t/service/Jets3tProperties;
    .param p5, "x3"    # Z

    .prologue
    .line 707
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iput-object p6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$uniqueOperationId:Ljava/lang/Object;

    iput-object p7, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$pendingObjectKeysList:Ljava/util/List;

    iput-object p8, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$success:[Z

    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V

    return-void
.end method


# virtual methods
.method public fireCancelEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 723
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v1, "cancelledObjectsList":Ljava/util/List;
    iget-object v4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$pendingObjectKeysList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 725
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 726
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 727
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Lorg/jets3t/service/model/StorageObject;

    invoke-direct {v4, v3}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/jets3t/service/model/StorageObject;

    move-object v0, v4

    check-cast v0, [Lorg/jets3t/service/model/StorageObject;

    .line 731
    .local v0, "cancelledObjects":[Lorg/jets3t/service/model/StorageObject;
    iget-object v4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$success:[Z

    aput-boolean v5, v4, v5

    .line 732
    iget-object v4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v0, v5}, Lorg/jets3t/service/multi/event/GetObjectsEvent;->newCancelledEvent([Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/GetObjectsEvent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 733
    return-void
.end method

.method public fireCompletedEvent()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jets3t/service/multi/event/GetObjectsEvent;->newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/event/GetObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 737
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 740
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 741
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/event/GetObjectsEvent;->newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/GetObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 742
    return-void
.end method

.method public fireIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "ignoredErrors"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 745
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 746
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/jets3t/service/multi/event/GetObjectsEvent;->newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/GetObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 747
    return-void
.end method

.method public fireProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/util/List;)V
    .locals 4
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "completedResults"    # Ljava/util/List;

    .prologue
    .line 714
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/StorageObject;

    move-object v0, v2

    check-cast v0, [Lorg/jets3t/service/model/StorageObject;

    .line 716
    .local v0, "completedObjects":[Lorg/jets3t/service/model/StorageObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 717
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$pendingObjectKeysList:Ljava/util/List;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 719
    :cond_0
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lorg/jets3t/service/multi/event/GetObjectsEvent;->newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/GetObjectsEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 720
    return-void
.end method

.method public fireStartEvent(Lorg/jets3t/service/multi/ThreadWatcher;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;

    .prologue
    .line 710
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/event/GetObjectsEvent;->newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/GetObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 711
    return-void
.end method

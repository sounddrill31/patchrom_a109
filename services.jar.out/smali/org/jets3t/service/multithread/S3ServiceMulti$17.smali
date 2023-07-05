.class Lorg/jets3t/service/multithread/S3ServiceMulti$17;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;->getObjectsACLs([Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

.field final synthetic val$pendingObjectKeysList:Ljava/util/List;

.field final synthetic val$success:[Z

.field final synthetic val$uniqueOperationId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V
    .locals 0
    .param p2, "x0"    # [Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
    .param p3, "x1"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p4, "x2"    # Lorg/jets3t/service/Jets3tProperties;
    .param p5, "x3"    # Z

    .prologue
    .line 1747
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iput-object p6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$uniqueOperationId:Ljava/lang/Object;

    iput-object p7, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$pendingObjectKeysList:Ljava/util/List;

    iput-object p8, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$success:[Z

    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V

    return-void
.end method


# virtual methods
.method public fireCancelEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1763
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1764
    .local v1, "cancelledObjectsList":Ljava/util/List;
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$pendingObjectKeysList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1765
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1766
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1768
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/jets3t/service/model/S3Object;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/jets3t/service/model/S3Object;

    move-object v0, v3

    check-cast v0, [Lorg/jets3t/service/model/S3Object;

    .line 1770
    .local v0, "cancelledObjects":[Lorg/jets3t/service/model/S3Object;
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$success:[Z

    aput-boolean v4, v3, v4

    .line 1771
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v0, v4}, Lorg/jets3t/service/multithread/LookupACLEvent;->newCancelledEvent([Lorg/jets3t/service/model/S3Object;Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 1772
    return-void
.end method

.method public fireCompletedEvent()V
    .locals 2

    .prologue
    .line 1775
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jets3t/service/multithread/LookupACLEvent;->newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 1776
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 1779
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 1780
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multithread/LookupACLEvent;->newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 1781
    return-void
.end method

.method public fireIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p2, "ignoredErrors"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 1784
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 1785
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/jets3t/service/multithread/LookupACLEvent;->newIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 1786
    return-void
.end method

.method public fireProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/util/List;)V
    .locals 4
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p2, "completedResults"    # Ljava/util/List;

    .prologue
    .line 1754
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/S3Object;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/model/S3Object;

    move-object v0, v2

    check-cast v0, [Lorg/jets3t/service/model/S3Object;

    .line 1756
    .local v0, "completedObjects":[Lorg/jets3t/service/model/S3Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1757
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$pendingObjectKeysList:Ljava/util/List;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/jets3t/service/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1756
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1759
    :cond_0
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lorg/jets3t/service/multithread/LookupACLEvent;->newInProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Lorg/jets3t/service/model/S3Object;Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 1760
    return-void
.end method

.method public fireStartEvent(Lorg/jets3t/service/multithread/ThreadWatcher;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;

    .prologue
    .line 1750
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multithread/LookupACLEvent;->newStartedEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 1751
    return-void
.end method

.class Lorg/jets3t/service/multi/SimpleThreadedStorageService$2;
.super Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
.source "SimpleThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multi/SimpleThreadedStorageService;->putObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/StorageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multi/SimpleThreadedStorageService;

.field final synthetic val$objectList:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/jets3t/service/multi/SimpleThreadedStorageService;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService$2;->this$0:Lorg/jets3t/service/multi/SimpleThreadedStorageService;

    iput-object p2, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService$2;->val$objectList:Ljava/util/List;

    invoke-direct {p0}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public event(Lorg/jets3t/service/multi/event/CreateObjectsEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/jets3t/service/multi/event/CreateObjectsEvent;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->event(Lorg/jets3t/service/multi/event/CreateObjectsEvent;)V

    .line 130
    const/4 v0, 0x3

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/CreateObjectsEvent;->getEventCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lorg/jets3t/service/multi/SimpleThreadedStorageService$2;->val$objectList:Ljava/util/List;

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/CreateObjectsEvent;->getCreatedObjects()[Lorg/jets3t/service/model/StorageObject;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    :cond_0
    return-void
.end method

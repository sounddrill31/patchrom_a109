.class Lcom/android/server/LocationManagerService$1;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v2, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    .line 243
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    goto :goto_0

    .line 246
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 245
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)V

    .line 246
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    return-void
.end method

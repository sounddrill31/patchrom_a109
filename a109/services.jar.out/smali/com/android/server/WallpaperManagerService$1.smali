.class Lcom/android/server/WallpaperManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WallpaperManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 514
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    const-string v3, "android.intent.extra.user_handle"

    const/16 v4, -0x2710

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/WallpaperManagerService;->onRemoveUser(I)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    const-string v2, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 528
    .local v1, "smartBookPlug":Z
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/WallpaperManagerService;->access$400(Lcom/android/server/WallpaperManagerService;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 529
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart book plug state changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-static {v2, v1}, Lcom/android/server/WallpaperManagerService;->access$402(Lcom/android/server/WallpaperManagerService;Z)Z

    .line 531
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/WallpaperManagerService;->access$702(Lcom/android/server/WallpaperManagerService;Z)Z

    .line 532
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$1;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/WallpaperManagerService;->access$400(Lcom/android/server/WallpaperManagerService;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/WallpaperManagerService;->access$800(Lcom/android/server/WallpaperManagerService;Z)V

    goto :goto_0
.end method

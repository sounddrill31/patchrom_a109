.class Lcom/android/internal/telephony/cat/CatService$2;
.super Landroid/content/BroadcastReceiver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 359
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "evtAction":Ljava/lang/String;
    const/4 v0, 0x4

    .line 362
    .local v0, "evdl":I
    const-string v3, "CatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStkIdleScreenAvailableReceiver() - evtAction["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v3, "android.intent.action.stk.IDLE_SCREEN_AVAILABLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    const-string v3, "CatService"

    const-string v4, "mStkIdleScreenAvailableReceiver() - Received[IDLE_SCREEN_AVAILABLE]"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x5

    .line 371
    new-instance v2, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>()V

    .line 372
    .local v2, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventId(I)V

    .line 373
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 374
    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 375
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 376
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 377
    const-string v3, "CatService"

    const-string v4, "handle Idle Screen Available"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 379
    .end local v2    # "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    :goto_0
    return-void

    .line 368
    :cond_0
    const-string v3, "CatService"

    const-string v4, "mStkIdleScreenAvailableReceiver() - Received needn\'t handle!"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/android/internal/telephony/PsArbitrator$1;
.super Landroid/content/BroadcastReceiver;
.source "PsArbitrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/PsArbitrator;->initBroadCastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PsArbitrator;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PsArbitrator;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/internal/telephony/PsArbitrator$1;->this$0:Lcom/android/internal/telephony/PsArbitrator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 859
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/PsArbitrator$1;->this$0:Lcom/android/internal/telephony/PsArbitrator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive, action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 861
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/android/internal/telephony/PsArbitrator$1;->this$0:Lcom/android/internal/telephony/PsArbitrator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive, action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 864
    :cond_0
    return-void
.end method

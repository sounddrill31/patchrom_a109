.class Lcom/android/server/ConnectivityService$5;
.super Lcom/android/server/ConnectivityService$CheckMp$CallBack;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->checkMobileProvisioning(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 4612
    iput-object p1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService$CheckMp$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method onComplete(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x5

    .line 4615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 4616
    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4618
    .local v0, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: ignore unexpected result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$4800(Ljava/lang/String;)V

    .line 4659
    :goto_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4660
    return-void

    .line 4623
    :pswitch_0
    const-string v2, "CheckMp.onComplete: ignore, connected or no connection"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto :goto_0

    .line 4627
    :pswitch_1
    const-string v2, "CheckMp.onComplete: warm sim"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 4628
    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    .line 4629
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4630
    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    .line 4632
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: warm (redirected), url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 4634
    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v4, v3, v1}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4638
    :cond_1
    const-string v2, "CheckMp.onComplete: warm (redirected), no url"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto :goto_0

    .line 4643
    .end local v1    # "url":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    .line 4644
    .restart local v1    # "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: warm (no dns/tcp), url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 4646
    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v4, v3, v1}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4650
    :cond_2
    const-string v2, "CheckMp.onComplete: warm (no dns/tcp), no url"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4618
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

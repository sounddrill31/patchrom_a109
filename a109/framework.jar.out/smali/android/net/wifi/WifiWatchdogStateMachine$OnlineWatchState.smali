.class Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineWatchState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleRssiChange()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 855
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 840
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 841
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->handleRssiChange()V

    .line 847
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 859
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 865
    const/4 v0, 0x0

    .line 867
    :goto_0
    return v0

    .line 861
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$902(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 862
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->handleRssiChange()V

    .line 867
    const/4 v0, 0x1

    goto :goto_0

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x21003
        :pswitch_0
    .end packed-switch
.end method

.class Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForP2pDisableState"
.end annotation


# instance fields
.field private mTransitionToState:Lcom/android/internal/util/State;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 3851
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 3855
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$18700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3856
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$18800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 3867
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$17800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    .line 3870
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x20084

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3871
    return-void

    .line 3858
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 3861
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$17800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 3864
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$10200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 3856
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_2
        0x20012 -> :sswitch_1
        0x24002 -> :sswitch_0
    .end sparse-switch
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3874
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$18900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3875
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 3899
    const/4 v0, 0x0

    .line 3901
    :goto_0
    return v0

    .line 3877
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$19000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3901
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3896
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$19100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 3875
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_1
        0x2000c -> :sswitch_1
        0x2000d -> :sswitch_1
        0x2000e -> :sswitch_1
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_1
        0x20047 -> :sswitch_1
        0x20048 -> :sswitch_1
        0x20049 -> :sswitch_1
        0x2004a -> :sswitch_1
        0x2004b -> :sswitch_1
        0x20050 -> :sswitch_1
        0x20054 -> :sswitch_1
        0x20055 -> :sswitch_1
        0x2005a -> :sswitch_1
        0x20085 -> :sswitch_0
        0x24006 -> :sswitch_1
    .end sparse-switch
.end method

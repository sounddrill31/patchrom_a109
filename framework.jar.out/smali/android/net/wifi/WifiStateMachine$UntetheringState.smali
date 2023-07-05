.class Landroid/net/wifi/WifiStateMachine$UntetheringState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UntetheringState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 5620
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 5623
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$UntetheringState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$36700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5626
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x2001e

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$34204(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 5628
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 5631
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$UntetheringState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$36800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5632
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 5661
    const/4 v1, 0x0

    .line 5663
    :goto_0
    return v1

    .line 5634
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 5637
    .local v0, "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$34400(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5663
    .end local v0    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :cond_0
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 5639
    .restart local v0    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$32900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$36900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 5642
    .end local v0    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$34200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 5643
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Failed to get tether update, force stop access point"

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$37000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5644
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$32900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$37100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 5658
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$UntetheringState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$37200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 5632
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_1
        0x20048 -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
    .end sparse-switch
.end method

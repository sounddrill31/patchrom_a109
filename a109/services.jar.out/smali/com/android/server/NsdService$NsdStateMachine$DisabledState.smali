.class Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/NsdService;->access$700(Lcom/android/server/NsdService;Z)V

    .line 212
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-static {v1}, Lcom/android/server/NsdService$NsdStateMachine;->access$800(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->access$900(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V

    .line 223
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x60018
        :pswitch_0
    .end packed-switch
.end method

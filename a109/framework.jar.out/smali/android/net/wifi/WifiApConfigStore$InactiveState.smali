.class Landroid/net/wifi/WifiApConfigStore$InactiveState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiApConfigStore;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    .line 112
    :pswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1, v0}, Landroid/net/wifi/WifiApConfigStore;->access$002(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 113
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    invoke-static {v1}, Landroid/net/wifi/WifiApConfigStore;->access$200(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiApConfigStore;->access$300(Landroid/net/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V

    .line 118
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
    .end packed-switch
.end method

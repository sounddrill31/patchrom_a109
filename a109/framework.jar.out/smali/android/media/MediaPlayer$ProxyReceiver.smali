.class Landroid/media/MediaPlayer$ProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 3096
    iput-object p1, p0, Landroid/media/MediaPlayer$ProxyReceiver;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaPlayer;
    .param p2, "x1"    # Landroid/media/MediaPlayer$1;

    .prologue
    .line 3096
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$ProxyReceiver;-><init>(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3099
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3100
    iget-object v0, p0, Landroid/media/MediaPlayer$ProxyReceiver;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0, p2}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;Landroid/content/Intent;)V

    .line 3102
    :cond_0
    return-void
.end method

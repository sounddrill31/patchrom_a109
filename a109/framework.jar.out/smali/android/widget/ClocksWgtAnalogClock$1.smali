.class Landroid/widget/ClocksWgtAnalogClock$1;
.super Landroid/content/BroadcastReceiver;
.source "ClocksWgtAnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ClocksWgtAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ClocksWgtAnalogClock;


# direct methods
.method constructor <init>(Landroid/widget/ClocksWgtAnalogClock;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Landroid/widget/ClocksWgtAnalogClock$1;->this$0:Landroid/widget/ClocksWgtAnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 444
    iget-object v0, p0, Landroid/widget/ClocksWgtAnalogClock$1;->this$0:Landroid/widget/ClocksWgtAnalogClock;

    invoke-static {v0}, Landroid/widget/ClocksWgtAnalogClock;->access$000(Landroid/widget/ClocksWgtAnalogClock;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Landroid/widget/ClocksWgtAnalogClock$1;->this$0:Landroid/widget/ClocksWgtAnalogClock;

    invoke-static {v0}, Landroid/widget/ClocksWgtAnalogClock;->access$100(Landroid/widget/ClocksWgtAnalogClock;)V

    .line 448
    iget-object v0, p0, Landroid/widget/ClocksWgtAnalogClock$1;->this$0:Landroid/widget/ClocksWgtAnalogClock;

    invoke-virtual {v0}, Landroid/widget/ClocksWgtAnalogClock;->invalidate()V

    goto :goto_0
.end method

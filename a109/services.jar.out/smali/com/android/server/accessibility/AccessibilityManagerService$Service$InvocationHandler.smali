.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_NODE_INFO_CACHE:I = 0x3

.field public static final MSG_ON_GESTURE:I = 0x1

.field public static final MSG_ON_KEY_EVENT:I = 0x2

.field public static final MSG_ON_KEY_EVENT_TIMEOUT:I = 0x4


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2562
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2563
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2564
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2568
    iget v4, p1, Landroid/os/Message;->what:I

    .line 2569
    .local v4, "type":I
    packed-switch v4, :pswitch_data_0

    .line 2587
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2571
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2572
    .local v2, "gestureId":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    .line 2590
    .end local v2    # "gestureId":I
    :goto_0
    return-void

    .line 2575
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 2576
    .local v0, "event":Landroid/view/KeyEvent;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2577
    .local v3, "policyFlags":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v5, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->access$3800(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 2580
    .end local v0    # "event":Landroid/view/KeyEvent;
    .end local v3    # "policyFlags":I
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->access$3900(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_0

    .line 2583
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 2584
    .local v1, "eventState":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    const/4 v6, 0x0

    iget v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setOnKeyEventResult(ZI)V

    goto :goto_0

    .line 2569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class Lcom/android/server/wm/DisplayMagnifier$MyHandler;
.super Landroid/os/Handler;
.source "DisplayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_NOTIFY_MAGNIFIED_BOUNDS_CHANGED:I = 0x1

.field public static final MESSAGE_NOTIFY_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field public static final MESSAGE_NOTIFY_ROTATION_CHANGED:I = 0x4

.field public static final MESSAGE_NOTIFY_USER_CONTEXT_CHANGED:I = 0x3

.field public static final MESSAGE_ON_ROTATION_CHANGED:I = 0x6

.field public static final MESSAGE_SHOW_MAGNIFIED_REGION_BOUNDS_IF_NEEDED:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayMagnifier;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    .line 706
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 707
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 711
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 767
    :goto_0
    return-void

    .line 713
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    .line 715
    .local v2, "bounds":Landroid/graphics/Region;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/IMagnificationCallbacks;->onMagnifedBoundsChanged(Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    .line 716
    :catch_0
    move-exception v7

    .line 719
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    throw v7

    .line 723
    .end local v2    # "bounds":Landroid/graphics/Region;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 724
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 725
    .local v3, "left":I
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 726
    .local v6, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 727
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 729
    .local v1, "bottom":I
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v3, v6, v4, v1}, Landroid/view/IMagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 733
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 730
    :catch_1
    move-exception v7

    .line 733
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_1
    move-exception v7

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v7

    .line 738
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    :pswitch_2
    :try_start_2
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/IMagnificationCallbacks;->onUserContextChanged()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 739
    :catch_2
    move-exception v7

    goto :goto_0

    .line 744
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 746
    .local v5, "rotation":I
    :try_start_3
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/IMagnificationCallbacks;->onRotationChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 747
    :catch_3
    move-exception v7

    goto :goto_0

    .line 752
    .end local v5    # "rotation":I
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 753
    :try_start_4
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1400(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 754
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1400(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 755
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 757
    :cond_0
    monitor-exit v8

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    .line 761
    :pswitch_5
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 762
    :try_start_5
    iget-object v7, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v7}, Lcom/android/server/wm/DisplayMagnifier;->access$1400(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->onRotationChangedLocked()V

    .line 763
    monitor-exit v8

    goto/16 :goto_0

    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v7

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.class public abstract Landroid/view/DisplayEventReceiver;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# static fields
.field private static final DEBUG_DEFAULT:Z

.field private static final IS_ENG_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "DisplayEventReceiver"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/DisplayEventReceiver;->IS_ENG_BUILD:Z

    .line 39
    sget-boolean v0, Landroid/view/DisplayEventReceiver;->IS_ENG_BUILD:Z

    sput-boolean v0, Landroid/view/DisplayEventReceiver;->DEBUG_DEFAULT:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 64
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {p0, v0}, Landroid/view/DisplayEventReceiver;->nativeInit(Landroid/view/DisplayEventReceiver;Landroid/os/MessageQueue;)I

    move-result v0

    iput v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    .line 66
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private dispatchHotplug(JIZ)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "connected"    # Z

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onHotplug(JIZ)V

    .line 152
    return-void
.end method

.method private dispatchVsync(JII)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onVsync(JII)V

    .line 146
    return-void
.end method

.method private dispose(Z)V
    .locals 1
    .param p1, "finalized"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 93
    :cond_1
    iget v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    if-eqz v0, :cond_2

    .line 94
    iget v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    invoke-static {v0}, Landroid/view/DisplayEventReceiver;->nativeDispose(I)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    .line 97
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 98
    return-void
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeInit(Landroid/view/DisplayEventReceiver;Landroid/os/MessageQueue;)I
.end method

.method private static native nativeScheduleVsync(I)V
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V

    .line 83
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public onHotplug(JIZ)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "connected"    # Z

    .prologue
    .line 124
    return-void
.end method

.method public onVsync(JII)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    .prologue
    .line 112
    return-void
.end method

.method public scheduleVsync()V
    .locals 3

    .prologue
    .line 131
    iget v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    if-nez v0, :cond_0

    .line 132
    const-string v0, "DisplayEventReceiver"

    const-string v1, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-boolean v0, Landroid/view/DisplayEventReceiver;->DEBUG_DEFAULT:Z

    if-eqz v0, :cond_1

    .line 136
    const-string v0, "DisplayEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call nativeScheduleVsync mReceiverPtr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    iget v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    invoke-static {v0}, Landroid/view/DisplayEventReceiver;->nativeScheduleVsync(I)V

    goto :goto_0
.end method

.class Landroid/hardware/camera2/impl/CameraDevice$4;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDevice;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDevice;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice$4;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$4;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$4;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$100(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/hardware/camera2/CameraDevice$StateListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$4;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice$StateListener;->onBusy(Landroid/hardware/camera2/CameraDevice;)V

    .line 104
    :cond_0
    return-void
.end method

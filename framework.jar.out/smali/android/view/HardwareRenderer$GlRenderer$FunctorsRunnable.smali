.class Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer$GlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FunctorsRunnable"
.end annotation


# instance fields
.field attachInfo:Landroid/view/View$AttachInfo;

.field final synthetic this$0:Landroid/view/HardwareRenderer$GlRenderer;


# direct methods
.method constructor <init>(Landroid/view/HardwareRenderer$GlRenderer;)V
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1470
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 1471
    .local v0, "renderer":Landroid/view/HardwareRenderer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    if-eq v0, v2, :cond_1

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContext()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1476
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget-object v2, v2, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    invoke-static {v3}, Landroid/view/HardwareRenderer$GlRenderer;->access$200(Landroid/view/HardwareRenderer$GlRenderer;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/HardwareCanvas;->invokeFunctors(Landroid/graphics/Rect;)I

    move-result v1

    .line 1477
    .local v1, "status":I
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    invoke-static {v2, v3, v1}, Landroid/view/HardwareRenderer$GlRenderer;->access$300(Landroid/view/HardwareRenderer$GlRenderer;Landroid/view/View$AttachInfo;I)V

    goto :goto_0
.end method

.class Landroid/widget/BounceGallery$2;
.super Ljava/lang/Object;
.source "BounceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/BounceGallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BounceGallery;


# direct methods
.method constructor <init>(Landroid/widget/BounceGallery;)V
    .locals 0

    .prologue
    .line 1116
    iput-object p1, p0, Landroid/widget/BounceGallery$2;->this$0:Landroid/widget/BounceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Landroid/widget/BounceGallery$2;->this$0:Landroid/widget/BounceGallery;

    invoke-static {v0}, Landroid/widget/BounceGallery;->access$200(Landroid/widget/BounceGallery;)V

    .line 1119
    return-void
.end method

.class final Landroid/widget/BounceGallery$CheckForTap;
.super Ljava/lang/Object;
.source "BounceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BounceGallery;


# direct methods
.method constructor <init>(Landroid/widget/BounceGallery;)V
    .locals 0

    .prologue
    .line 1749
    iput-object p1, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1752
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckForTap: mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-static {v5}, Landroid/widget/BounceGallery;->access$300(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mFirstPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget v5, v5, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDataChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget-boolean v5, v5, Landroid/widget/BounceGallery;->mDataChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-static {v5}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-static {v3}, Landroid/widget/BounceGallery;->access$300(Landroid/widget/BounceGallery;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1758
    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget-object v4, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-static {v4}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget v5, v5, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1760
    .local v0, "child":Landroid/view/View;
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckForTap: child = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget-boolean v3, v3, Landroid/widget/BounceGallery;->mDataChanged:Z

    if-nez v3, :cond_1

    .line 1764
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1765
    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v3, v6}, Landroid/widget/BounceGallery;->setPressed(Z)V

    .line 1767
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 1768
    .local v2, "longPressTimeout":I
    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v3}, Landroid/widget/BounceGallery;->isLongClickable()Z

    move-result v1

    .line 1770
    .local v1, "longClickable":Z
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckForTap longClickable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mFirstPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget v5, v5, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-static {v5}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    if-eqz v1, :cond_1

    .line 1776
    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-static {v3}, Landroid/widget/BounceGallery;->access$500(Landroid/widget/BounceGallery;)Landroid/widget/BounceGallery$CheckForLongPress;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1777
    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    new-instance v4, Landroid/widget/BounceGallery$CheckForLongPress;

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/widget/BounceGallery$CheckForLongPress;-><init>(Landroid/widget/BounceGallery;Landroid/widget/BounceGallery$1;)V

    invoke-static {v3, v4}, Landroid/widget/BounceGallery;->access$502(Landroid/widget/BounceGallery;Landroid/widget/BounceGallery$CheckForLongPress;)Landroid/widget/BounceGallery$CheckForLongPress;

    .line 1779
    :cond_0
    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-static {v3}, Landroid/widget/BounceGallery;->access$500(Landroid/widget/BounceGallery;)Landroid/widget/BounceGallery$CheckForLongPress;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BounceGallery$CheckForLongPress;->rememberWindowAttachCount()V

    .line 1780
    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget-object v4, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-static {v4}, Landroid/widget/BounceGallery;->access$500(Landroid/widget/BounceGallery;)Landroid/widget/BounceGallery$CheckForLongPress;

    move-result-object v4

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/BounceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1784
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "longClickable":Z
    .end local v2    # "longPressTimeout":I
    :cond_1
    return-void
.end method

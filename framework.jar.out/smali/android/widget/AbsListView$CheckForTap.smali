.class final Landroid/widget/AbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 3221
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 3224
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_2

    .line 3225
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v7, v4, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3226
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3228
    .local v0, "child":Landroid/view/View;
    const-string v4, "AbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckForTap:mFirstPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mMotionPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",child = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3232
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3234
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_5

    .line 3235
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3236
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3237
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3238
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3239
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 3241
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 3242
    .local v3, "longPressTimeout":I
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    .line 3244
    .local v2, "longClickable":Z
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 3245
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3246
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 3247
    if-eqz v2, :cond_3

    .line 3248
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3255
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 3256
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3257
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    new-instance v5, Landroid/widget/AbsListView$CheckForLongPress;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$702(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;

    .line 3259
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 3260
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3269
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_2
    :goto_1
    return-void

    .line 3250
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 3262
    :cond_4
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v8, v4, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_1

    .line 3265
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_5
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v8, v4, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_1
.end method

.class Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private mDeltaTime:J

.field private mDeltaX:I

.field private mDeltaY:I

.field private mEffectiveRampDown:I

.field private mRampDownDuration:I

.field private mRampUpDuration:I

.field private mStartTime:J

.field private mStopTime:J

.field private mStopValue:F

.field private mTargetVelocityX:F

.field private mTargetVelocityY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 744
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 745
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 746
    iput v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 747
    iput v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 748
    return-void
.end method

.method private getValueAt(J)F
    .locals 10
    .param p1, "currentTime"    # J

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 786
    iget-wide v5, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v5, p1, v5

    if-gez v5, :cond_0

    .line 793
    :goto_0
    return v4

    .line 788
    :cond_0
    iget-wide v5, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    iget-wide v5, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v5, p1, v5

    if-gez v5, :cond_2

    .line 789
    :cond_1
    iget-wide v5, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v2, p1, v5

    .line 790
    .local v2, "elapsedSinceStart":J
    const/high16 v5, 0x3f000000    # 0.5f

    long-to-float v6, v2

    iget v7, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6, v4, v9}, Lcom/android/internal/widget/AutoScrollHelper;->access$900(FFF)F

    move-result v4

    mul-float/2addr v4, v5

    goto :goto_0

    .line 792
    .end local v2    # "elapsedSinceStart":J
    :cond_2
    iget-wide v5, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    sub-long v0, p1, v5

    .line 793
    .local v0, "elapsedSinceEnd":J
    iget v5, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-float v5, v9, v5

    iget v6, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    long-to-float v7, v0

    iget v8, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7, v4, v9}, Lcom/android/internal/widget/AutoScrollHelper;->access$900(FFF)F

    move-result v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    goto :goto_0
.end method

.method private interpolateValue(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 806
    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public computeScrollDelta()V
    .locals 10

    .prologue
    .line 817
    iget-wide v6, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 818
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Cannot compute scroll delta before calling start()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 821
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 822
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v5

    .line 823
    .local v5, "value":F
    invoke-direct {p0, v5}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    move-result v4

    .line 824
    .local v4, "scale":F
    iget-wide v6, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v2, v0, v6

    .line 826
    .local v2, "elapsedSinceDelta":J
    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 827
    long-to-float v6, v2

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 828
    long-to-float v6, v2

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 829
    return-void
.end method

.method public getDeltaX()I
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    return v0
.end method

.method public getDeltaY()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return v0
.end method

.method public getHorizontalDirection()I
    .locals 2

    .prologue
    .line 843
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getVerticalDirection()I
    .locals 2

    .prologue
    .line 847
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 6

    .prologue
    .line 781
    iget-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v4, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestStop()V
    .locals 5

    .prologue
    .line 774
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 775
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    invoke-static {v2, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->access$800(III)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 776
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 777
    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 778
    return-void
.end method

.method public setRampDownDuration(I)V
    .locals 0
    .param p1, "durationMillis"    # I

    .prologue
    .line 755
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    .line 756
    return-void
.end method

.method public setRampUpDuration(I)V
    .locals 0
    .param p1, "durationMillis"    # I

    .prologue
    .line 751
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    .line 752
    return-void
.end method

.method public setTargetVelocity(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 838
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    .line 839
    iput p2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 840
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 762
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 763
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 764
    iget-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 765
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 766
    iput v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 767
    iput v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 768
    return-void
.end method

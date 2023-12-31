.class public Landroid/widget/BounceGallery;
.super Landroid/widget/AbsSpinner;
.source "BounceGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BounceGallery$OnSelectionChangeListener;,
        Landroid/widget/BounceGallery$FlingRunnable;,
        Landroid/widget/BounceGallery$CheckForLongPress;,
        Landroid/widget/BounceGallery$WindowRunnnable;,
        Landroid/widget/BounceGallery$CheckForTap;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_KEY:Z = true

.field private static final DBG_LAYOUT:Z = true

.field private static final DBG_MOTION:Z = true

.field private static final DEFAULT_UNSELECTED_ALPHA:F = 0.5f

.field private static final OVER_DIST_SCALED_RAT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BounceGallery"

.field private static final TOUCH_MODE_DOWN:I = 0x0

.field private static final TOUCH_MODE_FLING:I = 0x2

.field private static final TOUCH_MODE_OVERFLING:I = 0x4

.field private static final TOUCH_MODE_OVERSCROLL:I = 0x3

.field private static final TOUCH_MODE_REST:I = -0x1

.field private static final TOUCH_MODE_SCROLL:I = 0x1


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDirection:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDistanceLeft:I

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

.field private mGravity:I

.field private mLastMotionX:I

.field private mLeftMost:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedOverscroll:Z

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mUnselectedAlpha:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BounceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 273
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/BounceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    iput v10, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 143
    const/16 v7, 0x190

    iput v7, p0, Landroid/widget/BounceGallery;->mAnimationDuration:I

    .line 201
    iput-boolean v11, p0, Landroid/widget/BounceGallery;->mShouldCallbackDuringFling:Z

    .line 206
    iput-boolean v11, p0, Landroid/widget/BounceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 255
    new-instance v7, Landroid/widget/BounceGallery$FlingRunnable;

    invoke-direct {v7, p0}, Landroid/widget/BounceGallery$FlingRunnable;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v7, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    .line 261
    new-instance v7, Landroid/widget/BounceGallery$1;

    invoke-direct {v7, p0}, Landroid/widget/BounceGallery$1;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v7, p0, Landroid/widget/BounceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 279
    iget-object v7, p0, Landroid/widget/BounceGallery;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 282
    .local v6, "windowManager":Landroid/view/WindowManager;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 283
    .local v5, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    iput v7, p0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    .line 284
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    iput v7, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    .line 286
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Landroid/widget/BounceGallery;->mTouchSlop:I

    .line 287
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    iput v7, p0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    .line 288
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    iput v7, p0, Landroid/widget/BounceGallery;->mMaximumVelocity:I

    .line 289
    invoke-virtual {p0, v9}, Landroid/widget/BounceGallery;->setHorizontalScrollBarEnabled(Z)V

    .line 292
    sget-object v7, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 294
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    sget-object v7, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 301
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 302
    invoke-virtual {p0, v2}, Landroid/widget/BounceGallery;->setGravity(I)V

    .line 305
    :cond_0
    invoke-virtual {v0, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 307
    .local v1, "animationDuration":I
    if-lez v1, :cond_1

    .line 308
    invoke-virtual {p0, v1}, Landroid/widget/BounceGallery;->setAnimationDuration(I)V

    .line 311
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 313
    .local v3, "spacing":I
    invoke-virtual {p0, v3}, Landroid/widget/BounceGallery;->setSpacing(I)V

    .line 315
    const/4 v7, 0x3

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 318
    .local v4, "unselectedAlpha":F
    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->setUnselectedAlpha(F)V

    .line 320
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    iget v7, p0, Landroid/widget/BounceGallery;->mGroupFlags:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Landroid/widget/BounceGallery;->mGroupFlags:I

    .line 324
    iget v7, p0, Landroid/widget/BounceGallery;->mGroupFlags:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Landroid/widget/BounceGallery;->mGroupFlags:I

    .line 325
    return-void
.end method

.method static synthetic access$002(Landroid/widget/BounceGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/BounceGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/BounceGallery;Landroid/view/View;IJ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/BounceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/BounceGallery;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/BounceGallery;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/widget/BounceGallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/BounceGallery;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/widget/BounceGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/BounceGallery;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/widget/BounceGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/BounceGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mDistanceLeft:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/BounceGallery;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mNeedOverscroll:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/widget/BounceGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/BounceGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mNeedOverscroll:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/BounceGallery;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/BounceGallery;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    return p1
.end method

.method static synthetic access$3100(Landroid/widget/BounceGallery;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 90
    invoke-virtual/range {p0 .. p9}, Landroid/widget/BounceGallery;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/BounceGallery;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 90
    invoke-virtual/range {p0 .. p9}, Landroid/widget/BounceGallery;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/BounceGallery;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/BounceGallery;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/BounceGallery;)Landroid/widget/BounceGallery$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$502(Landroid/widget/BounceGallery;Landroid/widget/BounceGallery$CheckForLongPress;)Landroid/widget/BounceGallery$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Landroid/widget/BounceGallery;
    .param p1, "x1"    # Landroid/widget/BounceGallery$CheckForLongPress;

    .prologue
    .line 90
    iput-object p1, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$700(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/BounceGallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BounceGallery;

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    .line 989
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getMeasuredHeight()I

    move-result v3

    .line 990
    .local v3, "myHeight":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 992
    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    .line 994
    .local v2, "childTop":I
    iget v4, p0, Landroid/widget/BounceGallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1009
    :goto_2
    return v2

    .line 989
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getHeight()I

    move-result v3

    goto :goto_0

    .line 990
    .restart local v3    # "myHeight":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 996
    .restart local v1    # "childHeight":I
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 997
    goto :goto_2

    .line 999
    :sswitch_1
    iget-object v4, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1001
    .local v0, "availableSpace":I
    iget-object v4, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1002
    goto :goto_2

    .line 1004
    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    .line 1005
    goto :goto_2

    .line 994
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10
    .param p1, "toLeft"    # Z

    .prologue
    .line 580
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v6

    .line 581
    .local v6, "numChildren":I
    iget v2, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    .line 582
    .local v2, "firstPosition":I
    const/4 v7, 0x0

    .line 583
    .local v7, "start":I
    const/4 v1, 0x0

    .line 585
    .local v1, "count":I
    if-eqz p1, :cond_3

    .line 586
    iget v3, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    .line 587
    .local v3, "galleryLeft":I
    const/4 v0, 0x0

    .line 588
    .local v0, "child":Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 589
    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 612
    .end local v3    # "galleryLeft":I
    :cond_0
    invoke-virtual {p0, v7, v1}, Landroid/widget/BounceGallery;->detachViewsFromParent(II)V

    .line 614
    if-eqz p1, :cond_1

    .line 615
    iget v8, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    .line 617
    :cond_1
    return-void

    .line 593
    .restart local v3    # "galleryLeft":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 594
    iget-object v8, p0, Landroid/widget/BounceGallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 588
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 598
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 599
    .local v4, "galleryRight":I
    const/4 v0, 0x0

    .line 600
    .restart local v0    # "child":Landroid/view/View;
    add-int/lit8 v5, v6, -0x1

    .restart local v5    # "i":I
    :goto_1
    if-ltz v5, :cond_0

    .line 601
    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 605
    move v7, v5

    .line 606
    add-int/lit8 v1, v1, 0x1

    .line 607
    iget-object v8, p0, Landroid/widget/BounceGallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 600
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 1039
    if-eqz p1, :cond_0

    .line 1040
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1043
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->setPressed(Z)V

    .line 1044
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1047
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1048
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1047
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1051
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/BounceGallery;->setPressed(Z)V

    .line 1052
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 798
    iget v3, p0, Landroid/widget/BounceGallery;->mSpacing:I

    .line 799
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    .line 802
    .local v2, "galleryLeft":I
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v4

    .line 803
    .local v4, "numChildren":I
    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v7, v4, -0x1

    :goto_0
    invoke-virtual {p0, v7}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 804
    .local v6, "prevIterationView":Landroid/view/View;
    iget v5, p0, Landroid/widget/BounceGallery;->mItemCount:I

    .line 805
    .local v5, "numItems":I
    const/4 v0, 0x0

    .line 806
    .local v0, "curPosition":I
    const/4 v1, 0x0

    .line 808
    .local v1, "curRightEdge":I
    if-eqz v6, :cond_4

    .line 809
    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    add-int v0, v7, v4

    .line 810
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 819
    :goto_2
    const-string v7, "BounceGallery"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fillToGalleryLeft:curRightEdge = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",galleryLeft = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",curPosition = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mSelectedPosition = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mFirstPosition = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_3
    if-le v1, v2, :cond_7

    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v7

    if-eqz v7, :cond_6

    if-ge v0, v5, :cond_7

    .line 825
    :cond_0
    iget v7, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    sub-int v7, v0, v7

    invoke-direct {p0, v0, v7, v1, v8}, Landroid/widget/BounceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 829
    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v7

    if-nez v7, :cond_1

    iput v0, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    .line 832
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 833
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    .end local v5    # "numItems":I
    .end local v6    # "prevIterationView":Landroid/view/View;
    :cond_2
    move v7, v8

    .line 803
    goto/16 :goto_0

    .line 809
    .restart local v0    # "curPosition":I
    .restart local v1    # "curRightEdge":I
    .restart local v5    # "numItems":I
    .restart local v6    # "prevIterationView":Landroid/view/View;
    :cond_3
    iget v7, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    add-int/lit8 v0, v7, -0x1

    goto :goto_1

    .line 813
    :cond_4
    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Landroid/widget/BounceGallery;->mItemCount:I

    add-int/lit8 v0, v7, -0x1

    .line 814
    :goto_4
    iget v7, p0, Landroid/widget/BounceGallery;->mRight:I

    iget v9, p0, Landroid/widget/BounceGallery;->mLeft:I

    sub-int/2addr v7, v9

    iget v9, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    sub-int v1, v7, v9

    .line 815
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    goto/16 :goto_2

    :cond_5
    move v0, v8

    .line 813
    goto :goto_4

    .line 824
    :cond_6
    if-gez v0, :cond_0

    .line 835
    :cond_7
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 838
    iget v3, p0, Landroid/widget/BounceGallery;->mSpacing:I

    .line 839
    .local v3, "itemSpacing":I
    iget v7, p0, Landroid/widget/BounceGallery;->mRight:I

    iget v8, p0, Landroid/widget/BounceGallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 840
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v4

    .line 841
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/BounceGallery;->mItemCount:I

    .line 843
    .local v5, "numItems":I
    if-nez v4, :cond_1

    .line 844
    const-string v7, "BounceGallery"

    const-string v8, "No child when fill gallery right!"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    return-void

    .line 848
    :cond_1
    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0, v7}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 850
    .local v6, "prevIterationView":Landroid/view/View;
    const/4 v1, 0x0

    .line 851
    .local v1, "curPosition":I
    const/4 v0, 0x0

    .line 853
    .local v0, "curLeftEdge":I
    if-eqz v6, :cond_5

    .line 854
    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    add-int/lit8 v1, v7, -0x1

    .line 855
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 867
    :goto_2
    const-string v7, "BounceGallery"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fillToGalleryRight: curLeftEdge = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",galleryRight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",curPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mSelectedPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mFirstPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",numItems = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :goto_3
    if-ge v0, v2, :cond_0

    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v7

    if-eqz v7, :cond_7

    if-ltz v1, :cond_0

    .line 874
    :goto_4
    iget v7, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v10}, Landroid/widget/BounceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 877
    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v7

    if-eqz v7, :cond_2

    iput v1, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    .line 880
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 881
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 848
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    .end local v6    # "prevIterationView":Landroid/view/View;
    :cond_3
    add-int/lit8 v7, v4, -0x1

    goto/16 :goto_0

    .line 854
    .restart local v0    # "curLeftEdge":I
    .restart local v1    # "curPosition":I
    .restart local v6    # "prevIterationView":Landroid/view/View;
    :cond_4
    iget v7, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    add-int v1, v7, v4

    goto :goto_1

    .line 857
    :cond_5
    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 858
    const/4 v1, 0x0

    .line 862
    :goto_5
    iget v0, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    .line 863
    iput-boolean v10, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    goto/16 :goto_2

    .line 860
    :cond_6
    iget v7, p0, Landroid/widget/BounceGallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    iput v1, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    goto :goto_5

    .line 873
    :cond_7
    if-ge v1, v5, :cond_0

    goto :goto_4
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 560
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getSemmChildDrawingOrder(III)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I
    .param p3, "selectedIndex"    # I

    .prologue
    .line 1272
    if-ne p2, p3, :cond_0

    .line 1273
    add-int/lit8 v0, p1, -0x1

    .line 1277
    :goto_0
    return v0

    .line 1274
    :cond_0
    if-lt p2, p3, :cond_1

    .line 1275
    sub-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    goto :goto_0

    .line 1277
    :cond_1
    add-int/lit8 v0, p1, -0x1

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private handleTouchDown(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1420
    iget v0, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1444
    :pswitch_0
    iput v1, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1447
    invoke-virtual {p0, p1, p2}, Landroid/widget/BounceGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    .line 1448
    iget v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1449
    iget v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    .line 1450
    iget-object v0, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1453
    :cond_0
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 1454
    new-instance v0, Landroid/widget/BounceGallery$CheckForTap;

    invoke-direct {v0, p0}, Landroid/widget/BounceGallery$CheckForTap;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 1456
    :cond_1
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/BounceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1460
    :cond_2
    :goto_0
    return-void

    .line 1422
    :pswitch_1
    iget-object v0, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/BounceGallery$FlingRunnable;->stop(Z)V

    .line 1423
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    if-nez v0, :cond_3

    .line 1424
    iput v2, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    goto :goto_0

    .line 1426
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    goto :goto_0

    .line 1432
    :pswitch_2
    iput v2, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1434
    invoke-virtual {p0, p1, p2}, Landroid/widget/BounceGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    .line 1435
    iget v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 1436
    iget v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    .line 1437
    iget-object v0, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1420
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleTouchMove(III)V
    .locals 18
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "deltaX"    # I

    .prologue
    .line 1463
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 1569
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1466
    :pswitch_1
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch move from touch down: mLastMotionX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDownTouchPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mVelocityTracker = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/BounceGallery;->startScrollIfNeeded(I)Z

    goto :goto_0

    .line 1479
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    .line 1480
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/BounceGallery;->trackMotionScroll(I)V

    .line 1482
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/BounceGallery;->mFirstPosition:I

    .line 1483
    .local v12, "firstPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v2

    add-int v13, v12, v2

    .line 1489
    .local v13, "lastPosition":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1490
    if-gez p3, :cond_2

    if-nez v12, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 1492
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1510
    :cond_1
    :goto_1
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch move from scroll: mTouchMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mLastMotionX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDownTouchPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mFirstPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mVelocityTracker = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BounceGallery;->mLastMotionX:I

    goto/16 :goto_0

    .line 1493
    :cond_2
    if-lez p3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BounceGallery;->mItemCount:I

    if-ne v13, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 1496
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    goto/16 :goto_1

    .line 1499
    :cond_3
    if-lez p3, :cond_4

    if-nez v12, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 1501
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    goto/16 :goto_1

    .line 1502
    :cond_4
    if-gez p3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BounceGallery;->mItemCount:I

    if-ne v13, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 1505
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    goto/16 :goto_1

    .line 1523
    .end local v12    # "firstPosition":I
    .end local v13    # "lastPosition":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BounceGallery;->mScrollX:I

    move/from16 v16, v0

    .line 1524
    .local v16, "oldScroll":I
    sub-int v15, v16, p3

    .line 1525
    .local v15, "newScroll":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BounceGallery;->mScrollX:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v14, v2

    .line 1526
    .local v14, "newDirection":I
    mul-int v2, v16, v15

    if-gez v2, :cond_8

    const/16 v17, 0x1

    .line 1529
    .local v17, "scrollDirectionWillChange":Z
    :goto_2
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch move from over scroll: mScrollX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mLastMotionX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDownTouchPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newScroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mFirstPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDirection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mVelocityTracker = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BounceGallery;->mDirection:I

    if-nez v2, :cond_5

    .line 1538
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/BounceGallery;->mDirection:I

    .line 1541
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BounceGallery;->mDirection:I

    if-ne v2, v14, :cond_6

    if-eqz v17, :cond_9

    .line 1547
    :cond_6
    neg-int v0, v15

    move/from16 p3, v0

    .line 1548
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/BounceGallery;->mScrollX:I

    .line 1554
    if-eqz p3, :cond_7

    .line 1555
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/BounceGallery;->trackMotionScroll(I)V

    .line 1557
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1564
    :goto_3
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/BounceGallery;->mDirection:I

    .line 1565
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BounceGallery;->mLastMotionX:I

    goto/16 :goto_0

    .line 1526
    .end local v17    # "scrollDirectionWillChange":Z
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1560
    .restart local v17    # "scrollDirectionWillChange":Z
    :cond_9
    move/from16 v0, p3

    neg-int v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mScrollX:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/widget/BounceGallery;->overScrollBy(IIIIIIIIZ)Z

    .line 1561
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BounceGallery;->invalidate()V

    goto :goto_3

    .line 1463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleTouchUp()V
    .locals 9

    .prologue
    const/16 v6, 0x3e8

    const/4 v8, 0x0

    .line 1572
    iget v5, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    packed-switch v5, :pswitch_data_0

    .line 1661
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1574
    :pswitch_1
    iget v5, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    if-ltz v5, :cond_0

    .line 1575
    iget v5, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v6, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1576
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1577
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1584
    :cond_1
    iget v5, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v6, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Landroid/widget/BounceGallery;->scrollToChild(I)Z

    .line 1589
    iget-boolean v5, p0, Landroid/widget/BounceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v5, :cond_2

    iget v5, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v6, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    if-ne v5, v6, :cond_0

    .line 1591
    :cond_2
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    iget v6, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget-object v7, p0, Landroid/widget/BounceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v8, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-interface {v7, v8}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/BounceGallery;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0

    .line 1599
    .end local v0    # "child":Landroid/view/View;
    :pswitch_2
    iget-boolean v5, p0, Landroid/widget/BounceGallery;->mShouldCallbackDuringFling:Z

    if-nez v5, :cond_3

    .line 1604
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1607
    iget-boolean v5, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    if-nez v5, :cond_3

    .line 1608
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    .line 1611
    :cond_3
    iget-object v1, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1612
    .local v1, "flingVelocityTracker":Landroid/view/VelocityTracker;
    iget v5, p0, Landroid/widget/BounceGallery;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1613
    invoke-virtual {v1, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    float-to-int v4, v5

    .line 1615
    .local v4, "velocityX":I
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch up from scroll: velocityX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mMinimumVelocity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mVelocityTracker = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    if-le v5, v6, :cond_5

    .line 1621
    iget-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    if-nez v5, :cond_4

    .line 1622
    new-instance v5, Landroid/widget/BounceGallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/BounceGallery$FlingRunnable;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    .line 1624
    :cond_4
    iget-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/BounceGallery$FlingRunnable;->startUsingVelocity(I)V

    goto/16 :goto_0

    .line 1626
    :cond_5
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1627
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->onUpOrCancel()V

    goto/16 :goto_0

    .line 1633
    .end local v1    # "flingVelocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "velocityX":I
    :pswitch_3
    iget-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    if-nez v5, :cond_6

    .line 1634
    new-instance v5, Landroid/widget/BounceGallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/BounceGallery$FlingRunnable;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    .line 1637
    :cond_6
    iget-object v3, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1638
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    iget v5, p0, Landroid/widget/BounceGallery;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1639
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v2, v5

    .line 1641
    .local v2, "initialVelocity":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    if-le v5, v6, :cond_7

    .line 1642
    iget-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    neg-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/BounceGallery$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 1644
    :cond_7
    iget-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/BounceGallery$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 1654
    .end local v2    # "initialVelocity":I
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch up from TOUCH_MODE_REST: mDownTouchView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1656
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    .line 1572
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private isRtL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 791
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 903
    .local v0, "child":Landroid/view/View;
    iget-boolean v3, p0, Landroid/widget/BounceGallery;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 904
    iget-object v3, p0, Landroid/widget/BounceGallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 905
    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 912
    .local v2, "childLeft":I
    iget v3, p0, Landroid/widget/BounceGallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/BounceGallery;->mRightMost:I

    .line 913
    iget v3, p0, Landroid/widget/BounceGallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/BounceGallery;->mLeftMost:I

    .line 916
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/BounceGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 928
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .local v1, "child":Landroid/view/View;
    :goto_0
    return-object v1

    .line 923
    .end local v1    # "child":Landroid/view/View;
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/BounceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 926
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/BounceGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 928
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private moveNext()Z
    .locals 2

    .prologue
    .line 1148
    iget v0, p0, Landroid/widget/BounceGallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/BounceGallery;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1149
    iget v0, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->scrollToChild(I)Z

    .line 1150
    const/4 v0, 0x1

    .line 1152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePrevious()Z
    .locals 2

    .prologue
    .line 1139
    iget v0, p0, Landroid/widget/BounceGallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1140
    iget v0, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->scrollToChild(I)Z

    .line 1141
    const/4 v0, 0x1

    .line 1143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 545
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 544
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 547
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 3

    .prologue
    .line 643
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishedMovement: mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    .line 649
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 652
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->invalidate()V

    .line 653
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1730
    const/4 v6, 0x0

    .line 1732
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/BounceGallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Landroid/widget/BounceGallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1737
    :cond_0
    if-nez v6, :cond_1

    .line 1738
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/BounceGallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1739
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1742
    :cond_1
    if-eqz v6, :cond_2

    .line 1743
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->performHapticFeedback(I)Z

    .line 1746
    :cond_2
    return v6
.end method

.method private removeRunnables(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1710
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1712
    .local v0, "handler":Landroid/os/Handler;
    const-string v1, "BounceGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeRunnables runnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",handler = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    if-eqz v0, :cond_0

    .line 1715
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1717
    :cond_0
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 6

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-object v3, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/widget/BounceGallery;->getCenterOfChildWithScroll(Landroid/view/View;)I

    move-result v1

    .line 627
    .local v1, "selectedCenter":I
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v2

    .line 629
    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    .line 631
    .local v0, "scrollAmount":I
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scrollIntoSlots:mSelectedChild = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",selectedCenter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",targetCenter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",scrollAmount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    if-eqz v0, :cond_2

    .line 635
    iget-object v3, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/BounceGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 637
    :cond_2
    invoke-direct {p0}, Landroid/widget/BounceGallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 5
    .param p1, "childPosition"    # I

    .prologue
    .line 1157
    invoke-virtual {p0, p1}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1159
    .local v0, "child":Landroid/view/View;
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scrollToChild: childPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mSelectedPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mFirstPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mScrollX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",child = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    if-eqz v0, :cond_0

    .line 1164
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1166
    .local v1, "distance":I
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scrollToChild: childPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",centerGallery = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",center view = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v2, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/BounceGallery$FlingRunnable;->startUsingDistance(I)V

    .line 1171
    const/4 v2, 0x1

    .line 1174
    .end local v1    # "distance":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 11

    .prologue
    .line 674
    iget-object v7, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    .line 675
    .local v7, "selView":Landroid/view/View;
    iget-object v8, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v3

    .line 680
    .local v3, "galleryCenter":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 684
    :cond_2
    const v2, 0x7fffffff

    .line 685
    .local v2, "closestEdgeDistance":I
    const/4 v6, 0x0

    .line 686
    .local v6, "newSelectedChildIndex":I
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    .line 687
    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 688
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 690
    move v6, v4

    .line 702
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    iget v8, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    add-int v5, v8, v6

    .line 704
    .local v5, "newPos":I
    const-string v8, "BounceGallery"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSelectionToCenterChild: newPos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",newSelectedChildIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mSelectedPosition = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget v8, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 709
    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->setSelectedPositionInt(I)V

    .line 710
    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->setNextSelectedPositionInt(I)V

    .line 711
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->checkSelectionChanged()V

    goto :goto_0

    .line 694
    .end local v5    # "newPos":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 696
    .local v1, "childClosestEdgeDistance":I
    if-ge v1, v2, :cond_5

    .line 697
    move v2, v1

    .line 698
    move v6, v4

    .line 686
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 948
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 949
    .local v6, "lp":Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 950
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 953
    .restart local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_2

    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Landroid/widget/BounceGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 955
    if-nez p2, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 957
    iget v8, p0, Landroid/widget/BounceGallery;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 959
    .local v1, "childHeightSpec":I
    iget v8, p0, Landroid/widget/BounceGallery;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 962
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 965
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/BounceGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 966
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 968
    .local v0, "childBottom":I
    const/4 v2, 0x0

    .line 969
    .local v2, "childLeft":I
    const/4 v3, 0x0

    .line 970
    .local v3, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 971
    .local v7, "width":I
    if-eqz p4, :cond_5

    .line 972
    move v2, p3

    .line 973
    add-int v3, v2, v7

    .line 979
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 980
    return-void

    .line 953
    .end local v0    # "childBottom":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidthSpec":I
    .end local v7    # "width":I
    :cond_1
    const/4 v8, -0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, -0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 955
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 975
    .restart local v0    # "childBottom":I
    .restart local v1    # "childHeightSpec":I
    .restart local v2    # "childLeft":I
    .restart local v3    # "childRight":I
    .restart local v4    # "childTop":I
    .restart local v5    # "childWidthSpec":I
    .restart local v7    # "width":I
    :cond_5
    sub-int v2, p3, v7

    .line 976
    move v3, p3

    goto :goto_2
.end method

.method private startScrollIfNeeded(I)Z
    .locals 8
    .param p1, "deltaX"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1398
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1399
    .local v0, "distance":I
    iget v5, p0, Landroid/widget/BounceGallery;->mScrollX:I

    if-eqz v5, :cond_3

    move v2, v3

    .line 1401
    .local v2, "overscroll":Z
    :goto_0
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startScrollIfNeeded: distance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mScrollX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mScrollX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mTouchSlop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mTouchSlop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mPendingCheckForLongPress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    if-nez v2, :cond_0

    iget v5, p0, Landroid/widget/BounceGallery;->mTouchSlop:I

    if-le v0, v5, :cond_2

    .line 1406
    :cond_0
    if-eqz v2, :cond_4

    const/4 v5, 0x3

    :goto_1
    iput v5, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1407
    iget-object v5, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    invoke-direct {p0, v5}, Landroid/widget/BounceGallery;->removeRunnables(Ljava/lang/Runnable;)V

    .line 1408
    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->setPressed(Z)V

    .line 1409
    iget v5, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v6, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1410
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1411
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1413
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/BounceGallery;->requestDisallowInterceptTouchEvent(Z)V

    move v4, v3

    .line 1416
    .end local v1    # "motionView":Landroid/view/View;
    :cond_2
    return v4

    .end local v2    # "overscroll":Z
    :cond_3
    move v2, v4

    .line 1399
    goto :goto_0

    .restart local v2    # "overscroll":Z
    :cond_4
    move v5, v3

    .line 1406
    goto :goto_1
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1186
    iget-object v1, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    .line 1188
    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1189
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    iput-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    .line 1194
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1195
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1197
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1198
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1205
    :cond_2
    if-eqz v1, :cond_0

    .line 1207
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1212
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 417
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Landroid/widget/BounceGallery;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1074
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 1066
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1069
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 1061
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 435
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 427
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 422
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getCenterOfChildWithScroll(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 570
    invoke-static {p1}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/widget/BounceGallery;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1233
    move v1, p2

    .line 1239
    .local v1, "ret":I
    iget v4, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int v3, v4, v5

    .line 1241
    .local v3, "selectedIndex":I
    if-gez v3, :cond_0

    move v2, v1

    .line 1260
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1243
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, p1

    add-int/lit8 v0, v4, 0x1

    .line 1244
    .local v0, "notSymmNum":I
    if-nez v0, :cond_1

    .line 1245
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/BounceGallery;->getSemmChildDrawingOrder(III)I

    move-result v1

    :goto_1
    move v2, v1

    .line 1260
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 1246
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_1
    if-gez v0, :cond_3

    .line 1247
    mul-int/lit8 v4, v3, 0x2

    if-le p2, v4, :cond_2

    .line 1248
    add-int/lit8 v4, p1, -0x1

    sub-int v1, v4, p2

    goto :goto_1

    .line 1250
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/BounceGallery;->getSemmChildDrawingOrder(III)I

    move-result v1

    goto :goto_1

    .line 1253
    :cond_3
    if-ge p2, v0, :cond_4

    .line 1254
    move v1, p2

    goto :goto_1

    .line 1256
    :cond_4
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/BounceGallery;->getSemmChildDrawingOrder(III)I

    move-result v1

    goto :goto_1
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 392
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 393
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 394
    const/4 v0, 0x1

    return v0

    .line 393
    :cond_0
    iget v0, p0, Landroid/widget/BounceGallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Landroid/widget/BounceGallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    .prologue
    const/4 v5, 0x0

    .line 505
    if-nez p1, :cond_2

    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/widget/BounceGallery;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 507
    .local v3, "extremeItemPosition":I
    :goto_0
    iget v6, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 509
    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_4

    move v5, p2

    .line 532
    :cond_0
    :goto_1
    return v5

    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_1
    move v3, v5

    .line 505
    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/BounceGallery;->isRtL()Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    iget v6, p0, Landroid/widget/BounceGallery;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    goto :goto_0

    .line 513
    .restart local v1    # "extremeChild":Landroid/view/View;
    .restart local v3    # "extremeItemPosition":I
    :cond_4
    invoke-static {v1}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 514
    .local v2, "extremeChildCenter":I
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v4

    .line 516
    .local v4, "galleryCenter":I
    if-eqz p1, :cond_6

    .line 517
    if-le v2, v4, :cond_0

    .line 530
    :cond_5
    sub-int v0, v4, v2

    .line 532
    .local v0, "centerDifference":I
    if-eqz p1, :cond_7

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 523
    .end local v0    # "centerDifference":I
    :cond_6
    if-lt v2, v4, :cond_5

    goto :goto_1

    .line 532
    .restart local v0    # "centerDifference":I
    :cond_7
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method layout(IZ)V
    .locals 7
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 727
    iget-object v4, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 728
    .local v0, "childrenLeft":I
    iget v4, p0, Landroid/widget/BounceGallery;->mRight:I

    iget v5, p0, Landroid/widget/BounceGallery;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 730
    .local v1, "childrenWidth":I
    iget-boolean v4, p0, Landroid/widget/BounceGallery;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 731
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->handleDataChanged()V

    .line 735
    :cond_0
    iget v4, p0, Landroid/widget/BounceGallery;->mItemCount:I

    if-nez v4, :cond_1

    .line 736
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->resetList()V

    .line 785
    :goto_0
    return-void

    .line 741
    :cond_1
    iget v4, p0, Landroid/widget/BounceGallery;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 742
    iget v4, p0, Landroid/widget/BounceGallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->setSelectedPositionInt(I)V

    .line 746
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->recycleAllViews()V

    .line 749
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->detachAllViewsFromParent()V

    .line 755
    iput v6, p0, Landroid/widget/BounceGallery;->mRightMost:I

    .line 756
    iput v6, p0, Landroid/widget/BounceGallery;->mLeftMost:I

    .line 764
    iget v4, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    .line 765
    iget v4, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/BounceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 768
    .local v2, "sel":Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 769
    .local v3, "selectedOffset":I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 771
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryRight()V

    .line 772
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryLeft()V

    .line 775
    iget-object v4, p0, Landroid/widget/BounceGallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 777
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->invalidate()V

    .line 778
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->checkSelectionChanged()V

    .line 780
    iput-boolean v6, p0, Landroid/widget/BounceGallery;->mDataChanged:Z

    .line 781
    iput-boolean v6, p0, Landroid/widget/BounceGallery;->mNeedSync:Z

    .line 782
    iget v4, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->setNextSelectedPositionInt(I)V

    .line 784
    invoke-direct {p0}, Landroid/widget/BounceGallery;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1283
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1290
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1293
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1084
    sparse-switch p1, :sswitch_data_0

    .line 1106
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1086
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/BounceGallery;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1092
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/BounceGallery;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/widget/BounceGallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1099
    :sswitch_2
    iput-boolean v0, p0, Landroid/widget/BounceGallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1084
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1111
    sparse-switch p1, :sswitch_data_0

    .line 1135
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1114
    :sswitch_0
    iget-boolean v1, p0, Landroid/widget/BounceGallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/BounceGallery;->mItemCount:I

    if-lez v1, :cond_0

    .line 1115
    iget-object v1, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/BounceGallery;->dispatchPress(Landroid/view/View;)V

    .line 1116
    new-instance v1, Landroid/widget/BounceGallery$2;

    invoke-direct {v1, p0}, Landroid/widget/BounceGallery$2;-><init>(Landroid/widget/BounceGallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/BounceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1122
    iget v1, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1123
    .local v0, "selectedIndex":I
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/BounceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/BounceGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1128
    .end local v0    # "selectedIndex":I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/BounceGallery;->mReceivedInvokeKeyDown:Z

    .line 1129
    const/4 v1, 0x1

    goto :goto_0

    .line 1111
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/BounceGallery;->mInLayout:Z

    .line 448
    invoke-virtual {p0, v1, v1}, Landroid/widget/BounceGallery;->layout(IZ)V

    .line 449
    iput-boolean v1, p0, Landroid/widget/BounceGallery;->mInLayout:Z

    .line 450
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 1666
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverScrolled: scrollX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",clampedX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mScrollX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/BounceGallery;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    if-eq v0, p1, :cond_0

    .line 1670
    iput p1, p0, Landroid/widget/BounceGallery;->mScrollX:I

    .line 1671
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->invalidateParentIfNeeded()V

    .line 1673
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->awakenScrollBars()Z

    .line 1675
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1325
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 1326
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 1329
    .local v3, "x":I
    iget-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 1330
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1331
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent new mVelocityTracker = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_0
    iget-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1335
    const/4 v2, 0x0

    .line 1336
    .local v2, "handled":Z
    const/4 v1, 0x0

    .line 1338
    .local v1, "deltaX":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 1387
    :goto_0
    return v2

    .line 1341
    :pswitch_0
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch down: mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mLastMotionX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mDownTouchPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mVelocityTracker = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iput v3, p0, Landroid/widget/BounceGallery;->mLastMotionX:I

    .line 1346
    invoke-direct {p0, v3, v4}, Landroid/widget/BounceGallery;->handleTouchDown(II)V

    .line 1347
    const/4 v2, 0x1

    .line 1348
    goto :goto_0

    .line 1352
    :pswitch_1
    iget v5, p0, Landroid/widget/BounceGallery;->mLastMotionX:I

    sub-int v1, v3, v5

    .line 1353
    invoke-direct {p0, v3, v4, v1}, Landroid/widget/BounceGallery;->handleTouchMove(III)V

    .line 1354
    const/4 v2, 0x1

    .line 1355
    goto :goto_0

    .line 1360
    :pswitch_2
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch up: mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mLastMotionX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",deltaX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mScrollX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mScrollX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mDownTouchPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-direct {p0}, Landroid/widget/BounceGallery;->handleTouchUp()V

    .line 1365
    iget-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1

    .line 1366
    iget-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 1367
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1369
    :cond_1
    const/4 v2, 0x1

    .line 1370
    goto/16 :goto_0

    .line 1375
    :pswitch_3
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch cancel: mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mDownTouchView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1379
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1380
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1382
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->onUpOrCancel()V

    .line 1383
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method onUpOrCancel()V
    .locals 3

    .prologue
    .line 1018
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpOrCancel: finished = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-static {v2}, Landroid/widget/BounceGallery$FlingRunnable;->access$100(Landroid/widget/BounceGallery$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mVelocityTracker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->removeRunnables(Ljava/lang/Runnable;)V

    .line 1024
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->removeRunnables(Ljava/lang/Runnable;)V

    .line 1026
    iget-object v0, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-static {v0}, Landroid/widget/BounceGallery$FlingRunnable;->access$100(Landroid/widget/BounceGallery$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-direct {p0}, Landroid/widget/BounceGallery;->scrollIntoSlots()V

    .line 1030
    :cond_0
    invoke-direct {p0}, Landroid/widget/BounceGallery;->dispatchUnpress()V

    .line 1032
    iget-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1036
    :cond_1
    return-void
.end method

.method selectionChanged()V
    .locals 3

    .prologue
    .line 657
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 658
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 661
    :cond_0
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    invoke-interface {v0}, Landroid/widget/BounceGallery$OnSelectionChangeListener;->onSelectionChanged()V

    .line 665
    :cond_1
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectionChanged mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    .prologue
    .line 365
    iput p1, p0, Landroid/widget/BounceGallery;->mAnimationDuration:I

    .line 366
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mShouldCallbackDuringFling:Z

    .line 340
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 352
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 353
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1225
    iget v0, p0, Landroid/widget/BounceGallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1226
    iput p1, p0, Landroid/widget/BounceGallery;->mGravity:I

    .line 1227
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->requestLayout()V

    .line 1229
    :cond_0
    return-void
.end method

.method public setOnSelectionChangeListener(Landroid/widget/BounceGallery$OnSelectionChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/BounceGallery$OnSelectionChangeListener;

    .prologue
    .line 1701
    iput-object p1, p0, Landroid/widget/BounceGallery;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    .line 1702
    return-void
.end method

.method public setOverScrollDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 1725
    iput p1, p0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    .line 1726
    iput p1, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    .line 1727
    return-void
.end method

.method public setOverflingDistance(I)V
    .locals 0
    .param p1, "overflingDistance"    # I

    .prologue
    .line 1692
    iput p1, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    .line 1693
    return-void
.end method

.method public setOverscrollDistance(I)V
    .locals 0
    .param p1, "overscrollDistance"    # I

    .prologue
    .line 1683
    iput p1, p0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    .line 1684
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1179
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1182
    invoke-direct {p0}, Landroid/widget/BounceGallery;->updateSelectedItemMetadata()V

    .line 1183
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 376
    iput p1, p0, Landroid/widget/BounceGallery;->mSpacing:I

    .line 377
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .param p1, "unselectedAlpha"    # F

    .prologue
    .line 387
    iput p1, p0, Landroid/widget/BounceGallery;->mUnselectedAlpha:F

    .line 388
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1313
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1314
    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1315
    .local v0, "index":I
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1316
    .local v1, "v":Landroid/view/View;
    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/BounceGallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/BounceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1319
    .end local v0    # "index":I
    .end local v1    # "v":Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 1302
    invoke-virtual {p0, p1}, Landroid/widget/BounceGallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1303
    .local v2, "longPressPosition":I
    if-gez v2, :cond_0

    .line 1304
    const/4 v3, 0x0

    .line 1308
    :goto_0
    return v3

    .line 1307
    :cond_0
    iget-object v3, p0, Landroid/widget/BounceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1308
    .local v0, "longPressId":J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/BounceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 5
    .param p1, "deltaX"    # I

    .prologue
    const/4 v2, 0x1

    .line 464
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 465
    const-string v2, "BounceGallery"

    const-string/jumbo v3, "trackMotionScroll with no children."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    return-void

    .line 469
    :cond_0
    if-gez p1, :cond_3

    move v1, v2

    .line 471
    .local v1, "toLeft":Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/BounceGallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 472
    .local v0, "limitedDeltaX":I
    if-eq v0, p1, :cond_2

    .line 474
    iget v3, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 475
    iput-boolean v2, p0, Landroid/widget/BounceGallery;->mNeedOverscroll:Z

    .line 476
    sub-int v2, p1, v0

    iput v2, p0, Landroid/widget/BounceGallery;->mDistanceLeft:I

    .line 480
    :cond_1
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trackMotionScroll: may need over scroll, mTouchMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",limitedDeltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDistanceLeft = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mDistanceLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mFirstPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_2
    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->offsetChildrenLeftAndRight(I)V

    .line 488
    invoke-direct {p0, v1}, Landroid/widget/BounceGallery;->detachOffScreenChildren(Z)V

    .line 490
    if-eqz v1, :cond_4

    .line 492
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryRight()V

    .line 499
    :goto_2
    iget-object v2, p0, Landroid/widget/BounceGallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 500
    invoke-direct {p0}, Landroid/widget/BounceGallery;->setSelectionToCenterChild()V

    .line 501
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->invalidate()V

    goto :goto_0

    .line 469
    .end local v0    # "limitedDeltaX":I
    .end local v1    # "toLeft":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 495
    .restart local v0    # "limitedDeltaX":I
    .restart local v1    # "toLeft":Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryLeft()V

    goto :goto_2
.end method

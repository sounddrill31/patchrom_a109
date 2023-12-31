.class final Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
.super Ljava/lang/Object;
.source "DisplayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedViewport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;
    }
.end annotation


# static fields
.field private static final DEFAUTLT_BORDER_WIDTH_DIP:I = 0x5


# instance fields
.field private final mBorderWidth:I

.field private mFullRedrawNeeded:Z

.field private final mHalfBorderWidth:I

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mMagnifiedBounds:Landroid/graphics/Region;

.field private final mOldMagnifiedBounds:Landroid/graphics/Region;

.field private final mTempFloats:[F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempWindowStateInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/server/wm/DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayMagnifier;)V
    .locals 4

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempWindowStateInfos:Landroid/util/SparseArray;

    .line 251
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    .line 253
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    .line 255
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    .line 257
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    .line 259
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    .line 260
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    .line 262
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 274
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier;->access$000(Lcom/android/server/wm/DisplayMagnifier;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    .line 275
    const/4 v0, 0x1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier;->access$000(Lcom/android/server/wm/DisplayMagnifier;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mBorderWidth:I

    .line 278
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mBorderWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    .line 279
    new-instance v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier;->access$000(Lcom/android/server/wm/DisplayMagnifier;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;-><init>(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 281
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 244
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mBorderWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 244
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method private getWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "outWindowStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;>;"
    iget-object v5, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v5}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 413
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 414
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 415
    .local v2, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 416
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 417
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e9

    if-ne v5, v6, :cond_1

    :cond_0
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-nez v5, :cond_1

    .line 420
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->obtain(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method

.method private populateTransformationMatrix(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    aput v2, v0, v1

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    aput v2, v0, v1

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    aput v2, v0, v1

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    aput v2, v0, v1

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 404
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 409
    return-void
.end method


# virtual methods
.method public destroyWindow()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->releaseSurface()V

    .line 473
    return-void
.end method

.method public drawWindowIfNeededLocked()V
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->drawIfNeeded()V

    .line 469
    return-void
.end method

.method public getMagnificationSpecLocked()Landroid/view/MagnificationSpec;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 452
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 453
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 454
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 455
    return-void
.end method

.method public isMagnifyingLocked()Z
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRotationChangedLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    invoke-virtual {p0, v4, v4}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 432
    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$800(Lcom/android/server/wm/DisplayMagnifier;)J

    move-result-wide v3

    long-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    mul-float/2addr v3, v4

    float-to-long v0, v3

    .line 434
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 436
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 438
    .end local v0    # "delay":J
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 439
    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->updateSize()V

    .line 440
    return-void
.end method

.method public recomputeBoundsLocked()V
    .locals 27

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 299
    .local v5, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->y:I

    .line 301
    .local v6, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v20, v0

    .line 302
    .local v20, "magnifiedBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$200(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v14

    .line 305
    .local v14, "availableBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v22

    .line 308
    .local v22, "nonMagnifiedBounds":Landroid/graphics/Region;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempWindowStateInfos:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    .line 311
    .local v24, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->clear()V

    .line 312
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->getWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 314
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v23

    .line 315
    .local v23, "visibleWindowCount":I
    add-int/lit8 v18, v23, -0x1

    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_2

    .line 316
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;

    .line 317
    .local v19, "info":Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7eb

    if-ne v3, v4, :cond_1

    .line 315
    :cond_0
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 322
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$400(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v25

    .line 323
    .local v25, "windowBounds":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    .line 324
    .local v21, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->populateTransformationMatrix(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    .line 327
    .local v26, "windowFrame":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 328
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 329
    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 330
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 331
    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    move-object/from16 v0, v26

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 333
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 334
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 347
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$400(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v2

    .line 348
    .local v2, "accountedBounds":Landroid/graphics/Region;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 349
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 350
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 352
    invoke-virtual {v2}, Landroid/graphics/Region;->isRect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$600(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v13

    .line 354
    .local v13, "accountedFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v13}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 355
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 362
    .end local v2    # "accountedBounds":Landroid/graphics/Region;
    .end local v13    # "accountedFrame":Landroid/graphics/Rect;
    .end local v19    # "info":Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    .end local v21    # "matrix":Landroid/graphics/Matrix;
    .end local v25    # "windowBounds":Landroid/graphics/Region;
    .end local v26    # "windowFrame":Landroid/graphics/RectF;
    :cond_2
    add-int/lit8 v18, v23, -0x1

    :goto_2
    if-ltz v18, :cond_4

    .line 363
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;

    .line 364
    .restart local v19    # "info":Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->recycle()V

    .line 365
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 362
    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    .line 336
    .restart local v21    # "matrix":Landroid/graphics/Matrix;
    .restart local v25    # "windowBounds":Landroid/graphics/Region;
    .restart local v26    # "windowFrame":Landroid/graphics/RectF;
    :cond_3
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mTouchableRegion:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 337
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 339
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 340
    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    move-object/from16 v0, v26

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 342
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 343
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 344
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_1

    .line 368
    .end local v19    # "info":Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    .end local v21    # "matrix":Landroid/graphics/Matrix;
    .end local v25    # "windowBounds":Landroid/graphics/Region;
    .end local v26    # "windowFrame":Landroid/graphics/RectF;
    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v10, v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v11, v6, v3

    sget-object v12, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v7, v20

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 373
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v15

    .line 374
    .local v15, "bounds":Landroid/graphics/Region;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setBounds(Landroid/graphics/Region;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$600(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v16

    .line 380
    .local v16, "dirtyRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    if-eqz v3, :cond_6

    .line 381
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 382
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v7, v5, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v8, v6, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 394
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 396
    .end local v15    # "bounds":Landroid/graphics/Region;
    .end local v16    # "dirtyRect":Landroid/graphics/Rect;
    :cond_5
    return-void

    .line 386
    .restart local v15    # "bounds":Landroid/graphics/Region;
    .restart local v16    # "dirtyRect":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$700(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v17

    .line 387
    .local v17, "dirtyRegion":Landroid/graphics/Region;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 389
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 390
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public setMagnifiedRegionBorderShownLocked(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 443
    if-eqz p1, :cond_0

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setShown(ZZ)V

    .line 448
    return-void
.end method

.method public updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 284
    if-eqz p1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 294
    :cond_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    goto :goto_0
.end method

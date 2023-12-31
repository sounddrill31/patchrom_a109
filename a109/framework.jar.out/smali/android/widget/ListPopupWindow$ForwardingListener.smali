.class public abstract Landroid/widget/ListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    iput-object p1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1214
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    .line 1215
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    .line 1217
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1218
    return-void
.end method

.method static synthetic access$800(Landroid/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListPopupWindow$ForwardingListener;

    .prologue
    .line 1192
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1358
    iget-object v4, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1359
    .local v4, "src":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v3

    .line 1360
    .local v3, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return v2

    .line 1364
    :cond_1
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->access$600(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    .line 1365
    .local v0, "dst":Landroid/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1370
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1371
    .local v1, "dstEvent":Landroid/view/MotionEvent;
    invoke-virtual {v4, v1}, Landroid/view/View;->toGlobalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1372
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1375
    iget v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 1376
    .local v2, "handled":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1310
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1311
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return v5

    .line 1315
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1316
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1318
    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1319
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v6, :cond_2

    .line 1320
    new-instance v6, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ListPopupWindow$ForwardingListener;Landroid/widget/ListPopupWindow$1;)V

    iput-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 1322
    :cond_2
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    int-to-long v7, v7

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1325
    :pswitch_1
    iget v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1326
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_0

    .line 1327
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1328
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1329
    .local v4, "y":F
    iget v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-virtual {v2, v3, v4, v7}, Landroid/view/View;->pointInView(FFF)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1331
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    .line 1332
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1334
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v5, v6

    .line 1335
    goto :goto_0

    .line 1341
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v6, :cond_0

    .line 1342
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract getPopup()Landroid/widget/ListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 1279
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 1280
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1281
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1283
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 1296
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 1297
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1300
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1234
    iget-boolean v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1236
    .local v2, "wasForwarding":Z
    if-eqz v2, :cond_7

    .line 1237
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_0
    move v1, v4

    .line 1243
    .local v1, "forwarding":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1244
    .local v0, "action":I
    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eq v0, v4, :cond_2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    .line 1246
    :cond_2
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1247
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1251
    :cond_3
    iput-boolean v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1252
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    return v3

    .end local v0    # "action":I
    .end local v1    # "forwarding":Z
    :cond_6
    move v1, v3

    .line 1237
    goto :goto_0

    .line 1239
    :cond_7
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v5

    if-eqz v5, :cond_8

    move v1, v4

    .restart local v1    # "forwarding":Z
    :goto_1
    goto :goto_0

    .end local v1    # "forwarding":Z
    :cond_8
    move v1, v3

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1257
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1261
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1262
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1264
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1267
    :cond_0
    return-void
.end method

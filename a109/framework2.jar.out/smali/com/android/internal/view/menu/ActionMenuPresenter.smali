.class public Lcom/android/internal/view/menu/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const v0, 0x109001c

    const v1, 0x109001b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 65
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 74
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 307
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 308
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 318
    :cond_0
    :goto_0
    return-object v0

    .line 310
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 311
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 312
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 311
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 318
    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 3
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 214
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView;

    .local v1, "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    move-object v0, p2

    .line 217
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 218
    .local v0, "actionItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 219
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 368
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 369
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 281
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 405
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 406
    .local v15, "itemsSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 407
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 408
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 409
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 411
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 412
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 413
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 414
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 415
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v15, :cond_3

    .line 416
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 417
    .local v14, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 418
    add-int/lit8 v22, v22, 0x1

    .line 424
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 427
    const/16 v17, 0x0

    .line 415
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 420
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 422
    :cond_2
    const/4 v10, 0x1

    goto :goto_1

    .line 432
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    if-nez v10, :cond_4

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 434
    :cond_4
    add-int/lit8 v17, v17, -0x1

    .line 436
    :cond_5
    sub-int v17, v17, v22

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 439
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 441
    const/4 v4, 0x0

    .line 442
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 443
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 444
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 445
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 446
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 450
    .end local v5    # "cellSizeRemaining":I
    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v15, :cond_1d

    .line 451
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 453
    .restart local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 455
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_7

    .line 456
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 458
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 459
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 464
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 465
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 466
    if-nez v8, :cond_8

    .line 467
    move/from16 v8, v18

    .line 469
    :cond_8
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 470
    .local v9, "groupId":I
    if-eqz v9, :cond_9

    .line 471
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 473
    :cond_9
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 450
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 462
    .restart local v24    # "v":Landroid/view/View;
    :cond_a
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 474
    .end local v24    # "v":Landroid/view/View;
    :cond_b
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 477
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 478
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 479
    .local v12, "inGroup":Z
    if-gtz v17, :cond_c

    if-eqz v12, :cond_14

    :cond_c
    if-lez v26, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    if-lez v7, :cond_14

    :cond_d
    const/4 v13, 0x1

    .line 482
    .local v13, "isAction":Z
    :goto_5
    if-eqz v13, :cond_11

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 484
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_e

    .line 485
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 487
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 488
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 490
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 491
    if-nez v6, :cond_f

    .line 492
    const/4 v13, 0x0

    .line 497
    .end local v6    # "cells":I
    :cond_f
    :goto_6
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 498
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 499
    if-nez v8, :cond_10

    .line 500
    move/from16 v8, v18

    .line 503
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_17

    .line 504
    if-ltz v26, :cond_16

    const/16 v27, 0x1

    :goto_7
    and-int v13, v13, v27

    .line 511
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_11
    :goto_8
    if-eqz v13, :cond_19

    if-eqz v9, :cond_19

    .line 512
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 526
    :cond_12
    if-eqz v13, :cond_13

    add-int/lit8 v17, v17, -0x1

    .line 528
    :cond_13
    invoke-virtual {v14, v13}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 479
    .end local v13    # "isAction":Z
    :cond_14
    const/4 v13, 0x0

    goto :goto_5

    .line 495
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_15
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 504
    .restart local v18    # "measuredWidth":I
    :cond_16
    const/16 v27, 0x0

    goto :goto_7

    .line 507
    :cond_17
    add-int v27, v26, v8

    if-lez v27, :cond_18

    const/16 v27, 0x1

    :goto_9
    and-int v13, v13, v27

    goto :goto_8

    :cond_18
    const/16 v27, 0x0

    goto :goto_9

    .line 513
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_19
    if-eqz v12, :cond_12

    .line 515
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 516
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_a
    move/from16 v0, v16

    if-ge v0, v11, :cond_12

    .line 517
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 518
    .local v3, "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1b

    .line 520
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_1a

    add-int/lit8 v17, v17, 0x1

    .line 521
    :cond_1a
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 516
    :cond_1b
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 531
    .end local v3    # "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1c
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 534
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1d
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 181
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 184
    new-instance v3, Lcom/android/internal/view/menu/ActionMenuPresenter$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$1;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/view/View;Lcom/android/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    move-object v2, p3

    .line 204
    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 205
    .local v2, "menuParent":Lcom/android/internal/view/menu/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 206
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 207
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    :cond_2
    return-object v0

    .line 181
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Lcom/android/internal/view/menu/ActionMenuView;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 201
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .local v0, "result":Lcom/android/internal/view/menu/MenuView;
    move-object v1, v0

    .line 171
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/ActionMenuView;->setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    .line 172
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 348
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 359
    :goto_0
    return v1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 355
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 357
    goto :goto_0

    .line 359
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 380
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 88
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 89
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 93
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 98
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 102
    :cond_2
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 103
    .local v3, "width":I
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_4

    .line 104
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_3

    .line 105
    new-instance v4, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 106
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 107
    .local v2, "spec":I
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 109
    .end local v2    # "spec":I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 114
    :goto_0
    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 116
    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    .line 119
    iput-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 120
    return-void

    .line 111
    :cond_4
    iput-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 540
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 541
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 129
    :cond_0
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 130
    .local v1, "width":I
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v2, :cond_3

    .line 131
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v2, :cond_1

    .line 132
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 133
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 134
    .local v0, "spec":I
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 136
    .end local v0    # "spec":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 141
    :goto_0
    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 143
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 146
    :cond_2
    return-void

    .line 138
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 552
    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;

    .line 553
    .local v1, "saved":Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v3, v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 554
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v4, v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 555
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 557
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 560
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 545
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 546
    .local v0, "state":Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 547
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 286
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v2

    .line 288
    :cond_1
    move-object v1, p1

    .line 289
    .local v1, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_2

    .line 290
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .restart local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 292
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    .line 294
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 298
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 299
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 300
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 301
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 302
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 303
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 564
    if-eqz p1, :cond_0

    .line 566
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 166
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 162
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 157
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 149
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 150
    iput-boolean p2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 152
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 223
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 326
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 329
    .local v0, "popup":Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 331
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 335
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 339
    .end local v0    # "popup":Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 12
    .param p1, "cleared"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 228
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 229
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 230
    invoke-static {v5}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 232
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 234
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 236
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_2

    .line 237
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 238
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 239
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 240
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v8

    .line 241
    .local v8, "provider":Landroid/view/ActionProvider;
    if-eqz v8, :cond_1

    .line 242
    invoke-virtual {v8, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 239
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Landroid/view/ActionProvider;
    :cond_2
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 250
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 251
    .local v2, "hasOverflow":Z
    iget-boolean v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v9, :cond_3

    if-eqz v6, :cond_3

    .line 252
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 253
    .restart local v1    # "count":I
    if-ne v1, v10, :cond_9

    .line 254
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v9

    if-nez v9, :cond_8

    move v2, v10

    .line 260
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_b

    .line 261
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v9, :cond_4

    .line 262
    new-instance v9, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 264
    :cond_4
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 265
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v7, v9, :cond_6

    .line 266
    if-eqz v7, :cond_5

    .line 267
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 269
    :cond_5
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v4, Lcom/android/internal/view/menu/ActionMenuView;

    .line 270
    .local v4, "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    .end local v4    # "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    .end local v7    # "parent":Landroid/view/ViewGroup;
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Lcom/android/internal/view/menu/ActionMenuView;

    iget-boolean v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v9, v10}, Lcom/android/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    .line 277
    return-void

    .line 247
    .end local v2    # "hasOverflow":Z
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_8
    move v2, v11

    .line 254
    goto :goto_2

    .line 256
    :cond_9
    if-lez v1, :cond_a

    move v2, v10

    :goto_4
    goto :goto_2

    :cond_a
    move v2, v11

    goto :goto_4

    .line 272
    .end local v1    # "count":I
    :cond_b
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v9, v10, :cond_6

    .line 273
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method

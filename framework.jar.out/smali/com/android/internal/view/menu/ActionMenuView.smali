.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mIsHwActionBar:Z

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mHwActionBarViewUsed:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 78
    .local v1, density:F
    const/high16 v2, 0x4260

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 79
    const/high16 v2, 0x4080

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 81
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->initAddtionalStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method private initAddtionalStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    .line 709
    sget-object v4, Lcom/android/internal/R$styleable;->HwActionBar:[I

    const v5, 0x101045a

    invoke-virtual {p1, p2, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 712
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 713
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 714
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 715
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 722
    const-string v4, "ActionMenuView"

    const-string v5, "initAddtionalStyle default"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 717
    :pswitch_0
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsHwActionBar:Z

    goto :goto_1

    .line 727
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 728
    return-void

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .parameter "child"
    .parameter "cellSize"
    .parameter "cellsRemaining"
    .parameter "parentHeightMeasureSpec"
    .parameter "parentHeightPadding"

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 401
    .local v8, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 403
    .local v2, childHeightSize:I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 404
    .local v1, childHeightMode:I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 406
    .local v3, childHeightSpec:I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 408
    .local v7, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 410
    .local v6, hasText:Z
    :goto_1
    const/4 v0, 0x0

    .line 411
    .local v0, cellsUsed:I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 412
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x8000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 414
    .local v4, childWidthSpec:I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 417
    .local v9, measuredWidth:I
    div-int v0, v9, p1

    .line 418
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 419
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 422
    .end local v4           #childWidthSpec:I
    .end local v9           #measuredWidth:I
    :cond_2
    iget-boolean v11, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 423
    .local v5, expandable:Z
    :goto_2
    iput-boolean v5, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 425
    iput v0, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 426
    mul-int v10, v0, p1

    .line 427
    .local v10, targetWidth:I
    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 429
    return v0

    .line 406
    .end local v0           #cellsUsed:I
    .end local v5           #expandable:Z
    .end local v6           #hasText:Z
    .end local v7           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10           #targetWidth:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 408
    .restart local v7       #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 422
    .restart local v0       #cellsUsed:I
    .restart local v6       #hasText:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private needsDividerBefore(ILandroid/view/View;Z)Z
    .locals 9
    .parameter "childIndex"
    .parameter "child"
    .parameter "result"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 737
    if-nez p1, :cond_5

    instance-of v4, p2, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v4, :cond_5

    .line 738
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_0

    move-object v4, p2

    .line 739
    check-cast v4, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v4}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v4

    or-int/2addr p3, v4

    .line 741
    :cond_0
    const/4 v2, 0x1

    .line 746
    .local v2, isHaveMenuItem:Z
    :goto_0
    if-nez v2, :cond_1

    if-nez p1, :cond_1

    instance-of v4, p2, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v4, :cond_1

    .line 747
    const/4 p3, 0x1

    .line 750
    :cond_1
    const/4 v3, 0x0

    .line 752
    .local v3, isSlip:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 753
    .local v0, context:Landroid/content/Context;
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 754
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-ne v4, v5, :cond_6

    move v3, v5

    .line 757
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq p1, v4, :cond_4

    .line 758
    const/4 p3, 0x1

    .line 764
    :cond_4
    :goto_2
    return p3

    .line 743
    .end local v2           #isHaveMenuItem:Z
    .end local v3           #isSlip:Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #isHaveMenuItem:Z
    goto :goto_0

    .line 754
    .restart local v3       #isSlip:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 760
    :catch_0
    move-exception v1

    .line 761
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 170
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 171
    .local v17, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 172
    .local v37, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 174
    .local v19, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 175
    .local v36, widthPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 177
    .local v18, heightPadding:I
    const/high16 v38, 0x4000

    move/from16 v0, v17

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    sub-int v38, v19, v18

    const/high16 v39, 0x4000

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 182
    .local v22, itemHeightSpec:I
    :goto_0
    sub-int v37, v37, v36

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 186
    .local v4, cellCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 188
    .local v6, cellSizeRemaining:I
    if-nez v4, :cond_1

    .line 190
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 382
    :goto_1
    return-void

    .line 177
    .end local v4           #cellCount:I
    .end local v6           #cellSizeRemaining:I
    .end local v22           #itemHeightSpec:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    move/from16 v38, v0

    sub-int v39, v19, v18

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(II)I

    move-result v38

    const/high16 v39, -0x8000

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    goto :goto_0

    .line 194
    .restart local v4       #cellCount:I
    .restart local v6       #cellSizeRemaining:I
    .restart local v22       #itemHeightSpec:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 196
    .local v5, cellSize:I
    move v8, v4

    .line 197
    .local v8, cellsRemaining:I
    const/16 v25, 0x0

    .line 198
    .local v25, maxChildHeight:I
    const/16 v24, 0x0

    .line 199
    .local v24, maxCellsUsed:I
    const/4 v14, 0x0

    .line 200
    .local v14, expandableItemCount:I
    const/16 v34, 0x0

    .line 201
    .local v34, visibleItemCount:I
    const/16 v16, 0x0

    .line 204
    .local v16, hasOverflow:Z
    const-wide/16 v32, 0x0

    .line 206
    .local v32, smallestItemsAt:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v12

    .line 207
    .local v12, childCount:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v12, :cond_9

    .line 208
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 209
    .local v11, child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 207
    :cond_2
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 211
    :cond_3
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 212
    .local v21, isGeneratedItem:Z
    add-int/lit8 v34, v34, 0x1

    .line 214
    if-eqz v21, :cond_4

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 220
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 221
    .local v23, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 222
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 223
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 224
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 225
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 226
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 227
    if-eqz v21, :cond_7

    move-object/from16 v38, v11

    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_7

    const/16 v38, 0x1

    :goto_4
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 230
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_8

    const/4 v7, 0x1

    .line 232
    .local v7, cellsAvailable:I
    :goto_5
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 235
    .local v9, cellsUsed:I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 236
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    add-int/lit8 v14, v14, 0x1

    .line 237
    :cond_5
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_6

    const/16 v16, 0x1

    .line 239
    :cond_6
    sub-int/2addr v8, v9

    .line 240
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 241
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_2

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_3

    .line 227
    .end local v7           #cellsAvailable:I
    .end local v9           #cellsUsed:I
    :cond_7
    const/16 v38, 0x0

    goto :goto_4

    :cond_8
    move v7, v8

    .line 230
    goto :goto_5

    .line 246
    .end local v11           #child:Landroid/view/View;
    .end local v21           #isGeneratedItem:Z
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_9
    if-eqz v16, :cond_b

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 251
    .local v10, centerSingleExpandedItem:Z
    :goto_6
    const/16 v30, 0x0

    .line 252
    .local v30, needsExpansion:Z
    :goto_7
    if-lez v14, :cond_f

    if-lez v8, :cond_f

    .line 253
    const v26, 0x7fffffff

    .line 254
    .local v26, minCells:I
    const-wide/16 v27, 0x0

    .line 255
    .local v27, minCellsAt:J
    const/16 v29, 0x0

    .line 256
    .local v29, minCellsItemCount:I
    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    if-ge v0, v12, :cond_e

    .line 257
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 258
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 261
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_c

    .line 256
    :cond_a
    :goto_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 246
    .end local v10           #centerSingleExpandedItem:Z
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    .end local v30           #needsExpansion:Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_6

    .line 264
    .restart local v10       #centerSingleExpandedItem:Z
    .restart local v11       #child:Landroid/view/View;
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v26       #minCells:I
    .restart local v27       #minCellsAt:J
    .restart local v29       #minCellsItemCount:I
    .restart local v30       #needsExpansion:Z
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 265
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 266
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v27, v0

    .line 267
    const/16 v29, 0x1

    goto :goto_9

    .line 268
    :cond_d
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 269
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v27, v27, v38

    .line 270
    add-int/lit8 v29, v29, 0x1

    goto :goto_9

    .line 275
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_e
    or-long v32, v32, v27

    .line 277
    move/from16 v0, v29

    if-le v0, v8, :cond_14

    .line 306
    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    :cond_f
    if-nez v16, :cond_19

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_19

    const/16 v31, 0x1

    .line 307
    .local v31, singleItem:Z
    :goto_a
    if-lez v8, :cond_21

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_21

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_10

    if-nez v31, :cond_10

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_21

    .line 309
    :cond_10
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 311
    .local v13, expandCount:F
    if-nez v31, :cond_12

    .line 313
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 314
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 315
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    .line 317
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_12

    .line 318
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 319
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_12

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    .line 323
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_12
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_1a

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 326
    .local v15, extraPixels:I
    :goto_b
    const/16 v20, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v0, v12, :cond_20

    .line 327
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1b

    .line 326
    :cond_13
    :goto_d
    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    .line 280
    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    .end local v31           #singleItem:Z
    .restart local v26       #minCells:I
    .restart local v27       #minCellsAt:J
    .restart local v29       #minCellsItemCount:I
    :cond_14
    add-int/lit8 v26, v26, 0x1

    .line 282
    const/16 v20, 0x0

    :goto_e
    move/from16 v0, v20

    if-ge v0, v12, :cond_18

    .line 283
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 284
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 285
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v27

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_16

    .line 287
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 282
    :cond_15
    :goto_f
    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    .line 291
    :cond_16
    if-eqz v10, :cond_17

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_17

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_17

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 295
    :cond_17
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 296
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 297
    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    .line 300
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_18
    const/16 v30, 0x1

    .line 301
    goto/16 :goto_7

    .line 306
    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_a

    .line 323
    .restart local v13       #expandCount:F
    .restart local v31       #singleItem:Z
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 329
    .restart local v15       #extraPixels:I
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 330
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 331
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 333
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 334
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 335
    if-nez v20, :cond_1c

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1c

    .line 338
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 340
    :cond_1c
    const/16 v30, 0x1

    goto/16 :goto_d

    .line 341
    :cond_1d
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1e

    .line 342
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 343
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 344
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 345
    const/16 v30, 0x1

    goto/16 :goto_d

    .line 350
    :cond_1e
    if-eqz v20, :cond_1f

    .line 351
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 353
    :cond_1f
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_13

    .line 354
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_d

    .line 359
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_20
    const/4 v8, 0x0

    .line 363
    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    :cond_21
    if-eqz v30, :cond_23

    .line 364
    const/16 v20, 0x0

    :goto_10
    move/from16 v0, v20

    if-ge v0, v12, :cond_23

    .line 365
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 366
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 368
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_22

    .line 364
    :goto_11
    add-int/lit8 v20, v20, 0x1

    goto :goto_10

    .line 370
    :cond_22
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 371
    .local v35, width:I
    const/high16 v38, 0x4000

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_11

    .line 376
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v35           #width:I
    :cond_23
    const/high16 v38, 0x4000

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_24

    .line 377
    move/from16 v19, v25

    .line 380
    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 381
    mul-int v38, v8, v5

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 610
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 583
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 585
    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 586
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 591
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    .line 596
    if-eqz p1, :cond_2

    .line 597
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 600
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 601
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 605
    .end local v0           #result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 597
    .restart local p1
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 605
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 615
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 616
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 634
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsHwActionBar:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    .line 636
    const/4 v2, 0x0

    .line 655
    :cond_0
    :goto_0
    return v2

    .line 638
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 639
    .local v1, childBefore:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 640
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    .line 641
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 642
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1           #childBefore:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 644
    :cond_2
    if-lez p1, :cond_3

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_3

    move-object v3, v0

    .line 645
    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 650
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsHwActionBar:Z

    if-eqz v3, :cond_0

    .line 651
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->needsDividerBefore(ILandroid/view/View;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 629
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/4 v7, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 110
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 111
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 112
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 117
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x109001a

    invoke-virtual {v3, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 121
    .local v5, tempActionMenuItemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    if-eqz v5, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 123
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 126
    .local v4, isGeneratedItem:Z
    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childCount:I
    .end local v2           #i:I
    .end local v4           #isGeneratedItem:Z
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 569
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 570
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 571
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 35
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v33, v0

    if-nez v33, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->isRtlLocale()Z

    move-result v33

    if-nez v33, :cond_1

    .line 437
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 442
    .local v6, childCount:I
    add-int v33, p3, p5

    div-int/lit8 v16, v33, 0x2

    .line 443
    .local v16, midVertical:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 444
    .local v7, dividerWidth:I
    const/16 v19, 0x0

    .line 445
    .local v19, overflowWidth:I
    const/16 v18, 0x0

    .line 446
    .local v18, nonOverflowWidth:I
    const/16 v17, 0x0

    .line 447
    .local v17, nonOverflowCount:I
    sub-int v33, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v34

    sub-int v33, v33, v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v34

    sub-int v32, v33, v34

    .line 448
    .local v32, widthRemaining:I
    const/4 v9, 0x0

    .line 449
    .local v9, hasOverflow:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->isRtlLocale()Z

    move-result v12

    .line 451
    .local v12, isLayoutRtl:Z
    const/4 v8, 0x0

    .line 456
    .local v8, elimOverflowWidth:I
    const/16 v28, 0x0

    .line 458
    .local v28, toTakePlaceChildCount:I
    const/16 v29, -0x1

    .line 459
    .local v29, toTakePlaceChildIndex:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v6, :cond_7

    .line 460
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 461
    .local v30, v:Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v33

    const/16 v34, 0x8

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2

    .line 459
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 466
    :cond_2
    add-int/lit8 v28, v28, 0x1

    .line 467
    move/from16 v29, v11

    .line 469
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 470
    .local v20, p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v33, v0

    if-eqz v33, :cond_5

    .line 471
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 472
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 473
    add-int v19, v19, v7

    .line 476
    :cond_3
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 479
    .local v10, height:I
    if-eqz v12, :cond_4

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v33

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v34, v0

    add-int v13, v33, v34

    .line 481
    .local v13, l:I
    add-int v21, v13, v19

    .line 486
    .local v21, r:I
    :goto_3
    div-int/lit8 v33, v10, 0x2

    sub-int v27, v16, v33

    .line 487
    .local v27, t:I
    add-int v5, v27, v10

    .line 488
    .local v5, b:I
    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 490
    sub-int v32, v32, v19

    .line 491
    const/4 v9, 0x1

    .line 493
    move/from16 v8, v19

    .line 495
    goto :goto_2

    .line 483
    .end local v5           #b:I
    .end local v13           #l:I
    .end local v21           #r:I
    .end local v27           #t:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v34

    sub-int v33, v33, v34

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v34, v0

    sub-int v21, v33, v34

    .line 484
    .restart local v21       #r:I
    sub-int v13, v21, v19

    .restart local v13       #l:I
    goto :goto_3

    .line 496
    .end local v10           #height:I
    .end local v13           #l:I
    .end local v21           #r:I
    :cond_5
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v34, v0

    add-int v22, v33, v34

    .line 497
    .local v22, size:I
    add-int v18, v18, v22

    .line 498
    sub-int v32, v32, v22

    .line 499
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 500
    add-int v18, v18, v7

    .line 502
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 507
    .end local v20           #p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v22           #size:I
    .end local v30           #v:Landroid/view/View;
    :cond_7
    const/16 v33, 0x1

    move/from16 v0, v28

    move/from16 v1, v33

    if-ne v0, v1, :cond_8

    if-nez v9, :cond_8

    .line 509
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 510
    .restart local v30       #v:Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    .line 511
    .local v31, width:I
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 512
    .restart local v10       #height:I
    sub-int v33, p4, p2

    div-int/lit8 v15, v33, 0x2

    .line 513
    .local v15, midHorizontal:I
    div-int/lit8 v33, v31, 0x2

    sub-int v13, v15, v33

    .line 514
    .restart local v13       #l:I
    div-int/lit8 v33, v10, 0x2

    sub-int v27, v16, v33

    .line 515
    .restart local v27       #t:I
    add-int v33, v13, v31

    add-int v34, v27, v10

    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 519
    .end local v10           #height:I
    .end local v13           #l:I
    .end local v15           #midHorizontal:I
    .end local v27           #t:I
    .end local v30           #v:Landroid/view/View;
    .end local v31           #width:I
    :cond_8
    if-eqz v9, :cond_a

    const/16 v33, 0x0

    :goto_4
    sub-int v23, v17, v33

    .line 520
    .local v23, spacerCount:I
    const/16 v34, 0x0

    if-lez v23, :cond_b

    div-int v33, v32, v23

    :goto_5
    move/from16 v0, v34

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 522
    .local v24, spacerSize:I
    if-eqz v12, :cond_d

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v34

    sub-int v26, v33, v34

    .line 524
    .local v26, startRight:I
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v6, :cond_0

    .line 525
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 526
    .restart local v30       #v:Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 527
    .local v14, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v33

    const/16 v34, 0x8

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_9

    iget-boolean v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v33, v0

    if-eqz v33, :cond_c

    .line 524
    :cond_9
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 519
    .end local v14           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v23           #spacerCount:I
    .end local v24           #spacerSize:I
    .end local v26           #startRight:I
    .end local v30           #v:Landroid/view/View;
    :cond_a
    const/16 v33, 0x1

    goto :goto_4

    .line 520
    .restart local v23       #spacerCount:I
    :cond_b
    const/16 v33, 0x0

    goto :goto_5

    .line 531
    .restart local v14       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v24       #spacerSize:I
    .restart local v26       #startRight:I
    .restart local v30       #v:Landroid/view/View;
    :cond_c
    iget v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v33, v0

    sub-int v26, v26, v33

    .line 532
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    .line 533
    .restart local v31       #width:I
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 534
    .restart local v10       #height:I
    div-int/lit8 v33, v10, 0x2

    sub-int v27, v16, v33

    .line 535
    .restart local v27       #t:I
    sub-int v33, v26, v31

    add-int v34, v27, v10

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 536
    iget v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v33, v33, v31

    add-int v33, v33, v24

    sub-int v26, v26, v33

    goto :goto_7

    .line 539
    .end local v10           #height:I
    .end local v14           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v26           #startRight:I
    .end local v27           #t:I
    .end local v30           #v:Landroid/view/View;
    .end local v31           #width:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v25

    .line 540
    .local v25, startLeft:I
    const/4 v11, 0x0

    :goto_8
    if-ge v11, v6, :cond_0

    .line 541
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 542
    .restart local v30       #v:Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 543
    .restart local v14       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v33

    const/16 v34, 0x8

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_e

    iget-boolean v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v33, v0

    if-eqz v33, :cond_f

    .line 540
    :cond_e
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 547
    :cond_f
    iget v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v25, v25, v33

    .line 548
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    .line 549
    .restart local v31       #width:I
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 550
    .restart local v10       #height:I
    div-int/lit8 v33, v10, 0x2

    sub-int v27, v16, v33

    .line 554
    .restart local v27       #t:I
    const/16 v33, 0x2

    move/from16 v0, v33

    if-ne v0, v6, :cond_10

    if-eqz v9, :cond_10

    iget-boolean v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_10

    .line 556
    sub-int v33, p4, v8

    add-int v34, v27, v10

    move-object/from16 v0, v30

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 557
    const/4 v8, 0x0

    .line 562
    :goto_a
    iget v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v33, v0

    add-int v33, v33, v31

    add-int v33, v33, v24

    add-int v25, v25, v33

    goto :goto_9

    .line 559
    :cond_10
    add-int v33, v25, v31

    add-int v34, v27, v10

    move-object/from16 v0, v30

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 139
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 140
    .local v4, wasFormatted:Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x4000

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 142
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 143
    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 148
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 149
    .local v5, widthSize:I
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 150
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 151
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 154
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 166
    :goto_1
    return-void

    .end local v5           #widthSize:I
    :cond_2
    move v6, v8

    .line 140
    goto :goto_0

    .line 158
    .restart local v5       #widthSize:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 159
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 162
    .local v3, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 164
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setMaxItemHeight(I)V
    .locals 0
    .parameter "maxItemHeight"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 103
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .parameter "reserveOverflow"

    .prologue
    .line 578
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 579
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 94
    return-void
.end method

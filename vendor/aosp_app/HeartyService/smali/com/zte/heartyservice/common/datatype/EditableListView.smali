.class public Lcom/zte/heartyservice/common/datatype/EditableListView;
.super Landroid/widget/ListView;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;,
        Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;,
        Lcom/zte/heartyservice/common/datatype/EditableListView$DragListener;
    }
.end annotation


# static fields
.field private static final FLING:I = 0x0

.field private static final SLIDE:I = 0x1

.field private static final TRASH:I = 0x2


# instance fields
.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DragListener;

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;

.field private mRemoveMode:I

.field private mSrcDragPos:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mTrashcan:Landroid/graphics/drawable/Drawable;

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v1, 0x1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveMode:I

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTempRect:Landroid/graphics/Rect;

    .line 64
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTouchSlop:I

    .line 65
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mItemHeightNormal:I

    .line 67
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mItemHeightNormal:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mItemHeightHalf:I

    .line 68
    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mItemHeightExpanded:I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/common/datatype/EditableListView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/common/datatype/EditableListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/common/datatype/EditableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/common/datatype/EditableListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mSrcDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/common/datatype/EditableListView;)Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveListener:Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/common/datatype/EditableListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/EditableListView;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 188
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 189
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mUpperBound:I

    .line 191
    :cond_0
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 192
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mLowerBound:I

    .line 194
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 10

    .prologue
    .line 237
    iget v8, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v0, v8, v9

    .line 238
    .local v0, childnum:I
    iget v8, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    iget v9, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mSrcDragPos:I

    if-le v8, v9, :cond_0

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getHeaderViewsCount()I

    move-result v4

    .line 242
    .local v4, numheaders:I
    iget v8, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mSrcDragPos:I

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 245
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 246
    .local v7, vv:Landroid/view/View;
    if-nez v7, :cond_1

    .line 281
    return-void

    .line 249
    :cond_1
    iget v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mItemHeightNormal:I

    .line 250
    .local v2, height:I
    const/4 v6, 0x0

    .line 251
    .local v6, visibility:I
    iget v8, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    if-ge v8, v4, :cond_4

    if-ne v3, v4, :cond_4

    .line 254
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 255
    const/4 v6, 0x4

    .line 276
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 277
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mItemHeightExpanded:I

    goto :goto_1

    .line 259
    :cond_4
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 261
    iget v8, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    iget v9, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mSrcDragPos:I

    if-eq v8, v9, :cond_5

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_6

    .line 263
    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    .line 269
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 271
    :cond_7
    if-ne v3, v0, :cond_2

    .line 272
    iget v8, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    if-lt v8, v4, :cond_2

    iget v8, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_2

    .line 273
    iget v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 388
    iget v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveMode:I

    if-ne v2, v6, :cond_1

    .line 389
    const/high16 v0, 0x3f80

    .line 390
    .local v0, alpha:F
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 391
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 392
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 396
    .end local v0           #alpha:F
    .end local v1           #width:I
    :cond_1
    iget v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveMode:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveMode:I

    if-ne v2, v7, :cond_4

    .line 397
    :cond_2
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPointX:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 402
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 403
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 405
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 406
    .restart local v1       #width:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le p2, v2, :cond_5

    .line 407
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 414
    .end local v1           #width:I
    :cond_3
    :goto_1
    return-void

    .line 399
    :cond_4
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 408
    .restart local v1       #width:I
    :cond_5
    if-lez v1, :cond_6

    div-int/lit8 v2, v1, 0x4

    if-le p1, v2, :cond_6

    .line 409
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 411
    :cond_6
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 172
    iget v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPointY:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 173
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->myPointToPosition(II)I

    move-result v1

    .line 175
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 176
    iget v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mSrcDragPos:I

    if-gt v1, v2, :cond_0

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 179
    :cond_1
    if-gez v0, :cond_0

    .line 182
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 150
    if-gez p2, :cond_0

    .line 153
    iget v5, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/zte/heartyservice/common/datatype/EditableListView;->myPointToPosition(II)I

    move-result v4

    .line 154
    .local v4, pos:I
    if-lez v4, :cond_0

    .line 155
    add-int/lit8 v5, v4, -0x1

    .line 168
    .end local v4           #pos:I
    :goto_0
    return v5

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTempRect:Landroid/graphics/Rect;

    .line 159
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getChildCount()I

    move-result v1

    .line 160
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    .line 161
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 163
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0

    .line 160
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 168
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 7
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, -0x2

    const/16 v5, 0x14

    .line 361
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->stopDragging()V

    .line 362
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 363
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 364
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPointX:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 365
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPointY:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 366
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 367
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 368
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x398

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 371
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 372
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 374
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 375
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 378
    .local v1, v:Landroid/widget/ImageView;
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 379
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 380
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 381
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowManager:Landroid/view/WindowManager;

    .line 382
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    .line 385
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 420
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 421
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iput-object v3, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    .line 424
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 426
    iput-object v3, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 429
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 431
    :cond_2
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 202
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 203
    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 206
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 207
    .local v4, y:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/common/datatype/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    invoke-virtual {p0, v2, v4}, Lcom/zte/heartyservice/common/datatype/EditableListView;->setSelectionFromTop(II)V

    .line 212
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->layoutChildren()V

    .line 213
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 219
    :goto_1
    if-nez v3, :cond_1

    .line 220
    return-void

    .line 223
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 224
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 225
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    .line 73
    iget-object v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveListener:Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v6, :cond_0

    .line 74
    iget v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveMode:I

    if-nez v6, :cond_0

    .line 75
    new-instance v6, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/zte/heartyservice/common/datatype/EditableListView$1;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/common/datatype/EditableListView$1;-><init>(Lcom/zte/heartyservice/common/datatype/EditableListView;)V

    invoke-direct {v6, v7, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 98
    :cond_0
    iget-object v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DragListener;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDropListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;

    if-eqz v6, :cond_2

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 143
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_1
    return v6

    .line 101
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 102
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 104
    .local v5, y:I
    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/common/datatype/EditableListView;->pointToPosition(II)I

    move-result v2

    .line 105
    .local v2, itemnum:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 111
    .local v1, item:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    sub-int v6, v4, v6

    iput v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPointX:I

    .line 112
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPointY:I

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mXOffset:I

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mYOffset:I

    .line 117
    const/16 v6, 0x40

    if-ge v4, v6, :cond_3

    .line 118
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 122
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v4, v5}, Lcom/zte/heartyservice/common/datatype/EditableListView;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 125
    iput v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    .line 126
    iget v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    iput v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mSrcDragPos:I

    .line 128
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mHeight:I

    .line 130
    iget v3, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTouchSlop:I

    .line 132
    .local v3, touchSlop:I
    sub-int v6, v5, v3

    iget v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mHeight:I

    div-int/lit8 v7, v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mUpperBound:I

    .line 133
    add-int v6, v5, v3

    iget v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mHeight:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mLowerBound:I

    .line 135
    const/4 v6, 0x0

    goto :goto_1

    .line 138
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #touchSlop:I
    :cond_3
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->stopDragging()V

    goto/16 :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 285
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v7, :cond_0

    .line 286
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 289
    :cond_0
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DragListener;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDropListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;

    if-eqz v7, :cond_e

    :cond_1
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v7, :cond_e

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 292
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 357
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v6

    .line 295
    .restart local v0       #action:I
    :pswitch_0
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTempRect:Landroid/graphics/Rect;

    .line 296
    .local v2, r:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 297
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->stopDragging()V

    .line 298
    iget v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveMode:I

    if-ne v7, v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 299
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveListener:Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;

    if-eqz v7, :cond_3

    .line 300
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveListener:Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;

    iget v8, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mSrcDragPos:I

    invoke-interface {v7, v8}, Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;->remove(I)V

    .line 302
    :cond_3
    invoke-direct {p0, v6}, Lcom/zte/heartyservice/common/datatype/EditableListView;->unExpandViews(Z)V

    goto :goto_0

    .line 304
    :cond_4
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDropListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    if-ltz v7, :cond_5

    iget v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 305
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDropListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;

    iget v8, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mSrcDragPos:I

    iget v9, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    invoke-interface {v7, v8, v9}, Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;->drop(II)V

    .line 307
    :cond_5
    invoke-direct {p0, v10}, Lcom/zte/heartyservice/common/datatype/EditableListView;->unExpandViews(Z)V

    goto :goto_0

    .line 313
    .end local v2           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 314
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 316
    .local v5, y:I
    invoke-direct {p0, v4, v5}, Lcom/zte/heartyservice/common/datatype/EditableListView;->dragView(II)V

    .line 318
    invoke-direct {p0, v5}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getItemForPosition(I)I

    move-result v1

    .line 320
    .local v1, itemnum:I
    if-ltz v1, :cond_2

    .line 321
    if-eqz v0, :cond_6

    iget v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    if-eq v1, v7, :cond_8

    .line 322
    :cond_6
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DragListener;

    if-eqz v7, :cond_7

    .line 323
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DragListener;

    iget v8, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    invoke-interface {v7, v8, v1}, Lcom/zte/heartyservice/common/datatype/EditableListView$DragListener;->drag(II)V

    .line 325
    :cond_7
    iput v1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragPos:I

    .line 326
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->doExpansion()V

    .line 329
    :cond_8
    const/4 v3, 0x0

    .line 330
    .local v3, speed:I
    invoke-direct {p0, v5}, Lcom/zte/heartyservice/common/datatype/EditableListView;->adjustScrollBounds(I)V

    .line 332
    iget v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mLowerBound:I

    if-le v5, v7, :cond_c

    .line 334
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_b

    .line 335
    iget v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mHeight:I

    iget v8, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mLowerBound:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    if-le v5, v7, :cond_a

    const/16 v3, 0x10

    .line 349
    :cond_9
    :goto_1
    if-eqz v3, :cond_2

    .line 350
    const/16 v7, 0x1e

    invoke-virtual {p0, v3, v7}, Lcom/zte/heartyservice/common/datatype/EditableListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 335
    :cond_a
    const/4 v3, 0x4

    goto :goto_1

    .line 337
    :cond_b
    const/4 v3, 0x1

    goto :goto_1

    .line 339
    :cond_c
    iget v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mUpperBound:I

    if-ge v5, v7, :cond_9

    .line 341
    iget v7, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mUpperBound:I

    div-int/lit8 v7, v7, 0x2

    if-ge v5, v7, :cond_d

    const/16 v3, -0x10

    .line 342
    :goto_2
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getFirstVisiblePosition()I

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/EditableListView;->getPaddingTop()I

    move-result v8

    if-lt v7, v8, :cond_9

    .line 346
    const/4 v3, 0x0

    goto :goto_1

    .line 341
    :cond_d
    const/4 v3, -0x4

    goto :goto_2

    .line 357
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v3           #speed:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragListener(Lcom/zte/heartyservice/common/datatype/EditableListView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DragListener;

    .line 440
    return-void
.end method

.method public setDropListener(Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mDropListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;

    .line 444
    return-void
.end method

.method public setRemoveListener(Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveListener:Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;

    .line 448
    return-void
.end method

.method public setTrashcan(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "trash"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    .line 435
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveMode:I

    .line 436
    return-void
.end method

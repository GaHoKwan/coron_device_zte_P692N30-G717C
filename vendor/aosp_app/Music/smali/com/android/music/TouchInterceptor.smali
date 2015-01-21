.class public Lcom/android/music/TouchInterceptor;
.super Landroid/widget/ListView;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;,
        Lcom/android/music/TouchInterceptor$RemoveListener;,
        Lcom/android/music/TouchInterceptor$DropListener;,
        Lcom/android/music/TouchInterceptor$DragListener;
    }
.end annotation


# static fields
.field private static final FLING:I = 0x0

.field private static final LAST_BUT_ONE_POSITION:I = 0x2

.field private static final MIN_MOVE_DIV:I = 0x3

.field private static final SLIDE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TouchInterceptor"

.field private static final TRASH:I = 0x2


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mIsDraw:Z

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mListViewHeight:I

.field private mListviewWidth:I

.field private mLowerBound:I

.field mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

.field private mRemoveMode:I

.field private mSizeChangedLock:Ljava/lang/Object;

.field private mSrcDragPos:I

.field private mSrcDragPosition:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mTrashcan:Landroid/graphics/drawable/Drawable;

.field private mUpgradeAlbumArtListener:Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    iput v4, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    .line 109
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 119
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/music/TouchInterceptor;->mSizeChangedLock:Ljava/lang/Object;

    .line 120
    iput v3, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    .line 121
    iput v3, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I

    .line 127
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/TouchInterceptor;->mIsDraw:Z

    .line 134
    new-instance v2, Lcom/android/music/TouchInterceptor$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/music/TouchInterceptor$1;-><init>(Lcom/android/music/TouchInterceptor;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/music/TouchInterceptor;->mContentObserver:Landroid/database/ContentObserver;

    .line 147
    new-instance v2, Lcom/android/music/TouchInterceptor$2;

    invoke-direct {v2, p0}, Lcom/android/music/TouchInterceptor$2;-><init>(Lcom/android/music/TouchInterceptor;)V

    iput-object v2, p0, Lcom/android/music/TouchInterceptor;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 158
    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "deletemode"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    .line 160
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/music/TouchInterceptor;->mTouchSlop:I

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 162
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    .line 163
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/music/TouchInterceptor;->mItemHeightHalf:I

    .line 164
    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/music/TouchInterceptor;->mItemHeightExpanded:I

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/TouchInterceptor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/music/TouchInterceptor;->mIsDraw:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/music/TouchInterceptor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/music/TouchInterceptor;->mIsDraw:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/music/TouchInterceptor;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/TouchInterceptor;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/TouchInterceptor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->stopDragging()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/music/TouchInterceptor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/music/TouchInterceptor;)Lcom/android/music/TouchInterceptor$RemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/TouchInterceptor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/music/TouchInterceptor;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 290
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    .line 292
    :cond_0
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 293
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    .line 295
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 10

    .prologue
    .line 344
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v0, v8, v9

    .line 345
    .local v0, childnum:I
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    iget v9, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    if-le v8, v9, :cond_0

    .line 346
    add-int/lit8 v0, v0, 0x1

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 350
    .local v4, numheaders:I
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 351
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 352
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 353
    .local v7, vv:Landroid/view/View;
    if-nez v7, :cond_1

    .line 389
    return-void

    .line 357
    :cond_1
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    .line 358
    .local v2, height:I
    const/4 v6, 0x0

    .line 359
    .local v6, visibility:I
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-ge v8, v4, :cond_4

    if-ne v3, v4, :cond_4

    .line 362
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 363
    const/4 v6, 0x4

    .line 384
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 385
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 386
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mItemHeightExpanded:I

    goto :goto_1

    .line 367
    :cond_4
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 369
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    iget v9, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    if-eq v8, v9, :cond_5

    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_6

    .line 371
    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    .line 377
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 379
    :cond_7
    if-ne v3, v0, :cond_2

    .line 380
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-lt v8, v4, :cond_2

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_2

    .line 381
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mItemHeightExpanded:I

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

    .line 509
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v2, v6, :cond_1

    .line 510
    const/high16 v0, 0x3f80

    .line 511
    .local v0, alpha:F
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 512
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 513
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 518
    .end local v0           #alpha:F
    .end local v1           #width:I
    :cond_1
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v2, v7, :cond_4

    .line 519
    :cond_2
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mDragPointX:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/music/TouchInterceptor;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 523
    :goto_0
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/music/TouchInterceptor;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 524
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 527
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 528
    .restart local v1       #width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le p2, v2, :cond_5

    .line 529
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 536
    .end local v1           #width:I
    :cond_3
    :goto_1
    return-void

    .line 521
    :cond_4
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 530
    .restart local v1       #width:I
    :cond_5
    if-lez v1, :cond_6

    div-int/lit8 v2, v1, 0x4

    if-le p1, v2, :cond_6

    .line 531
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 533
    :cond_6
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 265
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 266
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/music/TouchInterceptor;->myPointToPosition(II)I

    move-result v1

    .line 267
    .local v1, pos:I
    if-ltz v1, :cond_2

    .line 268
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    if-gt v1, v2, :cond_0

    .line 269
    add-int/lit8 v1, v1, 0x1

    .line 279
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_1

    iget v2, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPosition:I

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_1

    .line 282
    add-int/lit8 v1, v1, 0x1

    .line 285
    :cond_1
    return v1

    .line 271
    :cond_2
    if-gez v0, :cond_0

    .line 274
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 243
    if-gez p2, :cond_0

    .line 246
    iget v5, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/android/music/TouchInterceptor;->myPointToPosition(II)I

    move-result v4

    .line 247
    .local v4, pos:I
    if-lez v4, :cond_0

    .line 248
    add-int/lit8 v5, v4, -0x1

    .line 261
    .end local v4           #pos:I
    :goto_0
    return v5

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 253
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 254
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    .line 255
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 257
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0

    .line 254
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 261
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

    const/4 v5, 0x0

    .line 477
    const-string v2, "TouchInterceptor"

    const-string v3, "startDragging "

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->stopDragging()V

    .line 479
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 480
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 481
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mDragPointX:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/music/TouchInterceptor;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 482
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/android/music/TouchInterceptor;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 484
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 485
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 486
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x398

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 491
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 492
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 494
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 495
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 498
    .local v1, v:Landroid/widget/ImageView;
    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 499
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 500
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 501
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 503
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    .line 504
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    iput-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 506
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 539
    const-string v1, "TouchInterceptor"

    const-string v2, "stopDragging() "

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 543
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 544
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 545
    iput-object v3, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 547
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 549
    iput-object v3, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 554
    :cond_2
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 303
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 304
    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 307
    .local v2, position:I
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 308
    .local v4, y:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 313
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 314
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 320
    :goto_1
    if-nez v3, :cond_1

    .line 321
    return-void

    .line 324
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 325
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 326
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    .line 173
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v7, :cond_0

    .line 174
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-nez v7, :cond_0

    .line 175
    new-instance v7, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/android/music/TouchInterceptor$3;

    invoke-direct {v9, p0}, Lcom/android/music/TouchInterceptor$3;-><init>(Lcom/android/music/TouchInterceptor;)V

    invoke-direct {v7, v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 198
    :cond_0
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    if-eqz v7, :cond_2

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 234
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_1
    return v6

    .line 201
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 202
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 203
    .local v5, y:I
    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v2

    .line 204
    .local v2, itemnum:I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    .line 207
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 208
    .local v1, item:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v7, v4, v7

    iput v7, p0, Lcom/android/music/TouchInterceptor;->mDragPointX:I

    .line 209
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v7, v5, v7

    iput v7, p0, Lcom/android/music/TouchInterceptor;->mDragPointY:I

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/android/music/TouchInterceptor;->mXOffset:I

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v7, v5

    iput v7, p0, Lcom/android/music/TouchInterceptor;->mYOffset:I

    .line 213
    const/16 v7, 0x40

    if-ge v4, v7, :cond_3

    .line 215
    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 216
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 219
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput v5, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPosition:I

    .line 221
    invoke-direct {p0, v0, v4, v5}, Lcom/android/music/TouchInterceptor;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 222
    iput v2, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    .line 223
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    iput v7, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    .line 225
    iget v3, p0, Lcom/android/music/TouchInterceptor;->mTouchSlop:I

    .line 226
    .local v3, touchSlop:I
    sub-int v7, v5, v3

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v8, v8, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    .line 227
    add-int v7, v5, v3

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v8, v8, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    goto :goto_1

    .line 230
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #touchSlop:I
    :cond_3
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->stopDragging()V

    goto/16 :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 605
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 606
    iget v1, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I

    if-nez v1, :cond_2

    .line 607
    :cond_0
    iput p1, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    .line 608
    iput p2, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I

    .line 634
    :cond_1
    :goto_0
    return-void

    .line 613
    :cond_2
    iget v1, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    if-ne v1, p3, :cond_1

    iget v1, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I

    if-ne v1, p4, :cond_1

    .line 614
    iput p1, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    .line 615
    iput p2, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I

    .line 616
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 619
    .local v0, orientation:I
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mSizeChangedLock:Ljava/lang/Object;

    monitor-enter v2

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mUpgradeAlbumArtListener:Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I

    if-le v1, v3, :cond_3

    .line 623
    :goto_1
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mUpgradeAlbumArtListener:Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;

    invoke-interface {v1}, Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;->UpgradeAlbumArt()V

    .line 624
    const-string v1, "TouchInterceptor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSizeChanged with right size, call upgrade album art:orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_3
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mSizeChangedLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 627
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 620
    :cond_4
    :try_start_1
    iget v1, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v1, v3, :cond_3

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 393
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v7, :cond_0

    .line 394
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 396
    :cond_0
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    if-eqz v7, :cond_10

    :cond_1
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v7, :cond_10

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 398
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 473
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v6

    .line 401
    .restart local v0       #action:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 402
    .local v2, r:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 403
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->stopDragging()V

    .line 406
    iput-boolean v10, p0, Lcom/android/music/TouchInterceptor;->mIsDraw:Z

    .line 407
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v7, v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 408
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    if-eqz v7, :cond_3

    .line 409
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    invoke-interface {v7, v8}, Lcom/android/music/TouchInterceptor$RemoveListener;->remove(I)V

    .line 411
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/music/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 414
    :cond_4
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-ltz v7, :cond_5

    iget v7, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 415
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    iget v9, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-interface {v7, v8, v9}, Lcom/android/music/TouchInterceptor$DropListener;->drop(II)V

    .line 422
    :cond_5
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_7

    iget v7, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    if-lt v7, v8, :cond_7

    .line 424
    :cond_6
    iput-boolean v6, p0, Lcom/android/music/TouchInterceptor;->mIsDraw:Z

    .line 427
    :cond_7
    invoke-direct {p0, v10}, Lcom/android/music/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 433
    .end local v2           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 434
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 435
    .local v5, y:I
    invoke-direct {p0, v4, v5}, Lcom/android/music/TouchInterceptor;->dragView(II)V

    .line 436
    invoke-direct {p0, v5}, Lcom/android/music/TouchInterceptor;->getItemForPosition(I)I

    move-result v1

    .line 437
    .local v1, itemnum:I
    if-ltz v1, :cond_2

    .line 438
    if-eqz v0, :cond_8

    iget v7, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-eq v1, v7, :cond_a

    .line 439
    :cond_8
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    if-eqz v7, :cond_9

    .line 440
    iget-object v7, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-interface {v7, v8, v1}, Lcom/android/music/TouchInterceptor$DragListener;->drag(II)V

    .line 442
    :cond_9
    iput v1, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    .line 443
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->doExpansion()V

    .line 445
    :cond_a
    const/4 v3, 0x0

    .line 446
    .local v3, speed:I
    invoke-direct {p0, v5}, Lcom/android/music/TouchInterceptor;->adjustScrollBounds(I)V

    .line 447
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    if-le v5, v7, :cond_e

    .line 449
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_d

    .line 450
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    if-le v5, v7, :cond_c

    const/16 v3, 0x10

    .line 465
    :cond_b
    :goto_1
    if-eqz v3, :cond_2

    .line 466
    const/16 v7, 0x1e

    invoke-virtual {p0, v3, v7}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 450
    :cond_c
    const/4 v3, 0x4

    goto :goto_1

    .line 452
    :cond_d
    const/4 v3, 0x1

    goto :goto_1

    .line 454
    :cond_e
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    if-ge v5, v7, :cond_b

    .line 456
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v7, v7, 0x2

    if-ge v5, v7, :cond_f

    const/16 v3, -0x10

    .line 457
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    if-lt v7, v8, :cond_b

    .line 462
    const/4 v3, 0x0

    goto :goto_1

    .line 456
    :cond_f
    const/4 v3, -0x4

    goto :goto_2

    .line 473
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v3           #speed:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method registerContentObserver(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 678
    const-string v0, "TouchInterceptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerContentObserver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void
.end method

.method public resetPredrawStatus()V
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/TouchInterceptor;->mIsDraw:Z

    .line 696
    return-void
.end method

.method public setDragListener(Lcom/android/music/TouchInterceptor$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    .line 563
    return-void
.end method

.method public setDropListener(Lcom/android/music/TouchInterceptor$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    .line 567
    return-void
.end method

.method public setRemoveListener(Lcom/android/music/TouchInterceptor$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    .line 571
    return-void
.end method

.method public setTrashcan(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "trash"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    .line 558
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    .line 559
    return-void
.end method

.method public setUpgradeAlbumArtListener(Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mUpgradeAlbumArtListener:Lcom/android/music/TouchInterceptor$UpgradeAlbumArtListener;

    .line 589
    return-void
.end method

.method unregisterContentObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 687
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 688
    const-string v0, "TouchInterceptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterContentObserver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void
.end method

.method public waitMeasureFinished(Z)V
    .locals 8
    .parameter "isLandscape"

    .prologue
    .line 642
    if-eqz p1, :cond_1

    iget v4, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    iget v5, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I

    if-le v4, v5, :cond_2

    .line 644
    :cond_0
    const-string v4, "TouchInterceptor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "waitMeasureFinished: (w"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",h"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :goto_0
    return-void

    .line 642
    :cond_1
    iget v4, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    iget v5, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I

    if-lt v4, v5, :cond_0

    .line 649
    :cond_2
    iget-object v5, p0, Lcom/android/music/TouchInterceptor;->mSizeChangedLock:Ljava/lang/Object;

    monitor-enter v5

    .line 650
    const/16 v2, 0xbb8

    .line 651
    .local v2, totalTime:I
    const/16 v3, 0xc8

    .line 652
    .local v3, waitTime:I
    const/4 v1, 0x0

    .line 653
    .local v1, time:I
    :goto_1
    if-eqz p1, :cond_4

    :try_start_0
    iget v4, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    iget v6, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I

    if-le v4, v6, :cond_5

    .line 666
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    const-string v4, "TouchInterceptor"

    const-string v5, "waitMeasureFinished: listview has finished measure!"

    invoke-static {v4, v5}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    :cond_4
    :try_start_1
    iget v4, p0, Lcom/android/music/TouchInterceptor;->mListviewWidth:I

    iget v6, p0, Lcom/android/music/TouchInterceptor;->mListViewHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v4, v6, :cond_3

    .line 656
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/android/music/TouchInterceptor;->mSizeChangedLock:Ljava/lang/Object;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 657
    add-int/lit16 v1, v1, 0xc8

    .line 658
    const/16 v4, 0xbb8

    if-gt v1, v4, :cond_3

    .line 661
    const-string v4, "TouchInterceptor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wait for listview onMeasure finished!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "TouchInterceptor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait has been interupted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 666
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

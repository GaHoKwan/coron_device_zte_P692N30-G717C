.class public Lcom/hf/UI/HorizontialListView;
.super Landroid/widget/AdapterView;
.source "HorizontialListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field public mAlwaysOverrideTouch:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hf/UI/HorizontialListView;->mAlwaysOverrideTouch:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I

    .line 50
    iput v1, p0, Lcom/hf/UI/HorizontialListView;->mRightViewIndex:I

    .line 53
    const v0, 0x7fffffff

    iput v0, p0, Lcom/hf/UI/HorizontialListView;->mMaxX:I

    .line 54
    iput v1, p0, Lcom/hf/UI/HorizontialListView;->mDisplayOffset:I

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hf/UI/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 60
    iput-boolean v1, p0, Lcom/hf/UI/HorizontialListView;->mDataChanged:Z

    .line 89
    new-instance v0, Lcom/hf/UI/HorizontialListView$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/HorizontialListView$1;-><init>(Lcom/hf/UI/HorizontialListView;)V

    iput-object v0, p0, Lcom/hf/UI/HorizontialListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 302
    new-instance v0, Lcom/hf/UI/HorizontialListView$2;

    invoke-direct {v0, p0}, Lcom/hf/UI/HorizontialListView$2;-><init>(Lcom/hf/UI/HorizontialListView;)V

    iput-object v0, p0, Lcom/hf/UI/HorizontialListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 65
    invoke-direct {p0}, Lcom/hf/UI/HorizontialListView;->initView()V

    .line 66
    return-void
.end method

.method static synthetic access$2(Lcom/hf/UI/HorizontialListView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/hf/UI/HorizontialListView;->mDataChanged:Z

    return-void
.end method

.method static synthetic access$3(Lcom/hf/UI/HorizontialListView;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/hf/UI/HorizontialListView;->reset()V

    return-void
.end method

.method static synthetic access$4(Lcom/hf/UI/HorizontialListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/hf/UI/HorizontialListView;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/hf/UI/HorizontialListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4
    .parameter "child"
    .parameter "viewPos"

    .prologue
    const/high16 v3, -0x8000

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 143
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    const/16 v1, 0x50

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 147
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hf/UI/HorizontialListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 148
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 149
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 148
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 150
    return-void
.end method

.method private fillList(I)V
    .locals 3
    .parameter "dx"

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, edge:I
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/hf/UI/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 206
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/hf/UI/HorizontialListView;->fillListRight(II)V

    .line 208
    const/4 v1, 0x0

    .line 209
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/hf/UI/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 213
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/hf/UI/HorizontialListView;->fillListLeft(II)V

    .line 216
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .parameter "leftEdge"
    .parameter "dx"

    .prologue
    .line 234
    :goto_0
    add-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I

    if-gez v1, :cond_1

    .line 241
    :cond_0
    return-void

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I

    iget-object v1, p0, Lcom/hf/UI/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hf/UI/HorizontialListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 238
    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I

    .line 239
    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hf/UI/HorizontialListView;->mDisplayOffset:I

    goto :goto_0
.end method

.method private fillListRight(II)V
    .locals 4
    .parameter "rightEdge"
    .parameter "dx"

    .prologue
    .line 219
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 231
    :cond_0
    return-void

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/hf/UI/HorizontialListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/hf/UI/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, child:Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/hf/UI/HorizontialListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 225
    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 226
    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mCurrentX:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hf/UI/HorizontialListView;->mMaxX:I

    .line 228
    :cond_2
    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hf/UI/HorizontialListView;->mRightViewIndex:I

    goto :goto_0
.end method

.method private declared-synchronized initView()V
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/hf/UI/HorizontialListView;->mRightViewIndex:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/hf/UI/HorizontialListView;->mDisplayOffset:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/hf/UI/HorizontialListView;->mCurrentX:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    .line 74
    const v0, 0x7fffffff

    iput v0, p0, Lcom/hf/UI/HorizontialListView;->mMaxX:I

    .line 75
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hf/UI/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    .line 76
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hf/UI/HorizontialListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/hf/UI/HorizontialListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 7
    .parameter "dx"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 265
    iget v4, p0, Lcom/hf/UI/HorizontialListView;->mDisplayOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/hf/UI/HorizontialListView;->mDisplayOffset:I

    .line 266
    iget v3, p0, Lcom/hf/UI/HorizontialListView;->mDisplayOffset:I

    .line 267
    .local v3, left:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 274
    .end local v2           #i:I
    .end local v3           #left:I
    :cond_0
    return-void

    .line 268
    .restart local v2       #i:I
    .restart local v3       #left:I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/hf/UI/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 270
    .local v1, childWidth:I
    const/4 v4, 0x0

    add-int v5, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 271
    add-int/2addr v3, v1

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private removeNonVisibleItems(I)V
    .locals 4
    .parameter "dx"

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-virtual {p0, v3}, Lcom/hf/UI/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, child:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-lez v1, :cond_2

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/hf/UI/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 255
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 261
    :cond_1
    return-void

    .line 246
    :cond_2
    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/hf/UI/HorizontialListView;->mDisplayOffset:I

    .line 247
    iget-object v1, p0, Lcom/hf/UI/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p0, v0}, Lcom/hf/UI/HorizontialListView;->removeViewInLayout(Landroid/view/View;)V

    .line 249
    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I

    .line 250
    invoke-virtual {p0, v3}, Lcom/hf/UI/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/hf/UI/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p0, v0}, Lcom/hf/UI/HorizontialListView;->removeViewInLayout(Landroid/view/View;)V

    .line 258
    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hf/UI/HorizontialListView;->mRightViewIndex:I

    .line 259
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/hf/UI/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/hf/UI/HorizontialListView;->initView()V

    .line 132
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->removeAllViewsInLayout()V

    .line 133
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/hf/UI/HorizontialListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 284
    .local v0, handled:Z
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 298
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 299
    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/hf/UI/HorizontialListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 289
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->requestLayout()V

    .line 294
    const/4 v0, 0x1

    return v0

    .line 289
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 156
    iget-object v3, p0, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 198
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/hf/UI/HorizontialListView;->mDataChanged:Z

    if-eqz v3, :cond_2

    .line 161
    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mCurrentX:I

    .line 162
    .local v1, oldCurrentX:I
    invoke-direct {p0}, Lcom/hf/UI/HorizontialListView;->initView()V

    .line 163
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->removeAllViewsInLayout()V

    .line 164
    iput v1, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    .line 165
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/hf/UI/HorizontialListView;->mDataChanged:Z

    .line 168
    .end local v1           #oldCurrentX:I
    :cond_2
    iget-object v3, p0, Lcom/hf/UI/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    iget-object v3, p0, Lcom/hf/UI/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 170
    .local v2, scrollx:I
    iput v2, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    .line 173
    .end local v2           #scrollx:I
    :cond_3
    iget v3, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    if-gez v3, :cond_4

    .line 174
    const/4 v3, 0x0

    iput v3, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    .line 175
    iget-object v3, p0, Lcom/hf/UI/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 177
    :cond_4
    iget v3, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    iget v4, p0, Lcom/hf/UI/HorizontialListView;->mMaxX:I

    if-le v3, v4, :cond_5

    .line 178
    iget v3, p0, Lcom/hf/UI/HorizontialListView;->mMaxX:I

    iput v3, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    .line 179
    iget-object v3, p0, Lcom/hf/UI/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 182
    :cond_5
    iget v3, p0, Lcom/hf/UI/HorizontialListView;->mCurrentX:I

    iget v4, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    sub-int v0, v3, v4

    .line 184
    .local v0, dx:I
    invoke-direct {p0, v0}, Lcom/hf/UI/HorizontialListView;->removeNonVisibleItems(I)V

    .line 185
    invoke-direct {p0, v0}, Lcom/hf/UI/HorizontialListView;->fillList(I)V

    .line 186
    invoke-direct {p0, v0}, Lcom/hf/UI/HorizontialListView;->positionItems(I)V

    .line 188
    iget v3, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    iput v3, p0, Lcom/hf/UI/HorizontialListView;->mCurrentX:I

    .line 190
    iget-object v3, p0, Lcom/hf/UI/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    new-instance v3, Lcom/hf/UI/HorizontialListView$3;

    invoke-direct {v3, p0}, Lcom/hf/UI/HorizontialListView$3;-><init>(Lcom/hf/UI/HorizontialListView;)V

    invoke-virtual {p0, v3}, Lcom/hf/UI/HorizontialListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    .end local v0           #dx:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 5
    .parameter "x"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 278
    invoke-virtual {p0}, Lcom/hf/UI/HorizontialListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/hf/UI/HorizontialListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/hf/UI/HorizontialListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 126
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/hf/UI/HorizontialListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 127
    invoke-direct {p0}, Lcom/hf/UI/HorizontialListView;->reset()V

    .line 128
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    .local p1, listener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/hf/UI/HorizontialListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 87
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    .local p1, listener:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iput-object p1, p0, Lcom/hf/UI/HorizontialListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 82
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 139
    return-void
.end method

.class Lcom/hf/UI/HorizontialListView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontialListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/HorizontialListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/HorizontialListView;


# direct methods
.method constructor <init>(Lcom/hf/UI/HorizontialListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    .line 302
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    invoke-virtual {v0, p1}, Lcom/hf/UI/HorizontialListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hf/UI/HorizontialListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    iget v2, v0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/hf/UI/HorizontialListView;->mNextX:I

    .line 319
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    invoke-virtual {v0}, Lcom/hf/UI/HorizontialListView;->requestLayout()V

    .line 324
    const/4 v0, 0x1

    return v0

    .line 319
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "e"

    .prologue
    .line 329
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 330
    .local v11, viewRect:Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    invoke-virtual {v0}, Lcom/hf/UI/HorizontialListView;->getChildCount()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 348
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    invoke-virtual {v0, v7}, Lcom/hf/UI/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 332
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 333
    .local v8, left:I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v9

    .line 334
    .local v9, right:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    .line 335
    .local v10, top:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 336
    .local v6, bottom:I
    invoke-virtual {v11, v8, v10, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    #getter for: Lcom/hf/UI/HorizontialListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/hf/UI/HorizontialListView;->access$4(Lcom/hf/UI/HorizontialListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    #getter for: Lcom/hf/UI/HorizontialListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/hf/UI/HorizontialListView;->access$4(Lcom/hf/UI/HorizontialListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    iget-object v3, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    #getter for: Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/hf/UI/HorizontialListView;->access$5(Lcom/hf/UI/HorizontialListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    iget-object v4, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    iget-object v4, v4, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    #getter for: Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/hf/UI/HorizontialListView;->access$5(Lcom/hf/UI/HorizontialListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    #getter for: Lcom/hf/UI/HorizontialListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/hf/UI/HorizontialListView;->access$6(Lcom/hf/UI/HorizontialListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    #getter for: Lcom/hf/UI/HorizontialListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/hf/UI/HorizontialListView;->access$6(Lcom/hf/UI/HorizontialListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    iget-object v3, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    #getter for: Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/hf/UI/HorizontialListView;->access$5(Lcom/hf/UI/HorizontialListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    iget-object v4, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    iget-object v4, v4, Lcom/hf/UI/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/hf/UI/HorizontialListView$2;->this$0:Lcom/hf/UI/HorizontialListView;

    #getter for: Lcom/hf/UI/HorizontialListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/hf/UI/HorizontialListView;->access$5(Lcom/hf/UI/HorizontialListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_1

    .line 330
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method
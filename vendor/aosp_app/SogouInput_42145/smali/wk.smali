.class public Lwk;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    iget-object v1, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v0, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    iget v2, v0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    .line 310
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v0, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->requestLayout()V

    .line 313
    const/4 v0, 0x1

    return v0

    .line 310
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    .line 318
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 319
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 320
    iget-object v0, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 322
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    .line 323
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 324
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 325
    invoke-virtual {v1, v0, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    iget-object v3, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-static {v3}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-static {v5}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 330
    :cond_0
    iget-object v0, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    iget-object v3, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-static {v3}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lwk;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-static {v5}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 337
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 319
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0
.end method

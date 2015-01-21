.class public Lcom/sohu/inputmethod/platform/AppDetailImagesView;
.super Landroid/widget/AdapterView;
.source "SourceFile"


# instance fields
.field protected a:I

.field private a:Landroid/database/DataSetObserver;

.field private a:Landroid/view/GestureDetector$OnGestureListener;

.field private a:Landroid/view/GestureDetector;

.field private a:Landroid/widget/AdapterView$OnItemClickListener;

.field private a:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public a:Landroid/widget/ListAdapter;

.field protected a:Landroid/widget/Scroller;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/Queue;

.field public a:Z

.field public b:I

.field private final b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-string v0, "AppDetailImagesView"

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:I

    .line 28
    iput v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->d:I

    .line 31
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->e:I

    .line 32
    iput v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->f:I

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Ljava/util/Queue;

    .line 38
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:Z

    .line 66
    new-instance v0, Lwi;

    invoke-direct {v0, p0}, Lwi;-><init>(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/database/DataSetObserver;

    .line 291
    new-instance v0, Lwk;

    invoke-direct {v0, p0}, Lwk;-><init>(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/view/GestureDetector$OnGestureListener;

    .line 42
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a()V

    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 3

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->d:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->f:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    .line 51
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->e:I

    .line 52
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/Scroller;

    .line 53
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 184
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(II)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 191
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b(II)V

    .line 194
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 198
    iput v3, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->e:I

    .line 202
    :goto_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->d:I

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 204
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->d:I

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 205
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Landroid/view/View;I)V

    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 208
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->d:I

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getWidth()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 210
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->e:I

    .line 215
    :cond_0
    :goto_1
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->d:I

    goto :goto_0

    .line 200
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->e:I

    goto :goto_0

    .line 212
    :cond_2
    iput v3, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->e:I

    goto :goto_1

    .line 218
    :cond_3
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/high16 v2, -0x8000

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 120
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 124
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 125
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 127
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:Z

    return p1
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a()V

    .line 109
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->removeAllViewsInLayout()V

    .line 110
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 232
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_0

    .line 233
    iget v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->f:I

    .line 234
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->removeViewInLayout(Landroid/view/View;)V

    .line 236
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:I

    .line 237
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 242
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 243
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->removeViewInLayout(Landroid/view/View;)V

    .line 245
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->d:I

    .line 246
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 248
    :cond_1
    return-void
.end method

.method private b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 221
    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:I

    if-ltz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:I

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 223
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Landroid/view/View;I)V

    .line 224
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 225
    iget v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:I

    .line 226
    iget v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->f:I

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 252
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->f:I

    .line 253
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->f:I

    move v2, v0

    move v0, v1

    .line 254
    :goto_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 255
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 256
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 257
    add-int v5, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 258
    add-int/2addr v2, v4

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 287
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 288
    return v1
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->e:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 280
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->requestLayout()V

    .line 283
    const/4 v0, 0x1

    return v0

    .line 280
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 272
    return v0
.end method

.method public synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 134
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:Z

    if-eqz v0, :cond_2

    .line 139
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:I

    .line 140
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a()V

    .line 141
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->removeAllViewsInLayout()V

    .line 142
    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c:Z

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 148
    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    .line 151
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    if-gez v0, :cond_4

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    .line 153
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 155
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    iget v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->e:I

    if-le v0, v1, :cond_5

    .line 156
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->e:I

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    .line 157
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 160
    :cond_5
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:I

    iget v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    sub-int/2addr v0, v1

    .line 162
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b(I)V

    .line 163
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(I)V

    .line 164
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->c(I)V

    .line 166
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:I

    .line 168
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lwj;

    invoke-direct {v0, p0}, Lwj;-><init>(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)V

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;

    .line 103
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 104
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->b()V

    .line 105
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/AdapterView$OnItemClickListener;

    .line 64
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 59
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter

    .prologue
    .line 116
    return-void
.end method

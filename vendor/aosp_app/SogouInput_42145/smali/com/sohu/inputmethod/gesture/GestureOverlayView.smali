.class public Lcom/sohu/inputmethod/gesture/GestureOverlayView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:F

.field private a:I

.field private a:J

.field private final a:Landroid/graphics/Paint;

.field private final a:Landroid/graphics/Path;

.field private final a:Landroid/graphics/Rect;

.field private final a:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private a:Lcom/sohu/inputmethod/gesture/Gesture;

.field private final a:Ljava/util/ArrayList;

.field private final a:Lqi;

.field private a:Z

.field private b:F

.field private b:I

.field private b:J

.field private b:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Path;

.field private final b:Ljava/util/ArrayList;

.field private b:Z

.field private c:F

.field private c:I

.field private c:J

.field private final c:Ljava/util/ArrayList;

.field private c:Z

.field private d:F

.field private d:I

.field private final d:Ljava/util/ArrayList;

.field private d:Z

.field private e:F

.field private e:I

.field private e:Z

.field private f:F

.field private f:I

.field private f:Z

.field private g:F

.field private g:Z

.field private h:F

.field private h:Z

.field private i:F

.field private i:Z

.field private j:F

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Paint;

    .line 72
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:J

    .line 73
    const-wide/16 v0, 0x1a4

    iput-wide v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:J

    .line 76
    iput-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Z

    .line 79
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Z

    .line 80
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Z

    .line 83
    const/16 v0, -0x100

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:I

    .line 84
    const v0, 0x48ffff00

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:I

    .line 85
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:F

    .line 86
    const/16 v0, 0xa

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:I

    .line 90
    iput v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:I

    .line 91
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:F

    .line 92
    const v0, 0x3e8ccccd

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:F

    .line 93
    const/high16 v0, 0x4220

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:F

    .line 95
    iput v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:I

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    .line 99
    iput-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:Z

    .line 108
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    .line 109
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->g:Z

    .line 110
    iput-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->h:Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Ljava/util/ArrayList;

    .line 140
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->l:Z

    .line 141
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:F

    .line 142
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 145
    new-instance v0, Lqi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqi;-><init>(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Lqh;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    .line 149
    invoke-direct {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d()V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    const v0, 0x7f0d0018

    invoke-direct {p0, p1, p2, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Paint;

    .line 72
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:J

    .line 73
    const-wide/16 v0, 0x1a4

    iput-wide v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:J

    .line 76
    iput-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Z

    .line 79
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Z

    .line 80
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Z

    .line 83
    const/16 v0, -0x100

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:I

    .line 84
    const v0, 0x48ffff00

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:I

    .line 85
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:F

    .line 86
    iput v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:I

    .line 90
    iput v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:I

    .line 91
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:F

    .line 92
    const v0, 0x3e8ccccd

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:F

    .line 93
    const/high16 v0, 0x4220

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:F

    .line 95
    iput v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:I

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    .line 99
    iput-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:Z

    .line 108
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    .line 109
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->g:Z

    .line 110
    iput-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->h:Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Ljava/util/ArrayList;

    .line 140
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->l:Z

    .line 141
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:F

    .line 142
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 145
    new-instance v0, Lqi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqi;-><init>(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Lqh;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    .line 160
    sget-object v0, Lapr;->SohuOverlayView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    iget v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:F

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:F

    .line 164
    iget v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:I

    .line 165
    iget v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:I

    .line 167
    const/4 v1, 0x2

    iget v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:I

    .line 169
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:J

    .line 170
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:J

    .line 171
    const/4 v1, 0x5

    iget v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:I

    .line 173
    const/4 v1, 0x6

    iget v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:F

    .line 176
    const/16 v1, 0x8

    iget v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:F

    .line 179
    const/4 v1, 0x7

    iget v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:F

    .line 182
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->h:Z

    .line 184
    iget-boolean v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Z

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Z

    .line 186
    const/16 v1, 0xb

    iget v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:I

    .line 189
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    invoke-direct {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d()V

    .line 192
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)F
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:F

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:F

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)Landroid/graphics/Path;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)Landroid/graphics/Rect;
    .locals 13
    .parameter

    .prologue
    const/high16 v8, 0x4100

    const/high16 v12, 0x4000

    .line 702
    const/4 v0, 0x0

    .line 704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 707
    iget v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:F

    .line 708
    iget v5, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:F

    .line 710
    sub-float v1, v2, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 711
    sub-float v1, v3, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 713
    cmpl-float v1, v6, v8

    if-gez v1, :cond_0

    cmpl-float v1, v7, v8

    if-ltz v1, :cond_4

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Rect;

    .line 717
    iget v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:I

    .line 718
    iget v8, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->g:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->h:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->g:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->h:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 721
    add-float v8, v2, v4

    div-float/2addr v8, v12

    iput v8, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->g:F

    .line 722
    add-float v9, v3, v5

    div-float/2addr v9, v12

    iput v9, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->h:F

    .line 724
    iget-object v10, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v4, v5, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 727
    float-to-int v10, v4

    sub-int/2addr v10, v0

    float-to-int v11, v5

    sub-int/2addr v11, v0

    float-to-int v4, v4

    add-int/2addr v4, v0

    float-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {v1, v10, v11, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 731
    float-to-int v4, v8

    sub-int/2addr v4, v0

    float-to-int v5, v9

    sub-int/2addr v5, v0

    float-to-int v8, v8

    add-int/2addr v8, v0

    float-to-int v9, v9

    add-int/2addr v0, v9

    invoke-virtual {v1, v4, v5, v8, v0}, Landroid/graphics/Rect;->union(IIII)V

    .line 734
    iput v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:F

    .line 735
    iput v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:F

    .line 737
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Ljava/util/ArrayList;

    new-instance v4, Lqm;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-direct {v4, v2, v3, v8, v9}, Lqm;-><init>(FFJ)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    if-nez v0, :cond_1

    .line 741
    iget v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:F

    iget v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    .line 756
    iget v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(I)V

    .line 770
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Ljava/util/ArrayList;

    .line 771
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 772
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    .line 773
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqj;

    invoke-interface {v0, p0, p1}, Lqj;->b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 772
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 765
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:F

    mul-float v2, v6, v6

    mul-float v3, v7, v7

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:F

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 777
    :cond_4
    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Lcom/sohu/inputmethod/gesture/Gesture;)Lcom/sohu/inputmethod/gesture/Gesture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 426
    iput p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:I

    .line 427
    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Z

    if-eqz v0, :cond_0

    .line 428
    const/high16 v0, 0x437f

    iget v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(I)V

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 638
    iput-boolean v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:Z

    .line 640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 643
    iput v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:F

    .line 644
    iput v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:F

    .line 646
    const/4 v3, 0x0

    iput v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:F

    .line 647
    iget v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/gesture/Gesture;->a()I

    move-result v3

    if-lez v3, :cond_6

    .line 649
    iput-boolean v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    .line 654
    :goto_0
    iget v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:I

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:Z

    if-eqz v3, :cond_7

    .line 655
    :cond_0
    iget-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->k:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:I

    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(I)V

    .line 656
    :cond_1
    iput-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:Z

    .line 657
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    .line 658
    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 664
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Z

    if-eqz v3, :cond_9

    .line 665
    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 666
    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    if-eqz v3, :cond_3

    .line 667
    invoke-direct {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e()V

    .line 668
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c()V

    .line 669
    iput-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    .line 677
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    if-nez v3, :cond_5

    .line 678
    new-instance v3, Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-direct {v3}, Lcom/sohu/inputmethod/gesture/Gesture;-><init>()V

    iput-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    .line 679
    iget-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Z

    if-eqz v3, :cond_5

    .line 680
    iput-boolean v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Z

    .line 684
    :cond_5
    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Ljava/util/ArrayList;

    new-instance v4, Lqm;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {v4, v1, v2, v5, v6}, Lqm;-><init>(FFJ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 687
    iget v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:I

    .line 688
    iget-object v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Rect;

    float-to-int v5, v1

    sub-int/2addr v5, v3

    float-to-int v6, v2

    sub-int/2addr v6, v3

    float-to-int v7, v1

    add-int/2addr v7, v3

    float-to-int v8, v2

    add-int/2addr v3, v8

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 690
    iput v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->g:F

    .line 691
    iput v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->h:F

    .line 694
    iget-object v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Ljava/util/ArrayList;

    .line 695
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 696
    :goto_3
    if-ge v1, v3, :cond_a

    .line 697
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqj;

    invoke-interface {v0, p0, p1}, Lqj;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 696
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 651
    :cond_6
    iput-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    goto :goto_0

    .line 659
    :cond_7
    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/gesture/Gesture;->a()I

    move-result v3

    if-nez v3, :cond_2

    .line 660
    :cond_8
    iget-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->k:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:I

    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(I)V

    goto :goto_1

    .line 670
    :cond_9
    iget-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->l:Z

    if-eqz v3, :cond_4

    .line 671
    const/16 v3, 0xff

    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(I)V

    .line 672
    iput-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->l:Z

    .line 673
    iput-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Z

    .line 674
    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 699
    :cond_a
    return-void
.end method

.method private a(Landroid/view/MotionEvent;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 782
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:Z

    .line 785
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    if-eqz v0, :cond_5

    .line 787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 789
    iget v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:F

    sub-float v4, v0, v4

    .line 790
    iget v5, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:F

    sub-float v5, v3, v5

    .line 791
    iget-object v6, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    iget v7, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:F

    iget v8, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:F

    invoke-virtual {v6, v7, v8, v0, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 792
    iget-object v6, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Ljava/util/ArrayList;

    new-instance v7, Lqm;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-direct {v7, v0, v3, v8, v9}, Lqm;-><init>(FFJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    iget v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:F

    mul-float v3, v4, v4

    mul-float v4, v5, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:F

    .line 794
    iget v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:F

    iget v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 795
    iput-boolean v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    new-instance v3, Lqo;

    iget-object v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lqo;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/gesture/Gesture;->a(Lqo;)V

    .line 801
    if-nez p2, :cond_4

    .line 803
    iget-object v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Ljava/util/ArrayList;

    .line 804
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 805
    :goto_0
    if-ge v3, v5, :cond_1

    .line 806
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqj;

    invoke-interface {v0, p0, p1}, Lqj;->c(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 805
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 810
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->k:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-direct {p0, v0, v1, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(ZZZ)V

    .line 820
    :goto_3
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 821
    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    iput-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->g:Z

    .line 822
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    .line 829
    return-void

    :cond_2
    move v0, v2

    .line 810
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 813
    :cond_4
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 817
    :cond_5
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(Landroid/view/MotionEvent;)V

    goto :goto_3
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(I)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 469
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(I)V

    .line 470
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 471
    iput-boolean v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:Z

    .line 472
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    iput-boolean p2, v0, Lqi;->a:Z

    .line 473
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    iput-boolean v1, v0, Lqi;->b:Z

    .line 475
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 477
    iput v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:F

    .line 478
    iput-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->l:Z

    .line 479
    iput-boolean v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Z

    .line 480
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:J

    .line 482
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    iget-wide v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 507
    :goto_0
    return-void

    .line 484
    :cond_0
    iput v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:F

    .line 485
    iput-boolean v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->l:Z

    .line 486
    iput-boolean v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Z

    .line 488
    if-eqz p3, :cond_1

    .line 490
    iput-object v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    .line 491
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 492
    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0

    .line 493
    :cond_1
    if-eqz p2, :cond_2

    .line 495
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    iget-wide v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 496
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:I

    if-ne v0, v2, :cond_3

    .line 498
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    iput-boolean v2, v0, Lqi;->b:Z

    .line 499
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    iget-wide v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 502
    :cond_3
    iput-object v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    .line 503
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 504
    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 605
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 634
    :cond_1
    :goto_0
    return v0

    .line 607
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Landroid/view/MotionEvent;)V

    .line 608
    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0

    .line 611
    :pswitch_1
    iget-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:Z

    if-eqz v2, :cond_0

    .line 612
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Landroid/view/MotionEvent;)Landroid/graphics/Rect;

    move-result-object v1

    .line 613
    if-eqz v1, :cond_1

    .line 614
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 620
    :pswitch_2
    iget-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:Z

    if-eqz v2, :cond_0

    .line 621
    invoke-direct {p0, p1, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Landroid/view/MotionEvent;Z)V

    .line 622
    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0

    .line 627
    :pswitch_3
    iget-boolean v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:Z

    if-eqz v2, :cond_0

    .line 628
    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Landroid/view/MotionEvent;Z)V

    .line 629
    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->l:Z

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->g:Z

    return p1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:J

    return-wide v0
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    .line 457
    shr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 458
    iget v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:I

    ushr-int/lit8 v1, v1, 0x18

    .line 459
    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 460
    iget-object v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:I

    shl-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v2, v2, 0x8

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 833
    iget-object v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Ljava/util/ArrayList;

    .line 834
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 835
    :goto_0
    if-ge v1, v4, :cond_0

    .line 836
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqj;

    invoke-interface {v0, p0, p1}, Lqj;->d(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 835
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 839
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Z)V

    .line 840
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->l:Z

    return p1
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Z

    return p1
.end method

.method private d()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->setWillNotDraw(Z)V

    .line 197
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Paint;

    .line 198
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    iget v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 202
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 203
    iget v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 204
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 206
    iget v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:I

    .line 207
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(I)V

    .line 209
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Landroid/graphics/Paint;

    .line 210
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 215
    return-void

    .line 214
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:Z

    return p1
.end method

.method private e()V
    .locals 5

    .prologue
    .line 843
    iget-object v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Ljava/util/ArrayList;

    .line 844
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 845
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 846
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqk;

    iget-object v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-interface {v0, p0, v4}, Lqk;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Lcom/sohu/inputmethod/gesture/Gesture;)V

    .line 845
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 848
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/sohu/inputmethod/gesture/Gesture;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Z

    .line 372
    return-void
.end method

.method public a(Lqj;)V
    .locals 1
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method public a(Lqk;)V
    .locals 1
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->k:Z

    .line 395
    :cond_0
    return-void
.end method

.method public a(Lql;)V
    .locals 1
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Z

    .line 367
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 464
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(ZZZ)V

    .line 465
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->k:Z

    .line 407
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 510
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(I)V

    .line 511
    iput-boolean v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->l:Z

    .line 512
    iput-boolean v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Z

    .line 513
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lqi;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 514
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    .line 516
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 559
    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 560
    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/Gesture;->a()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->h:Z

    if-eqz v0, :cond_1

    move v1, v2

    .line 564
    :goto_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Landroid/view/MotionEvent;)Z

    .line 566
    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Z

    if-eqz v0, :cond_3

    move v4, v3

    .line 567
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql;

    invoke-interface {v0, p0, p1}, Lql;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 567
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v1, v3

    .line 560
    goto :goto_0

    .line 571
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 591
    :cond_3
    if-eqz v1, :cond_4

    .line 592
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 595
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 600
    :goto_2
    return v2

    .line 574
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->i:F

    iget v4, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 575
    iput-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Z

    .line 576
    :goto_3
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 577
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql;

    invoke-interface {v0, p0, p1}, Lql;->b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 576
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 583
    :pswitch_1
    iput-boolean v3, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Z

    .line 584
    :goto_4
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 585
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql;

    invoke-interface {v0, p0, p1}, Lql;->b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 584
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 600
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_2

    .line 571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 445
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 447
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:Z

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 454
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c()V

    .line 555
    return-void
.end method

.method public setDashRectPath(Landroid/graphics/Path;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Landroid/graphics/Path;

    .line 227
    return-void
.end method

.method public setEventsInterceptionEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->h:Z

    .line 297
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:Z

    .line 305
    return-void
.end method

.method public setFadeOffset(J)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-wide p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:J

    .line 360
    return-void
.end method

.method public setGesture(Lcom/sohu/inputmethod/gesture/Gesture;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x4000

    .line 312
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Z)V

    .line 316
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(I)V

    .line 317
    iput-object p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    .line 319
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Landroid/graphics/Path;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 321
    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 324
    iget-object v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 325
    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v1, v5, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v4

    invoke-virtual {v2, v0, v3, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 332
    :goto_0
    iput-boolean v7, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->j:Z

    .line 334
    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->invalidate()V

    .line 335
    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0
.end method

.method public setGestureColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:I

    .line 235
    return-void
.end method

.method public setGestureStrokeAngleThreshold(F)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:F

    .line 289
    return-void
.end method

.method public setGestureStrokeLengthThreshold(F)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b:F

    .line 273
    return-void
.end method

.method public setGestureStrokeSquarenessTreshold(F)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:F

    .line 281
    return-void
.end method

.method public setGestureStrokeType(I)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:I

    .line 265
    return-void
.end method

.method public setGestureStrokeWidth(F)V
    .locals 2
    .parameter

    .prologue
    .line 254
    iput p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:F

    .line 255
    const/4 v0, 0x1

    float-to-int v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d:I

    .line 256
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 257
    return-void
.end method

.method public setGestureVisible(Z)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->e:Z

    .line 352
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->f:I

    .line 231
    return-void
.end method

.method public setUncertainGestureColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput p1, p0, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c:I

    .line 239
    return-void
.end method

.class public final Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:I

.field private a:Landroid/graphics/Bitmap;

.field private final a:Landroid/graphics/Paint;

.field private a:Ljava/util/Collection;

.field private final b:I

.field private b:Ljava/util/Collection;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 64
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:I

    .line 66
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->b:I

    .line 67
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->c:I

    .line 69
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->d:I

    .line 71
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Ljava/util/Collection;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 81
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:I

    .line 83
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->b:I

    .line 84
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->c:I

    .line 86
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->d:I

    .line 88
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Ljava/util/Collection;

    .line 89
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Bitmap;

    .line 167
    invoke-virtual {p0}, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->invalidate()V

    .line 168
    return-void
.end method

.method public a(Lp;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0xff

    const/4 v1, 0x0

    .line 93
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    invoke-virtual {v0}, Lkl;->a()Landroid/graphics/Rect;

    move-result-object v8

    .line 97
    if-eqz v8, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 104
    iget-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->b:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    int-to-float v3, v9

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    int-to-float v5, v9

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    int-to-float v6, v0

    iget-object v7, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 109
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    int-to-float v2, v0

    int-to-float v3, v9

    add-int/lit8 v0, v10, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Bitmap;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:I

    goto :goto_1

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 121
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 123
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 125
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Ljava/util/Collection;

    .line 139
    iget-object v1, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->b:Ljava/util/Collection;

    .line 140
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->b:Ljava/util/Collection;

    .line 151
    :cond_4
    if-eqz v1, :cond_6

    .line 152
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    iget-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->d:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp;

    .line 155
    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Lp;->a()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Lp;->b()F

    move-result v0

    add-float/2addr v0, v3

    const/high16 v3, 0x4040

    iget-object v4, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 143
    :cond_5
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Ljava/util/Collection;

    .line 144
    iput-object v0, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->b:Ljava/util/Collection;

    .line 145
    iget-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    iget-object v2, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp;

    .line 148
    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Lp;->a()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v0}, Lp;->b()F

    move-result v0

    add-float/2addr v0, v4

    const/high16 v4, 0x40c0

    iget-object v5, p0, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 161
    :cond_6
    const-wide/16 v1, 0x64

    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method

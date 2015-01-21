.class public Laxl;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private a:I

.field private final a:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Z

.field private b:I

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Laxl;->a:Landroid/graphics/Rect;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxl;->a:Z

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Laxl;->d:I

    .line 43
    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 2
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Laxl;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 235
    iget v1, p0, Laxl;->d:I

    if-lt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Laxl;->d:I

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 228
    if-gtz p1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    iput p1, p0, Laxl;->d:I

    goto :goto_0
.end method

.method public a(IIIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 82
    iget-boolean v0, p0, Laxl;->a:Z

    if-eq v0, p4, :cond_0

    .line 83
    iput-boolean v1, p0, Laxl;->b:Z

    .line 89
    :cond_0
    iget v0, p0, Laxl;->a:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Laxl;->b:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Laxl;->c:I

    if-eq v0, p3, :cond_2

    .line 90
    :cond_1
    iput-boolean v1, p0, Laxl;->c:Z

    .line 93
    :cond_2
    iput p1, p0, Laxl;->a:I

    .line 94
    iput p2, p0, Laxl;->b:I

    .line 95
    iput p3, p0, Laxl;->c:I

    .line 96
    iput-boolean p4, p0, Laxl;->a:Z

    .line 97
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v1, p0, Laxl;->a:Landroid/graphics/Rect;

    .line 174
    iget-boolean v0, p0, Laxl;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laxl;->b:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 175
    :goto_0
    if-eqz v0, :cond_1

    .line 177
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p3

    add-int/2addr v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 187
    :cond_1
    iget-object v2, p0, Laxl;->a:Landroid/graphics/drawable/Drawable;

    .line 188
    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 191
    :cond_2
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    return-void

    .line 174
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iput-object p1, p0, Laxl;->a:Landroid/graphics/drawable/Drawable;

    .line 203
    iget-object v0, p0, Laxl;->a:Landroid/graphics/drawable/Drawable;

    sget-object v1, Laxr;->i:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 205
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_1

    .line 206
    const/16 v0, 0x5a

    .line 209
    :goto_0
    sget v1, Laox;->a:I

    div-int v0, v1, v0

    invoke-virtual {p0, v0}, Laxl;->a(I)V

    .line 211
    :cond_0
    return-void

    .line 208
    :cond_1
    const/16 v0, 0x3c

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    .line 102
    iget-boolean v5, p0, Laxl;->a:Z

    .line 103
    iget v1, p0, Laxl;->c:I

    .line 104
    iget v3, p0, Laxl;->a:I

    .line 106
    const/4 v0, 0x1

    .line 107
    if-lez v1, :cond_0

    if-gt v3, v1, :cond_1

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 112
    :cond_1
    invoke-virtual {p0}, Laxl;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 123
    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 127
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 128
    int-to-float v0, v4

    int-to-float v7, v1

    mul-float/2addr v0, v7

    int-to-float v7, v3

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 129
    sub-int/2addr v4, v0

    int-to-float v4, v4

    iget v7, p0, Laxl;->b:I

    int-to-float v7, v7

    mul-float/2addr v4, v7

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 132
    mul-int/lit8 v4, v6, 0x2

    .line 133
    if-ge v0, v4, :cond_4

    .line 137
    add-int v0, v3, v4

    if-le v0, v1, :cond_2

    .line 138
    sub-int v3, v1, v4

    :cond_2
    :goto_0
    move-object v0, p0

    move-object v1, p1

    .line 146
    invoke-virtual/range {v0 .. v5}, Laxl;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    .line 148
    :cond_3
    return-void

    :cond_4
    move v4, v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxl;->b:Z

    .line 154
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Laxl;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Laxl;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Laxl;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Laxl;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 272
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollBarDrawable: range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laxl;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laxl;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laxl;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Laxl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, " V"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " H"

    goto :goto_0
.end method

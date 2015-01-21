.class public Lapn;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/view/View;

.field a:Landroid/widget/TextView;

.field private a:Lapp;

.field a:Laxn;

.field private a:Z

.field private a:[I

.field private b:I

.field private b:Z

.field private b:[I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 88
    new-array v0, v1, [I

    iput-object v0, p0, Lapn;->a:[I

    .line 89
    new-array v0, v1, [I

    iput-object v0, p0, Lapn;->b:[I

    .line 91
    iput v2, p0, Lapn;->b:I

    .line 92
    iput v2, p0, Lapn;->c:I

    .line 98
    iput-object p2, p0, Lapn;->a:Landroid/view/View;

    .line 99
    iput-object p1, p0, Lapn;->a:Landroid/content/Context;

    .line 101
    iput p3, p0, Lapn;->a:I

    .line 103
    invoke-virtual {p0, v1}, Lapn;->setInputMethodMode(I)V

    .line 104
    invoke-virtual {p0, v2}, Lapn;->setTouchable(Z)V

    .line 105
    invoke-virtual {p0, v3}, Lapn;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 109
    const v1, 0x7f03000c

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 111
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lapn;->setContentView(Landroid/view/View;)V

    .line 113
    new-instance v0, Lapp;

    invoke-direct {v0, p0, v3}, Lapp;-><init>(Lapn;Lapo;)V

    iput-object v0, p0, Lapn;->a:Lapp;

    .line 114
    return-void
.end method

.method private a()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 220
    iget-object v0, p0, Lapn;->a:Landroid/view/View;

    iget-object v1, p0, Lapn;->a:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 221
    iget-object v0, p0, Lapn;->a:Landroid/view/View;

    iget-object v1, p0, Lapn;->b:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 222
    iget-object v0, p0, Lapn;->a:[I

    aget v0, v0, v2

    iget-object v1, p0, Lapn;->b:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lapn;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lapn;->a()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lapn;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lapn;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 278
    iget v0, p0, Lapn;->a:I

    .line 279
    iput p1, p0, Lapn;->a:I

    .line 280
    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-void
.end method

.method public a(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 286
    iget-object v0, p0, Lapn;->a:Laxn;

    invoke-virtual {p0, v0}, Lapn;->a(Laxn;)V

    .line 288
    iget-object v0, p0, Lapn;->a:Laxn;

    iget-object v4, v0, Laxn;->a:Landroid/graphics/Rect;

    .line 289
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    .line 290
    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    .line 291
    iget v1, p0, Lapn;->a:I

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 292
    iget v6, p0, Lapn;->a:I

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 293
    iget-object v7, p0, Lapn;->a:Landroid/widget/TextView;

    iget-object v8, p0, Lapn;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v8, v0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 294
    iget-object v7, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v6}, Landroid/widget/TextView;->measure(II)V

    .line 296
    invoke-virtual {p0}, Lapn;->getWidth()I

    move-result v6

    .line 298
    iget-object v1, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    iget-object v1, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v5

    .line 301
    iget-object v7, p0, Lapn;->a:Laxn;

    iget v7, v7, Laxn;->c:I

    if-ge v0, v7, :cond_0

    iget-object v0, p0, Lapn;->a:Laxn;

    iget v0, v0, Laxn;->c:I

    .line 302
    :cond_0
    iget-object v7, p0, Lapn;->a:Laxn;

    iget v7, v7, Laxn;->b:I

    if-ge v1, v7, :cond_1

    iget-object v1, p0, Lapn;->a:Laxn;

    iget v1, v1, Laxn;->b:I

    .line 303
    :cond_1
    invoke-virtual {p0, v0}, Lapn;->setWidth(I)V

    .line 304
    invoke-virtual {p0, v1}, Lapn;->setHeight(I)V

    .line 307
    iget v7, p0, Lapn;->b:I

    if-lez v7, :cond_2

    .line 308
    sub-int/2addr v1, v5

    iget v5, p0, Lapn;->b:I

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    .line 309
    iget-object v5, p0, Lapn;->a:Landroid/widget/TextView;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    invoke-virtual {v5, v7, v8, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 323
    :cond_2
    iput-boolean v2, p0, Lapn;->a:Z

    .line 324
    invoke-virtual {p0}, Lapn;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 325
    sub-int v1, v6, v0

    if-gt v1, v3, :cond_3

    sub-int/2addr v0, v6

    if-le v0, v3, :cond_5

    :cond_3
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lapn;->a:Z

    .line 327
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 325
    goto :goto_0
.end method

.method public a(J)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, -0x1

    .line 257
    iget-object v0, p0, Lapn;->a:Lapp;

    invoke-virtual {v0}, Lapp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lapn;->a:Lapp;

    invoke-virtual {v0}, Lapp;->b()Z

    .line 259
    iget-object v0, p0, Lapn;->a:Lapp;

    invoke-virtual {v0}, Lapp;->a()I

    move-result v0

    .line 260
    cmp-long v1, v6, p1

    if-eqz v1, :cond_0

    if-eq v3, v0, :cond_0

    .line 261
    iget-object v0, p0, Lapn;->a:Lapp;

    invoke-virtual {v0}, Lapp;->run()V

    .line 264
    :cond_0
    cmp-long v0, p1, v6

    if-gtz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lapn;->dismiss()V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lapn;->a:Lapp;

    const/4 v4, 0x0

    move-wide v1, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lapp;->a(JI[III)V

    goto :goto_0
.end method

.method public a(J[I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 226
    iget-object v0, p0, Lapn;->a:Lapp;

    invoke-virtual {v0}, Lapp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lapn;->a:Lapp;

    invoke-virtual {v0}, Lapp;->b()Z

    .line 238
    :cond_0
    iget-object v0, p0, Lapn;->a:Lapp;

    const/4 v3, 0x1

    move-wide v1, p1

    move-object v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lapp;->a(JI[III)V

    .line 239
    return-void
.end method

.method public a(J[III)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 243
    iget-object v0, p0, Lapn;->a:Lapp;

    invoke-virtual {v0}, Lapp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lapn;->a:Lapp;

    invoke-virtual {v0}, Lapp;->b()Z

    .line 249
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 250
    const/4 v0, 0x0

    aget v0, p3, v0

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-direct {p0}, Lapn;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1, p4, p5}, Lapn;->update(IIII)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lapn;->a:Lapp;

    const/4 v3, 0x3

    move-wide v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lapp;->a(JI[III)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 189
    if-eqz p1, :cond_1

    .line 190
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 191
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 192
    sget-boolean v2, Laox;->c:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lapn;->b:Z

    if-nez v2, :cond_0

    .line 193
    sget v2, Laox;->c:F

    .line 194
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 195
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 197
    :cond_0
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    iput v0, p0, Lapn;->b:I

    .line 200
    :cond_1
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 203
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 206
    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    iput p3, p0, Lapn;->b:I

    .line 210
    :cond_0
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 213
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lapn;->a:Landroid/view/View;

    .line 159
    return-void
.end method

.method public a(Lawe;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Lawe;->a()Laxn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lapn;->a(Laxn;)V

    .line 149
    invoke-virtual {p1}, Lawe;->e()Lawv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lapn;->a(Lawv;)V

    .line 150
    invoke-virtual {p1}, Lawe;->a()Lawt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lapn;->a(Lawt;)V

    goto :goto_0
.end method

.method public a(Lawt;)V
    .locals 5
    .parameter

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    iget v1, p1, Lawt;->a:F

    iget v2, p1, Lawt;->b:F

    iget v3, p1, Lawt;->c:F

    iget v4, p1, Lawt;->a:I

    invoke-static {v4}, Lawh;->a(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public a(Lawv;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    iget v0, p1, Lawv;->a:I

    int-to-float v0, v0

    sget v1, Laox;->a:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lapn;->c:I

    .line 136
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    iget v1, p0, Lapn;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    iget v1, p1, Lawv;->b:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lawv;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public a(Laxn;)V
    .locals 5
    .parameter

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 118
    :cond_0
    iput-object p1, p0, Lapn;->a:Laxn;

    .line 120
    iget-object v0, p1, Laxn;->a:Landroid/graphics/drawable/Drawable;

    .line 121
    if-eqz v0, :cond_1

    .line 124
    iget v1, p1, Laxn;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p1, Laxn;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 126
    :cond_1
    iget-object v1, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p1, Laxn;->a:Landroid/graphics/Rect;

    .line 129
    iget-object v1, p0, Lapn;->a:Landroid/widget/TextView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 177
    :try_start_0
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    iget v1, p0, Lapn;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lapn;->b:I

    .line 186
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v0, p0, Lapn;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-boolean p1, p0, Lapn;->b:Z

    .line 331
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lapn;->a:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lapn;->a:Lapp;

    invoke-virtual {v0}, Lapp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lapn;->a:Lapp;

    invoke-virtual {v0}, Lapp;->b()Z

    .line 275
    :cond_0
    return-void
.end method

.class public Lawa;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/os/Handler;

.field private a:Landroid/widget/ProgressBar;

.field private a:Landroid/widget/TextView;

.field private a:Ljava/lang/CharSequence;

.field private a:Ljava/lang/String;

.field private a:Ljava/text/NumberFormat;

.field private a:Z

.field private b:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/CharSequence;

.field private b:Z

.field private c:I

.field private c:Landroid/widget/TextView;

.field private c:Z

.field private d:I

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    const v0, 0x7f0d0017

    invoke-direct {p0, p1, v0}, Lawa;-><init>(Landroid/content/Context;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput v0, p0, Lawa;->a:I

    .line 53
    iput-boolean v0, p0, Lawa;->c:Z

    .line 63
    return-void
.end method

.method static synthetic a(Lawa;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lawa;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lawa;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lawa;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lawa;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lawa;)Ljava/text/NumberFormat;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lawa;->a:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic b(Lawa;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lawa;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lawa;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lawa;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 344
    :cond_0
    return-void
.end method

.method private h(I)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x21

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 377
    .line 378
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 379
    if-lez v0, :cond_0

    .line 380
    int-to-double v1, p1

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 381
    iget-object v3, p0, Lawa;->a:Ljava/lang/String;

    .line 382
    iget-object v4, p0, Lawa;->b:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v6, [Ljava/lang/Object;

    div-int/lit16 v7, p1, 0x400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    div-int/lit16 v0, v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "K"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    new-instance v0, Landroid/text/SpannableString;

    iget-object v3, p0, Lawa;->a:Ljava/text/NumberFormat;

    invoke-virtual {v3, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 384
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 386
    iget-object v1, p0, Lawa;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lawa;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lawa;->a:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lawa;->a:Ljava/text/NumberFormat;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 390
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 392
    iget-object v1, p0, Lawa;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lawa;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lawa;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 358
    :cond_0
    iget-boolean v0, p0, Lawa;->c:Z

    if-eqz v0, :cond_1

    .line 359
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lawa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 362
    :goto_0
    invoke-virtual {p0, v1}, Lawa;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 363
    invoke-virtual {p0, v1}, Lawa;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 364
    invoke-virtual {p0, v1}, Lawa;->a(Landroid/graphics/drawable/Drawable;)V

    .line 365
    invoke-virtual {p0, v1}, Lawa;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 366
    invoke-virtual {p0, v1}, Lawa;->b(Landroid/graphics/drawable/Drawable;)V

    .line 367
    invoke-virtual {p0, v1}, Lawa;->setView(Landroid/view/View;)V

    .line 368
    iput-object v1, p0, Lawa;->a:Landroid/widget/ProgressBar;

    .line 369
    iput-object v1, p0, Lawa;->a:Landroid/widget/TextView;

    .line 371
    iput-object v1, p0, Lawa;->b:Landroid/widget/TextView;

    .line 372
    iput-object v1, p0, Lawa;->c:Landroid/widget/TextView;

    .line 373
    iput-object v1, p0, Lawa;->d:Landroid/widget/TextView;

    .line 374
    return-void

    .line 361
    :cond_1
    const v0, 0x7f070162

    invoke-virtual {p0, v0}, Lawa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-boolean v0, p0, Lawa;->b:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 201
    invoke-direct {p0}, Lawa;->b()V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iput p1, p0, Lawa;->c:I

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iput-object p1, p0, Lawa;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iput-boolean p1, p0, Lawa;->a:Z

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-boolean v0, p0, Lawa;->b:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 209
    invoke-direct {p0, p1}, Lawa;->h(I)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iput p1, p0, Lawa;->c:I

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iput-object p1, p0, Lawa;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public c(I)V
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 218
    invoke-direct {p0}, Lawa;->b()V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iput p1, p0, Lawa;->d:I

    goto :goto_0
.end method

.method public d(I)V
    .locals 1
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 248
    invoke-direct {p0}, Lawa;->b()V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iput p1, p0, Lawa;->b:I

    goto :goto_0
.end method

.method public e(I)V
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 257
    invoke-direct {p0}, Lawa;->b()V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget v0, p0, Lawa;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lawa;->e:I

    goto :goto_0
.end method

.method public f(I)V
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 266
    invoke-direct {p0}, Lawa;->b()V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget v0, p0, Lawa;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lawa;->f:I

    goto :goto_0
.end method

.method public g(I)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput p1, p0, Lawa;->a:I

    .line 319
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const v6, 0x7f0700e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-virtual {p0}, Lawa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    iget v1, p0, Lawa;->a:I

    if-ne v1, v5, :cond_9

    .line 102
    new-instance v1, Lawb;

    invoke-direct {v1, p0}, Lawb;-><init>(Lawa;)V

    iput-object v1, p0, Lawa;->a:Landroid/os/Handler;

    .line 138
    const v1, 0x7f030002

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 139
    const v0, 0x7f070010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    .line 140
    const v0, 0x7f070012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawa;->b:Landroid/widget/TextView;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d/%d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lawa;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lawa;->a:Ljava/lang/String;

    .line 142
    const v0, 0x7f070011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawa;->c:Landroid/widget/TextView;

    .line 143
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lawa;->a:Ljava/text/NumberFormat;

    .line 144
    iget-object v0, p0, Lawa;->a:Ljava/text/NumberFormat;

    invoke-virtual {v0, v4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 145
    const v0, 0x102000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawa;->a:Landroid/widget/TextView;

    .line 146
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawa;->d:Landroid/widget/TextView;

    .line 147
    iput-boolean v5, p0, Lawa;->c:Z

    .line 148
    invoke-virtual {p0, v1}, Lawa;->setView(Landroid/view/View;)V

    .line 157
    :goto_1
    iget v0, p0, Lawa;->b:I

    if-lez v0, :cond_0

    .line 158
    iget v0, p0, Lawa;->b:I

    invoke-virtual {p0, v0}, Lawa;->d(I)V

    .line 160
    :cond_0
    iget v0, p0, Lawa;->c:I

    if-lez v0, :cond_1

    .line 161
    iget v0, p0, Lawa;->c:I

    invoke-virtual {p0, v0}, Lawa;->a(I)V

    .line 163
    :cond_1
    iget v0, p0, Lawa;->d:I

    if-lez v0, :cond_2

    .line 164
    iget v0, p0, Lawa;->d:I

    invoke-virtual {p0, v0}, Lawa;->c(I)V

    .line 166
    :cond_2
    iget v0, p0, Lawa;->e:I

    if-lez v0, :cond_3

    .line 167
    iget v0, p0, Lawa;->e:I

    invoke-virtual {p0, v0}, Lawa;->e(I)V

    .line 169
    :cond_3
    iget v0, p0, Lawa;->f:I

    if-lez v0, :cond_4

    .line 170
    iget v0, p0, Lawa;->f:I

    invoke-virtual {p0, v0}, Lawa;->f(I)V

    .line 172
    :cond_4
    iget-object v0, p0, Lawa;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lawa;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lawa;->a(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_5
    iget-object v0, p0, Lawa;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 176
    iget-object v0, p0, Lawa;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lawa;->b(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_6
    iget-object v0, p0, Lawa;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 179
    iget-object v0, p0, Lawa;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 181
    :cond_7
    iget-boolean v0, p0, Lawa;->a:Z

    invoke-virtual {p0, v0}, Lawa;->a(Z)V

    .line 182
    invoke-direct {p0}, Lawa;->b()V

    .line 183
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 184
    return-void

    .line 141
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lawa;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :cond_9
    const v1, 0x7f030041

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 151
    const v0, 0x102000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    .line 152
    const v0, 0x7f070163

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawa;->a:Landroid/widget/TextView;

    .line 153
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawa;->d:Landroid/widget/TextView;

    .line 154
    iput-boolean v4, p0, Lawa;->c:Z

    .line 155
    invoke-virtual {p0, v1}, Lawa;->setView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawa;->b:Z

    .line 190
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lawa;->b:Z

    .line 196
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lawa;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 306
    iget v0, p0, Lawa;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lawa;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lawa;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    :cond_1
    iput-object p1, p0, Lawa;->b:Ljava/lang/CharSequence;

    goto :goto_0
.end method

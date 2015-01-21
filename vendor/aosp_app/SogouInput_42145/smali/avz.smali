.class public final Lavz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public a:Ljava/lang/String;

.field public a:Ljava/util/HashMap;

.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lavz;->a:Ljava/util/HashMap;

    return-void
.end method

.method private final a(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lavz;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 367
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 368
    aget-object v0, v0, p1

    .line 370
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Layx;Ljava/util/HashMap;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 349
    const-string v0, "Advance"

    invoke-virtual {p0, v0}, Layx;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v7, v5, v4

    .line 350
    const-string v0, "Advance"

    const/4 v2, 0x0

    invoke-static {p0, v0, v7, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 352
    :cond_1
    new-instance v8, Lazf;

    const/16 v2, 0x2c

    invoke-direct {v8, v0, v2}, Lazf;-><init>(Ljava/lang/String;I)V

    .line 353
    invoke-virtual {v8}, Lazf;->a()I

    move-result v0

    new-array v9, v0, [Ljava/lang/CharSequence;

    move v0, v1

    move v2, v1

    .line 356
    :goto_2
    invoke-virtual {v8}, Lazf;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 357
    invoke-virtual {v8}, Lazf;->a()Ljava/lang/String;

    move-result-object v10

    .line 358
    add-int/lit8 v3, v2, 0x1

    aput-object v10, v9, v2

    .line 359
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v2, v3

    .line 360
    goto :goto_2

    .line 361
    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {p1, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 363
    :cond_4
    return-void
.end method

.method private static final a(Ljava/util/HashMap;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 330
    const-string v0, "PY"

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "py_9.ini"

    aput-object v2, v1, v3

    const-string v2, "py_26.ini"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v0, "BH"

    new-array v1, v4, [Ljava/lang/CharSequence;

    const-string v2, "bh.ini"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, "EN"

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "en_9.ini"

    aput-object v2, v1, v3

    const-string v2, "en_26.ini"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v0, "12"

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "digit_9.ini"

    aput-object v2, v1, v3

    const-string v2, "digit_26.ini"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v0, "AB"

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "en_9_multi.ini"

    aput-object v2, v1, v3

    const-string v2, "en_26.ini"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v0, "EDIT"

    new-array v1, v4, [Ljava/lang/CharSequence;

    const-string v2, "edit.ini"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v0, "VOICE"

    new-array v1, v4, [Ljava/lang/CharSequence;

    const-string v2, "voice.ini"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method private static final b(Ljava/util/HashMap;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 340
    const-string v0, "PY"

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "py_9.ini"

    aput-object v2, v1, v3

    const-string v2, "py_26.ini"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "EN"

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "en_9.ini"

    aput-object v2, v1, v3

    const-string v2, "en_26.ini"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "12"

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "digit_9.ini"

    aput-object v2, v1, v3

    const-string v2, "digit_26.ini"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v0, "AB"

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "en_9.ini"

    aput-object v2, v1, v3

    const-string v2, "en_26.ini"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, "EDIT"

    new-array v1, v4, [Ljava/lang/CharSequence;

    const-string v2, "edit.ini"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v0, "VOICE"

    new-array v1, v4, [Ljava/lang/CharSequence;

    const-string v2, "voice.ini"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lavz;->a:I

    return v0
.end method

.method public final a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 401
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->IME_NAMES:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    .line 403
    iget-object v1, p0, Lavz;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 404
    if-eqz v0, :cond_1

    .line 405
    array-length v1, v0

    .line 406
    rem-int/2addr p1, v1

    .line 407
    :goto_0
    if-ltz p1, :cond_0

    aget-object v2, v0, p1

    if-nez v2, :cond_1

    .line 408
    :cond_0
    add-int/lit8 v2, p1, 0x1

    add-int/2addr v2, v1

    rem-int p1, v2, v1

    goto :goto_0

    .line 411
    :cond_1
    return p1
.end method

.method public a(Layx;)Lavz;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 302
    const-string v0, "ThemeInfo"

    const-string v1, "NAME"

    invoke-static {p1, v0, v1, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavz;->a:Ljava/lang/String;

    .line 303
    const-string v0, "ThemeInfo"

    const-string v1, "AUTHOR"

    invoke-static {p1, v0, v1, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavz;->b:Ljava/lang/String;

    .line 304
    const-string v0, "ThemeInfo"

    const-string v1, "VERSION"

    invoke-static {p1, v0, v1, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavz;->c:Ljava/lang/String;

    .line 305
    const-string v0, "ThemeInfo"

    const-string v1, "PREVIEW"

    invoke-static {p1, v0, v1, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavz;->d:Ljava/lang/String;

    .line 306
    const-string v0, "ThemeInfo"

    const-string v1, "PROTOCOL"

    const/4 v2, 0x5

    invoke-static {p1, v0, v1, v2}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lavz;->a:I

    .line 307
    const-string v0, "ThemeInfo"

    const-string v1, "GESTURE"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lavz;->a:Z

    .line 308
    const-string v0, "ThemeInfo"

    const-string v1, "CANDIDTAE_PREVIEW"

    invoke-static {p1, v0, v1, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavz;->e:Ljava/lang/String;

    .line 309
    const-string v0, "Advance"

    invoke-virtual {p1, v0}, Layx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lavz;->a:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lavz;->a(Layx;Ljava/util/HashMap;)V

    .line 317
    :goto_0
    return-object p0

    .line 311
    :cond_0
    iget v0, p0, Lavz;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 312
    iget-object v0, p0, Lavz;->a:Ljava/util/HashMap;

    invoke-static {v0}, Lavz;->b(Ljava/util/HashMap;)V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lavz;->a:Ljava/util/HashMap;

    invoke-static {v0}, Lavz;->a(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public final a(II)Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-static {p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getKeyboardIndexByType(I)I

    move-result v0

    .line 384
    invoke-static {p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v1

    .line 385
    sget-object v2, Lcom/sohu/inputmethod/engine/IMEInterface;->IME_NAMES:[Ljava/lang/CharSequence;

    aget-object v1, v2, v1

    .line 387
    invoke-direct {p0, v0, v1}, Lavz;->a(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lavz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lavz;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lavz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lavz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lavz;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lavz;->e:Ljava/lang/String;

    return-object v0
.end method

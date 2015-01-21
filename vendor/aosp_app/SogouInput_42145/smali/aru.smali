.class public Laru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lasf;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 2269
    iput-object p1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2394
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2396
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->m(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2397
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2398
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2399
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v1

    invoke-virtual {v1}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2400
    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2401
    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2403
    :cond_0
    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2408
    :cond_1
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2409
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->a:I

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isQwertyKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2410
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->n(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->o(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2411
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    .line 2412
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2429
    :cond_2
    :goto_0
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    if-ne v0, v3, :cond_7

    .line 2430
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2431
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->s(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2437
    :cond_3
    :goto_1
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->r(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2439
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->q(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2440
    return-void

    .line 2415
    :cond_4
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 2418
    :cond_5
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2419
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2420
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2424
    :cond_6
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2425
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2434
    :cond_7
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iput-boolean v3, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    .line 2435
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasf;

    move-result-object v0

    invoke-interface {v0}, Lasf;->a()V

    goto :goto_1
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 2443
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2444
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->r(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2445
    return-void
.end method

.method public a(I[III)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2297
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v3

    iget-object v3, v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v3, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2298
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iput-boolean v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    .line 2300
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2301
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    iget v3, v0, Lamo;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lamo;->a:I

    .line 2303
    :cond_0
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2307
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->a:I

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isSpKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2308
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2309
    :cond_1
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->l(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    .line 2310
    if-eqz v0, :cond_8

    move v0, v1

    .line 2313
    :goto_0
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->m(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2314
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2315
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2316
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v5, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v5

    invoke-virtual {v5}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2317
    iget-object v5, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 2318
    iget-object v5, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2320
    :cond_2
    iget-object v5, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2325
    :cond_3
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v3

    iget v3, v3, Lasd;->a:I

    invoke-static {v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->isQwertyKeyboard(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2326
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->n(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->o(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2327
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 2328
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    :cond_4
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)[Lary;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 2333
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)[Lary;

    move-result-object v6

    array-length v7, v6

    move v5, v2

    move v3, v2

    :goto_1
    if-ge v5, v7, :cond_12

    aget-object v8, v6, v5

    .line 2334
    add-int/lit8 v3, v3, 0x1

    .line 2335
    iget v8, v8, Lary;->a:I

    if-ne v8, p1, :cond_9

    move v2, v3

    .line 2340
    :goto_2
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_a

    if-le v2, v4, :cond_5

    move v2, v4

    :cond_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2352
    :cond_6
    :goto_4
    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v1

    iget v1, v1, Lasd;->a:I

    const v2, 0x60002

    if-ne v1, v2, :cond_f

    .line 2353
    const/16 v1, 0x61

    if-lt p1, v1, :cond_d

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_d

    .line 2355
    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    add-int/lit8 v2, p1, 0x41

    add-int/lit8 v2, v2, -0x61

    invoke-virtual {v1, v2, v0, p3, p4}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInput(IIII)I

    move-result v0

    if-eqz v0, :cond_c

    .line 2356
    invoke-virtual {p0, p1}, Laru;->b(I)V

    .line 2389
    :cond_7
    :goto_5
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2391
    return-void

    :cond_8
    move v0, v2

    .line 2310
    goto/16 :goto_0

    .line 2333
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2340
    :cond_a
    const-string v1, "0"

    goto :goto_3

    .line 2344
    :cond_b
    iget-object v3, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v3, v1, :cond_6

    .line 2345
    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2346
    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2358
    :cond_c
    invoke-virtual {p0}, Laru;->b()V

    goto :goto_5

    .line 2361
    :cond_d
    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInput(II)I

    move-result v0

    if-eqz v0, :cond_e

    .line 2362
    invoke-virtual {p0, p1}, Laru;->b(I)V

    goto :goto_5

    .line 2364
    :cond_e
    invoke-virtual {p0}, Laru;->b()V

    goto :goto_5

    .line 2369
    :cond_f
    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v1

    iget v1, v1, Lasd;->a:I

    invoke-static {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->isSpKeyboard(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2375
    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInput(II)I

    move-result v0

    if-eqz v0, :cond_7

    .line 2376
    invoke-virtual {p0, p1}, Laru;->b(I)V

    goto :goto_5

    .line 2382
    :cond_10
    iget-object v1, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInput(II)I

    move-result v0

    if-eqz v0, :cond_11

    .line 2384
    invoke-virtual {p0, p1}, Laru;->b(I)V

    goto :goto_5

    .line 2386
    :cond_11
    invoke-virtual {p0}, Laru;->b()V

    goto :goto_5

    :cond_12
    move v1, v2

    move v2, v3

    goto/16 :goto_2

    :cond_13
    move v1, v2

    goto/16 :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    invoke-static {v0}, Lasd;->a(Lasd;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Z

    if-nez v0, :cond_1

    .line 2290
    :cond_0
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->r(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2294
    :goto_0
    return-void

    .line 2292
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Z

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 2271
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    invoke-static {v0}, Lasd;->a(Lasd;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2272
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2273
    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    .line 2274
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->q(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2286
    :goto_0
    return-void

    .line 2276
    :cond_0
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_0

    .line 2279
    :cond_1
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Z

    if-eqz v0, :cond_2

    .line 2280
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Z

    goto :goto_0

    .line 2282
    :cond_2
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->o()V

    .line 2283
    iget-object v0, p0, Laru;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I)V

    goto :goto_0
.end method

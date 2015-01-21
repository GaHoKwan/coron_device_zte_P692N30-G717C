.class public Larv;
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
    .line 2470
    iput-object p1, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 2587
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v1, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2588
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    .line 2589
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2590
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->s(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2592
    :cond_0
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->r(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2593
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2594
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 2597
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v1, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2598
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    .line 2599
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->r(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2600
    return-void
.end method

.method public a(I[III)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x32

    const/16 v0, 0x31

    const/4 v6, 0x0

    const/16 v2, 0x27

    const/4 v5, 0x1

    .line 2473
    iget-object v3, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v3

    iget-object v4, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v4

    iget-object v4, v4, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v4, v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2474
    iget-object v3, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v3

    iput-boolean v5, v3, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    .line 2475
    iget-object v3, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3, v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2477
    iget-object v3, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v3

    invoke-static {v3}, Lasd;->a(Lasd;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2478
    iget-object v3, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v3

    invoke-virtual {v3}, Laou;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2479
    :cond_0
    iget-object v3, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3, v6}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2481
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    .line 2483
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "A810e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2484
    sparse-switch p1, :sswitch_data_0

    .line 2521
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    .line 2522
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2572
    :cond_2
    :goto_0
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v0

    invoke-virtual {v0}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    if-ne p1, v2, :cond_4

    .line 2573
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->t(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2574
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c()V

    .line 2584
    :goto_1
    return-void

    .line 2486
    :sswitch_0
    iget-object v1, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v1

    if-nez v1, :cond_2

    move p1, v0

    .line 2487
    goto :goto_0

    .line 2491
    :sswitch_1
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    move p1, v1

    .line 2492
    goto :goto_0

    .line 2496
    :sswitch_2
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2497
    const/16 p1, 0x33

    goto :goto_0

    .line 2501
    :sswitch_3
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2502
    const/16 p1, 0x34

    goto :goto_0

    .line 2506
    :sswitch_4
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2507
    const/16 p1, 0x35

    goto :goto_0

    .line 2511
    :sswitch_5
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2512
    const/16 p1, 0x36

    goto :goto_0

    .line 2516
    :sswitch_6
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    move p1, v2

    .line 2517
    goto :goto_0

    .line 2528
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 2565
    :pswitch_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    .line 2566
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    goto :goto_0

    .line 2530
    :pswitch_1
    iget-object v1, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v1

    if-nez v1, :cond_2

    move p1, v0

    .line 2531
    goto/16 :goto_0

    .line 2535
    :pswitch_2
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    move p1, v1

    .line 2536
    goto/16 :goto_0

    .line 2540
    :pswitch_3
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2541
    const/16 p1, 0x33

    goto/16 :goto_0

    .line 2545
    :pswitch_4
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2546
    const/16 p1, 0x34

    goto/16 :goto_0

    .line 2550
    :pswitch_5
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2551
    const/16 p1, 0x35

    goto/16 :goto_0

    .line 2555
    :pswitch_6
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2556
    const/16 p1, 0x36

    goto/16 :goto_0

    .line 2560
    :pswitch_7
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-nez v0, :cond_2

    move p1, v2

    .line 2561
    goto/16 :goto_0

    .line 2578
    :cond_4
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0, p1, v6}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInput(II)I

    move-result v0

    if-eqz v0, :cond_5

    .line 2580
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2582
    :goto_2
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto/16 :goto_1

    .line 2581
    :cond_5
    iget-object v0, p0, Larv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->r(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_2

    .line 2484
    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_4
        0x63 -> :sswitch_5
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0x6e -> :sswitch_6
        0x76 -> :sswitch_3
    .end sparse-switch

    .line 2528
    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

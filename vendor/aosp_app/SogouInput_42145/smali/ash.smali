.class public Lash;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laoq;


# instance fields
.field private a:I

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 1
    .parameter

    .prologue
    const v0, 0x7fffffff

    .line 2670
    iput-object p1, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2671
    iput v0, p0, Lash;->a:I

    .line 2672
    iput v0, p0, Lash;->b:I

    .line 2673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lash;->a:Z

    .line 2670
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 2678
    iget v0, p0, Lash;->a:I

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 2675
    const v0, 0x7fffffff

    iput v0, p0, Lash;->a:I

    .line 2676
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 2681
    iget v0, p0, Lash;->a:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2777
    const/4 v0, 0x0

    return v0
.end method

.method public a(ILjava/lang/CharSequence;II)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2695
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->r(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-boolean v2, v2, Lcom/sohu/inputmethod/sogou/SogouIME;->c:Z

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v2

    invoke-virtual {v2}, Laoe;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2698
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;Z)Z

    .line 2699
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v2

    invoke-virtual {v2}, Laoe;->c()V

    .line 2700
    iput p1, p0, Lash;->a:I

    .line 2701
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Laoe;->a(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2702
    if-eqz v2, :cond_2

    .line 2703
    iget-object v3, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v4, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->s(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;Z)V

    .line 2704
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v2

    invoke-virtual {v2}, Laor;->a()V

    .line 2705
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 2706
    iget-object v1, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->u(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    :goto_0
    move v1, v0

    .line 2773
    :cond_1
    :goto_1
    return v1

    .line 2710
    :cond_2
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v3, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->s(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/CharSequence;Z)V

    .line 2711
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v2

    invoke-virtual {v2}, Laor;->a()V

    .line 2712
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 2713
    iget-object v1, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->u(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_0

    .line 2719
    :cond_3
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v2

    iget v2, v2, Lasd;->b:I

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPinyinIME(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2720
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->t(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2721
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2722
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2723
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v2

    iget v3, v2, Lamo;->ch:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lamo;->ch:I

    .line 2728
    :cond_4
    :goto_2
    iget v2, p0, Lash;->a:I

    if-eq v2, p1, :cond_5

    .line 2729
    iput p1, p0, Lash;->a:I

    .line 2730
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v2

    const/16 v3, -0xfd

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInput(II)I

    move-result v2

    .line 2731
    iget-object v3, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v2, :cond_7

    :goto_3
    invoke-static {v3, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 2733
    iget-object v0, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->v(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2736
    :cond_5
    iget-object v0, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto/16 :goto_1

    .line 2725
    :cond_6
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2726
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v2

    iget v3, v2, Lamo;->cg:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lamo;->cg:I

    goto :goto_2

    :cond_7
    move v0, v1

    .line 2731
    goto :goto_3

    .line 2739
    :cond_8
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2740
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2741
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v2

    iget v3, v2, Lamo;->ce:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lamo;->ce:I

    .line 2754
    :cond_9
    :goto_4
    iget v2, p0, Lash;->a:I

    if-eq v2, p1, :cond_a

    .line 2755
    iput p1, p0, Lash;->a:I

    .line 2756
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v2

    invoke-virtual {v2}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2757
    iget-object v3, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v3

    const/16 v4, -0xff

    const/high16 v5, 0x100

    or-int/2addr v5, p1

    invoke-virtual {v3, v4, v5}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInput(II)I

    move-result v3

    .line 2759
    if-eqz v3, :cond_1

    .line 2762
    iget-object v4, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v3, :cond_c

    :goto_5
    invoke-static {v4, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 2763
    iget-object v0, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->v(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2764
    iget-object v0, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v0

    invoke-virtual {v0}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2765
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2766
    iget-object v0, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->q(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2772
    :cond_a
    :goto_6
    iget-object v0, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto/16 :goto_1

    .line 2743
    :cond_b
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2744
    iget-object v2, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v2

    iget v3, v2, Lamo;->cf:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lamo;->cf:I

    goto :goto_4

    :cond_c
    move v0, v1

    .line 2762
    goto :goto_5

    .line 2769
    :cond_d
    iget-object v0, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_6
.end method

.method public a(ILjava/lang/CharSequence;III)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2791
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2687
    iget-boolean v0, p0, Lash;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lash;->a:Z

    .line 2688
    iget-boolean v0, p0, Lash;->a:Z

    if-eqz v0, :cond_1

    .line 2689
    iget v0, p0, Lash;->a:I

    iput v0, p0, Lash;->b:I

    .line 2693
    :goto_1
    return-void

    .line 2687
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2691
    :cond_1
    iget v0, p0, Lash;->b:I

    iput v0, p0, Lash;->a:I

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 2684
    iget-boolean v0, p0, Lash;->a:Z

    return v0
.end method

.method public b(ILjava/lang/CharSequence;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2780
    iget-object v1, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v1

    invoke-virtual {v1}, Laoe;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2786
    :cond_0
    :goto_0
    return v0

    .line 2783
    :cond_1
    iget-object v1, p0, Lash;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v1

    invoke-static {v1}, Lasd;->a(Lasd;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2784
    invoke-virtual {p0, p1, p2, v0, v0}, Lash;->a(ILjava/lang/CharSequence;II)Z

    move-result v0

    goto :goto_0
.end method

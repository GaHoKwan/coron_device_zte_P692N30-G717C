.class public Lard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lasc;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 14274
    iput-object p1, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x6

    const/4 v2, 0x0

    .line 14276
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14315
    :goto_0
    return-void

    .line 14278
    :cond_0
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setLockEnabled(Z)V

    .line 14279
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->b:I

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPinyinIME(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14282
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    move-result-object v0

    iget-object v3, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->t(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setFiltered(Z)V

    .line 14283
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setFilterVisible(I)V

    .line 14287
    :goto_1
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v0

    invoke-virtual {v0}, Laor;->c()V

    .line 14289
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14290
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    iget-object v3, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Laor;Z)V

    .line 14297
    :goto_2
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setTextAlignment(Landroid/text/Layout$Alignment;)V

    .line 14298
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_4

    .line 14299
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_3

    .line 14301
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMaxColumns(I)V

    .line 14309
    :goto_3
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setUseUpperCaseWidth(Z)V

    .line 14310
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    iget-object v3, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setRowColumns(II)V

    .line 14311
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v3

    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v0

    invoke-virtual {v0}, Laou;->c()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setIfDrawContactSign(Z)V

    .line 14312
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    iget-object v3, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v3

    invoke-virtual {v3}, Laou;->c()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_5
    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setIfDrawEmojiWord(Z)V

    .line 14314
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 14285
    :cond_1
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setFilterVisible(I)V

    goto/16 :goto_1

    .line 14292
    :cond_2
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    iget-object v3, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v3

    iget-object v4, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lash;

    move-result-object v4

    invoke-virtual {v4}, Lash;->a()I

    move-result v4

    iget-object v5, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lash;

    move-result-object v5

    invoke-virtual {v5}, Lash;->a()Z

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Laor;IZ)V

    goto/16 :goto_2

    .line 14303
    :cond_3
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMaxColumns(I)V

    goto/16 :goto_3

    .line 14305
    :cond_4
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_5

    .line 14306
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMaxColumns(I)V

    goto/16 :goto_3

    .line 14308
    :cond_5
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMaxColumns(I)V

    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 14311
    goto/16 :goto_4

    :cond_7
    move v1, v2

    .line 14312
    goto :goto_5
.end method

.method public a(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14319
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 14362
    :cond_0
    :goto_0
    return-void

    .line 14323
    :cond_1
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14324
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14325
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->setButtonMoreEnabled(Z)V

    .line 14328
    :cond_2
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->t(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->b:I

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPinyinIME(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 14331
    :cond_3
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14335
    :cond_4
    if-eqz p1, :cond_6

    .line 14336
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14341
    :goto_1
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 14342
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v0

    invoke-virtual {v0}, Laor;->c()V

    .line 14343
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v0

    iget-object v0, v0, Laor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v1

    .line 14344
    :goto_2
    iget-object v3, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 14345
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoe;->e(Z)V

    .line 14346
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    iget-object v2, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v2

    iget-object v3, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lash;

    move-result-object v3

    invoke-virtual {v3}, Lash;->a()I

    move-result v3

    iget-object v4, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lash;

    move-result-object v4

    invoke-virtual {v4}, Lash;->a()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Laoe;->a(Laor;IZ)V

    .line 14349
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoe;->a(Z)V

    .line 14361
    :cond_5
    :goto_3
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->r(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto/16 :goto_0

    .line 14338
    :cond_6
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 14339
    iget-object v0, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->K(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_1

    :cond_7
    move v0, v2

    .line 14343
    goto :goto_2

    .line 14352
    :cond_8
    iget-object v3, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->getUnCommittedLengthNative()I

    move-result v3

    if-lez v3, :cond_a

    move v3, v1

    .line 14353
    :goto_4
    iget-object v4, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v5

    iget-object v4, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->t(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v4

    :goto_5
    iget-object v6, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v6}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lash;

    move-result-object v6

    invoke-virtual {v6}, Lash;->a()I

    move-result v6

    iget-object v7, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v7}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lash;

    move-result-object v7

    invoke-virtual {v7}, Lash;->a()Z

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Laoe;->a(Laor;IZ)V

    .line 14357
    iget-object v4, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v5

    if-eqz v0, :cond_9

    if-nez v3, :cond_d

    :cond_9
    move v4, v1

    :goto_6
    invoke-virtual {v5, v4}, Laoe;->a(Z)V

    .line 14358
    iget-object v4, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v4

    if-eqz v0, :cond_e

    if-eqz v3, :cond_e

    :goto_7
    invoke-virtual {v4, v1}, Laoe;->e(Z)V

    goto :goto_3

    :cond_a
    move v3, v2

    .line 14352
    goto :goto_4

    .line 14353
    :cond_b
    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    iget-object v4, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v4

    goto :goto_5

    :cond_c
    iget-object v4, p0, Lard;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v4

    goto :goto_5

    :cond_d
    move v4, v2

    .line 14357
    goto :goto_6

    :cond_e
    move v1, v2

    .line 14358
    goto :goto_7
.end method

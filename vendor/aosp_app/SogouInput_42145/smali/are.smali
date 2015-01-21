.class public Lare;
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
    .line 14365
    iput-object p1, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14367
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14395
    :goto_0
    return-void

    .line 14369
    :cond_0
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setLockEnabled(Z)V

    .line 14370
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->setFilterVisible(I)V

    .line 14371
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v0

    invoke-static {}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Laor;->a(Ljava/util/List;)Laor;

    .line 14372
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14373
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    iget-object v1, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Laor;Z)V

    .line 14379
    :goto_1
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setTextAlignment(Landroid/text/Layout$Alignment;)V

    .line 14380
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_3

    .line 14381
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_2

    .line 14382
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMaxColumns(I)V

    .line 14390
    :goto_2
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setUseUpperCaseWidth(Z)V

    .line 14391
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    iget-object v1, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setRowColumns(II)V

    .line 14392
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setIfDrawContactSign(Z)V

    .line 14393
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setIfDrawEmojiWord(Z)V

    .line 14394
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 14375
    :cond_1
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    iget-object v1, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v1

    iget-object v2, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->a(Laor;IZ)V

    goto/16 :goto_1

    .line 14384
    :cond_2
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMaxColumns(I)V

    goto :goto_2

    .line 14386
    :cond_3
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_4

    .line 14387
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMaxColumns(I)V

    goto :goto_2

    .line 14389
    :cond_4
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->setMaxColumns(I)V

    goto/16 :goto_2
.end method

.method public a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14397
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laou;

    move-result-object v0

    invoke-virtual {v0}, Laou;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 14421
    :cond_0
    :goto_0
    return-void

    .line 14400
    :cond_1
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;I)I

    .line 14401
    if-eqz p1, :cond_3

    .line 14402
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14407
    :goto_1
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14408
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v0

    iget-object v0, v0, Laor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    .line 14409
    :goto_2
    iget-object v3, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14410
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    iget-object v3, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Laoe;->a(Laor;Z)V

    .line 14411
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoe;->a(Z)V

    .line 14420
    :cond_2
    :goto_3
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 14404
    :cond_3
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->e(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 14405
    iget-object v0, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->K(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 14408
    goto :goto_2

    .line 14414
    :cond_5
    iget-object v3, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v4

    if-eqz v0, :cond_6

    iget-object v3, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3, v2}, Laoe;->a(Laor;Z)V

    .line 14417
    iget-object v3, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laoe;

    move-result-object v3

    if-nez v0, :cond_7

    :goto_5
    invoke-virtual {v3, v1}, Laoe;->a(Z)V

    goto :goto_3

    .line 14414
    :cond_6
    iget-object v3, p0, Lare;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v3

    goto :goto_4

    :cond_7
    move v1, v2

    .line 14417
    goto :goto_5
.end method

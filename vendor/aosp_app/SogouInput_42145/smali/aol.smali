.class public Laol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    iget-object v2, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 195
    :cond_0
    iget-object v0, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    move v0, v1

    .line 216
    :cond_1
    :goto_0
    return v0

    .line 198
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v1, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->ae:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->ae:I

    .line 209
    iget-object v1, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v2, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 201
    iget-object v2, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    iget-object v2, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(I)V

    .line 203
    iget-object v2, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(ZZ)Z

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v2, p0, Laol;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.class public Laog;
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
    .line 89
    iput-object p1, p0, Laog;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Laog;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 94
    iget-object v0, p0, Laog;->a:Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;->b(Lcom/sohu/inputmethod/sogou/CandidateGridViewContainer;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

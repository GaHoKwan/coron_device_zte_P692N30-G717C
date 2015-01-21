.class public Laoo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Laoo;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Laoo;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Laoo;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(I)V

    .line 144
    iget-object v0, p0, Laoo;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    const/16 v1, -0x2d

    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 146
    :cond_0
    return-void
.end method

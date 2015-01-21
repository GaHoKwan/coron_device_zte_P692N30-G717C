.class public Laom;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field final synthetic a:Lcom/sohu/inputmethod/sogou/CandidateView;

.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/CandidateView;)V
    .locals 1
    .parameter

    .prologue
    .line 857
    iput-object p1, p0, Laom;->a:Lcom/sohu/inputmethod/sogou/CandidateView;

    .line 858
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 853
    const/4 v0, 0x0

    iput-boolean v0, p0, Laom;->a:Z

    .line 859
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Laom;->a:I

    return v0
.end method

.method public a(JII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    iget-object v0, p0, Laom;->a:Lcom/sohu/inputmethod/sogou/CandidateView;

    iget-object v0, v0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laom;

    invoke-virtual {v0}, Laom;->a()Z

    .line 863
    invoke-virtual {p0, p0, p1, p2}, Laom;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Laom;->a:Z

    .line 865
    iput p3, p0, Laom;->a:I

    .line 866
    iput p4, p0, Laom;->b:I

    .line 867
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 878
    iget-boolean v1, p0, Laom;->a:Z

    if-eqz v1, :cond_0

    .line 879
    iput-boolean v0, p0, Laom;->a:Z

    .line 880
    invoke-virtual {p0, p0}, Laom;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 881
    const/4 v0, 0x1

    .line 883
    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Laom;->b:I

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 891
    iget v0, p0, Laom;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Laom;->b:I

    if-ltz v0, :cond_0

    .line 893
    iget-object v0, p0, Laom;->a:Lcom/sohu/inputmethod/sogou/CandidateView;

    iget v1, p0, Laom;->b:I

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(I)V

    .line 896
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Laom;->a:Z

    .line 897
    return-void
.end method

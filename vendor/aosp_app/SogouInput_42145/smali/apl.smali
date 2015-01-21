.class public Lapl;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field final synthetic a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;)V
    .locals 1
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lapl;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    .line 927
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapl;->a:Z

    .line 928
    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 931
    iget-object v0, p0, Lapl;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;)Lapl;

    move-result-object v0

    invoke-virtual {v0}, Lapl;->a()Z

    .line 932
    invoke-virtual {p0, p0, p1, p2}, Lapl;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lapl;->a:Z

    .line 934
    iput p3, p0, Lapl;->a:I

    .line 935
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 943
    iget-boolean v1, p0, Lapl;->a:Z

    if-eqz v1, :cond_0

    .line 944
    iput-boolean v0, p0, Lapl;->a:Z

    .line 945
    invoke-virtual {p0, p0}, Lapl;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 946
    const/4 v0, 0x1

    .line 948
    :cond_0
    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 956
    iget v0, p0, Lapl;->a:I

    if-ltz v0, :cond_0

    .line 958
    iget-object v0, p0, Lapl;->a:Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;

    iget v1, p0, Lapl;->a:I

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b(I)V

    .line 961
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapl;->a:Z

    .line 962
    return-void
.end method

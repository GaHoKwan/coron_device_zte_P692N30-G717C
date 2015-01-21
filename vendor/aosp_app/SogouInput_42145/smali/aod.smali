.class public Laod;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)V
    .locals 1
    .parameter

    .prologue
    .line 1483
    iput-object p1, p0, Laod;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    .line 1484
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1481
    const/4 v0, 0x0

    iput-boolean v0, p0, Laod;->a:Z

    .line 1485
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 1488
    iget-object v0, p0, Laod;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)Laod;

    move-result-object v0

    invoke-virtual {v0}, Laod;->a()Z

    .line 1489
    invoke-virtual {p0, p0, p1, p2}, Laod;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1490
    const/4 v0, 0x1

    iput-boolean v0, p0, Laod;->a:Z

    .line 1491
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1494
    iget-boolean v1, p0, Laod;->a:Z

    if-eqz v1, :cond_0

    .line 1495
    iput-boolean v0, p0, Laod;->a:Z

    .line 1496
    invoke-virtual {p0, p0}, Laod;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1497
    const/4 v0, 0x1

    .line 1499
    :cond_0
    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1509
    iget-object v0, p0, Laod;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    iget-object v1, p0, Laod;->a:Lcom/sohu/inputmethod/sogou/CandidateCloudView;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;I)V

    .line 1512
    const/4 v0, 0x0

    iput-boolean v0, p0, Laod;->a:Z

    .line 1513
    return-void
.end method

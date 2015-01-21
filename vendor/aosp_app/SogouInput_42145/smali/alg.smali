.class public Lalg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl;


# instance fields
.field protected a:I

.field protected a:Lalv;

.field protected a:Landroid/content/Context;

.field protected a:Lrr;

.field protected a:Lsg;

.field protected b:Z

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lalg;->b:Z

    .line 18
    iput-boolean v0, p0, Lalg;->c:Z

    .line 24
    iput-object p1, p0, Lalg;->a:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lalv;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lalg;->a:Lalv;

    .line 104
    return-void
.end method

.method public a(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p2, p0, Lalg;->a:Lsg;

    .line 39
    invoke-virtual {p2}, Lsg;->a()Z

    move-result v0

    iput-boolean v0, p0, Lalg;->c:Z

    .line 40
    iget-object v0, p0, Lalg;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lalg;->c:Z

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lalg;->a:Lalv;

    invoke-interface {v0}, Lalv;->d()V

    .line 43
    :cond_0
    return-void
.end method

.method public a(Lsg;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lalg;->a:Lalv;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lalg;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lalg;->c:Z

    .line 91
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lalg;->b:Z

    return v0
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lalv;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lalg;->a:Lalv;

    .line 30
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    return-void
.end method

.method public b(Lsg;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lalg;->a:Lalv;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lalg;->a:Lalv;

    invoke-interface {v0}, Lalv;->f()V

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalg;->c:Z

    .line 99
    return-void
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lalg;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lalg;->c:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lalg;->a:Lalv;

    invoke-interface {v0}, Lalv;->h()V

    .line 56
    :cond_0
    invoke-static {}, Laox;->b()V

    .line 58
    return-void
.end method

.method public c(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lalg;->a:Lsg;

    .line 34
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lalg;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalg;->b:Z

    .line 64
    iget-object v0, p0, Lalg;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lalg;->c:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lalg;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lalg;->a:Lalv;

    .line 68
    :cond_0
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalg;->b:Z

    .line 73
    return-void
.end method

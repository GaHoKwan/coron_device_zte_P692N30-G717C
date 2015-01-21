.class public Lamn;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamn;->a:Z

    .line 23
    new-instance v0, Lrr;

    iget-object v1, p0, Lamn;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamn;->a:Lrr;

    .line 24
    iput-object p2, p0, Lamn;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamn;->b:Z

    .line 54
    iput-boolean v1, p0, Lamn;->a:Z

    .line 55
    iget-object v0, p0, Lamn;->a:Lsg;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lamn;->a:Lsg;

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 58
    :cond_0
    iget-object v0, p0, Lamn;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 59
    return-void
.end method

.method public a(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p2, p0, Lamn;->a:Lsg;

    .line 29
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lamn;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamn;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lamn;->a:Lrr;

    iget-object v1, p0, Lamn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lrr;->d(Ljava/lang/String;)I

    move-result v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lamn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onWork uploadSpeechRecoPingbackData ======== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamn;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamn;->b:Z

    .line 38
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lamn;->a()V

    .line 42
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lamn;->a()V

    .line 46
    return-void
.end method

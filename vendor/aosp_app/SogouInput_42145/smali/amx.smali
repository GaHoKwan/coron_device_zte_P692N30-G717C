.class public Lamx;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Lhf;

.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lamx;->a:Lhf;

    .line 21
    iput v1, p0, Lamx;->b:I

    .line 22
    iput v1, p0, Lamx;->c:I

    .line 23
    iput-object v0, p0, Lamx;->a:Ljava/lang/String;

    .line 27
    const-string v0, "ThemeSortController construct function"

    invoke-direct {p0, v0}, Lamx;->b(Ljava/lang/String;)V

    .line 28
    iput v1, p0, Lamx;->b:I

    .line 29
    const/16 v0, 0x14

    iput v0, p0, Lamx;->c:I

    .line 30
    new-instance v0, Lhf;

    iget-object v1, p0, Lamx;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->L:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamx;->a:Lhf;

    .line 31
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .prologue
    const/16 v0, 0x12

    .line 65
    new-instance v1, Ljava/io/File;

    sget-object v2, Laox;->I:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 68
    :cond_0
    iget-object v1, p0, Lamx;->a:Lhf;

    iget-object v2, p0, Lamx;->a:Ljava/lang/String;

    iget v3, p0, Lamx;->b:I

    iget v4, p0, Lamx;->c:I

    invoke-virtual {v1, v2, v3, v4}, Lhf;->b(Ljava/lang/String;II)I

    move-result v1

    .line 70
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 71
    const/16 v0, 0x39

    .line 73
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lamx;->a:Lsg;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lamx;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 83
    :cond_0
    iget-object v0, p0, Lamx;->a:Lhf;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lamx;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 85
    iget-object v0, p0, Lamx;->a:Lhf;

    invoke-virtual {v0}, Lhf;->c()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lamx;->a:Lhf;

    .line 88
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lamx;->b:I

    .line 35
    iput p2, p0, Lamx;->c:I

    .line 36
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lamx;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0}, Lamx;->a()I

    move-result v0

    .line 44
    iget-object v1, p0, Lamx;->a:Lalv;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lamx;->a:Lalv;

    invoke-interface {v1, v0}, Lalv;->a(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lamx;->a:Lsg;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lamx;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 54
    :cond_0
    iget-object v0, p0, Lamx;->a:Lhf;

    invoke-virtual {v0}, Lhf;->c()V

    .line 55
    iget-object v0, p0, Lamx;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamx;->b:Z

    .line 57
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    return-void
.end method

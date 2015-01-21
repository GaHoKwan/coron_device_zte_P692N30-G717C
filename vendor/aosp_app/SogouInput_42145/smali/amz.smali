.class public Lamz;
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

    .line 28
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v0, p0, Lamz;->a:Lhf;

    .line 23
    iput v1, p0, Lamz;->b:I

    .line 24
    iput v1, p0, Lamz;->c:I

    .line 25
    iput-object v0, p0, Lamz;->a:Ljava/lang/String;

    .line 29
    const-string v0, "ThemeSortController construct function"

    invoke-direct {p0, v0}, Lamz;->b(Ljava/lang/String;)V

    .line 30
    iput v1, p0, Lamz;->b:I

    .line 31
    const/16 v0, 0x14

    iput v0, p0, Lamz;->c:I

    .line 32
    new-instance v0, Lhf;

    iget-object v1, p0, Lamz;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->K:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamz;->a:Lhf;

    .line 33
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/16 v0, 0x12

    .line 72
    new-instance v1, Ljava/io/File;

    sget-object v2, Laox;->I:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 75
    :cond_0
    iget-object v1, p0, Lamz;->a:Lhf;

    invoke-virtual {v1}, Lhf;->l()I

    move-result v1

    .line 77
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 78
    iget-object v2, p0, Lamz;->a:Lhf;

    invoke-virtual {v2}, Lhf;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_3

    const-string v3, "date"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    const-string v0, "date"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lamz;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->t()Ljava/lang/String;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const/16 v0, 0x1b

    .line 90
    :cond_1
    :goto_0
    return v0

    .line 85
    :cond_2
    iget-object v1, p0, Lamz;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->t(Ljava/lang/String;)V

    .line 86
    const/16 v0, 0x1a

    goto :goto_0

    .line 90
    :cond_3
    if-eq v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lamz;->a:Lsg;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lamz;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 115
    :cond_0
    iget-object v0, p0, Lamz;->a:Lhf;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lamz;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 117
    iget-object v0, p0, Lamz;->a:Lhf;

    invoke-virtual {v0}, Lhf;->c()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lamz;->a:Lhf;

    .line 120
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lamz;->b:I

    .line 37
    iput p2, p0, Lamz;->c:I

    .line 38
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lamz;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public b()I
    .locals 5

    .prologue
    const/16 v0, 0x12

    .line 97
    new-instance v1, Ljava/io/File;

    sget-object v2, Laox;->I:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 100
    :cond_0
    iget-object v1, p0, Lamz;->a:Lhf;

    iget-object v2, p0, Lamz;->a:Ljava/lang/String;

    iget v3, p0, Lamz;->b:I

    iget v4, p0, Lamz;->c:I

    invoke-virtual {v1, v2, v3, v4}, Lhf;->a(Ljava/lang/String;II)I

    move-result v1

    .line 102
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 103
    const/16 v0, 0x39

    .line 105
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    .line 47
    iget-object v0, p0, Lamz;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lamz;->a()I

    move-result v0

    .line 52
    :goto_0
    iget-object v1, p0, Lamz;->a:Lalv;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lamz;->a:Lalv;

    invoke-interface {v1, v0}, Lalv;->a(I)V

    .line 55
    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Lamz;->b()I

    move-result v0

    goto :goto_0
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lamz;->a:Lsg;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lamz;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lamz;->a:Lhf;

    invoke-virtual {v0}, Lhf;->c()V

    .line 63
    iget-object v0, p0, Lamz;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamz;->b:Z

    .line 65
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    return-void
.end method

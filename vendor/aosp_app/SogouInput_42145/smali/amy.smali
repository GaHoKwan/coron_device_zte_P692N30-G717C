.class public Lamy;
.super Lalg;
.source "SourceFile"


# instance fields
.field a:Lhf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lamy;->a:Lhf;

    .line 25
    const-string v0, "ThemeSearchKeywordsController construct function"

    invoke-direct {p0, v0}, Lamy;->a(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lhf;

    iget-object v1, p0, Lamy;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->M:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamy;->a:Lhf;

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/16 v0, 0x12

    .line 53
    new-instance v1, Ljava/io/File;

    sget-object v2, Laox;->I:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 56
    :cond_0
    iget-object v1, p0, Lamy;->a:Lhf;

    invoke-virtual {v1}, Lhf;->m()I

    move-result v1

    .line 58
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    .line 59
    iget-object v2, p0, Lamy;->a:Lhf;

    invoke-virtual {v2}, Lhf;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_4

    const-string v3, "date"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    const-string v0, "date"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lamy;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->w()Ljava/lang/String;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 66
    :cond_1
    iget-object v1, p0, Lamy;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->w(Ljava/lang/String;)V

    .line 67
    const/16 v0, 0x3a

    .line 73
    :cond_2
    :goto_0
    return v0

    .line 69
    :cond_3
    const/16 v0, 0x3b

    goto :goto_0

    .line 73
    :cond_4
    if-eq v1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lamy;->a:Lsg;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lamy;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 83
    :cond_0
    iget-object v0, p0, Lamy;->a:Lhf;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lamy;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 85
    iget-object v0, p0, Lamy;->a:Lhf;

    invoke-virtual {v0}, Lhf;->c()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lamy;->a:Lhf;

    .line 88
    :cond_1
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lamy;->a()I

    move-result v0

    .line 32
    iget-object v1, p0, Lamy;->a:Lalv;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lamy;->a:Lalv;

    invoke-interface {v1, v0}, Lalv;->a(I)V

    .line 35
    :cond_0
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lamy;->a:Lsg;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lamy;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 42
    :cond_0
    iget-object v0, p0, Lamy;->a:Lhf;

    invoke-virtual {v0}, Lhf;->c()V

    .line 43
    iget-object v0, p0, Lamy;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamy;->b:Z

    .line 45
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    return-void
.end method

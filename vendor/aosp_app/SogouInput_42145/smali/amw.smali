.class public Lamw;
.super Lalg;
.source "SourceFile"


# instance fields
.field a:Lhf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lamw;->a:Lhf;

    .line 26
    const-string v0, "ThemeRecommendController construct function"

    invoke-direct {p0, v0}, Lamw;->a(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lhf;

    iget-object v1, p0, Lamw;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->J:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamw;->a:Lhf;

    .line 28
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/16 v0, 0x12

    .line 141
    new-instance v1, Ljava/io/File;

    sget-object v2, Laox;->I:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 144
    :cond_0
    iget-object v1, p0, Lamw;->a:Lhf;

    invoke-virtual {v1}, Lhf;->k()I

    move-result v1

    .line 146
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 147
    iget-object v2, p0, Lamw;->a:Lhf;

    invoke-virtual {v2}, Lhf;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_3

    const-string v3, "date"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    const-string v0, "date"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lamw;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->s()Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const/16 v0, 0x1b

    .line 159
    :cond_1
    :goto_0
    return v0

    .line 154
    :cond_2
    iget-object v1, p0, Lamw;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->s(Ljava/lang/String;)V

    .line 155
    const/16 v0, 0x1a

    goto :goto_0

    .line 159
    :cond_3
    if-eq v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lamw;->a:Lsg;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lamw;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lamw;->a:Lhf;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lamw;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 202
    iget-object v0, p0, Lamw;->a:Lhf;

    invoke-virtual {v0}, Lhf;->c()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lamw;->a:Lhf;

    .line 205
    :cond_1
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Lamw;->a()I

    move-result v0

    .line 38
    iget-object v1, p0, Lamw;->a:Lalv;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lamw;->a:Lalv;

    invoke-interface {v1, v0}, Lalv;->a(I)V

    .line 41
    :cond_0
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lamw;->a:Lsg;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lamw;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 48
    :cond_0
    iget-object v0, p0, Lamw;->a:Lhf;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lamw;->a:Lhf;

    invoke-virtual {v0}, Lhf;->c()V

    .line 50
    iget-object v0, p0, Lamw;->a:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 52
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamw;->b:Z

    .line 53
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    return-void
.end method

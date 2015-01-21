.class public Lahn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl;


# instance fields
.field private a:I

.field private a:Lalv;

.field private a:Landroid/content/Context;

.field private a:Ljava/util/List;

.field private a:Lrr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lahn;->a:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lahn;->a:I

    .line 31
    iput-object p1, p0, Lahn;->a:Landroid/content/Context;

    .line 32
    new-instance v0, Lrr;

    iget-object v1, p0, Lahn;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lahn;->a:Lrr;

    .line 33
    iput-object p2, p0, Lahn;->a:Ljava/util/List;

    .line 34
    return-void
.end method

.method private a()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/16 v1, 0x2c

    .line 107
    iget-object v2, p0, Lahn;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lahn;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 139
    :goto_0
    return v0

    .line 111
    :cond_1
    :try_start_0
    iget-object v2, p0, Lahn;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 113
    sget-object v2, Laox;->ac:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Layw;->a(Ljava/lang/String;ZZ)V

    move v2, v0

    .line 114
    :goto_1
    if-ge v2, v3, :cond_4

    .line 115
    iget-object v0, p0, Lahn;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laox;->ac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 114
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 122
    :cond_2
    iget-object v5, p0, Lahn;->a:Lrr;

    invoke-virtual {v5, v0, v4}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 123
    const/16 v5, 0x18

    if-ne v0, v5, :cond_3

    .line 125
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 666 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 128
    goto :goto_0

    :cond_3
    move v0, v1

    .line 131
    goto :goto_0

    .line 135
    :catch_1
    move-exception v0

    move v0, v1

    .line 137
    goto :goto_0

    .line 139
    :cond_4
    const/16 v0, 0x2b

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    return-void
.end method


# virtual methods
.method public a(Lalv;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lahn;->a:Lalv;

    .line 39
    return-void
.end method

.method public a(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lahn;->a:Lalv;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lahn;->a:Lalv;

    invoke-interface {v0}, Lalv;->d()V

    .line 47
    :cond_0
    return-void
.end method

.method public a(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lahn;->a:Lalv;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lahn;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 54
    :cond_0
    invoke-direct {p0}, Lahn;->a()I

    move-result v0

    iput v0, p0, Lahn;->a:I

    .line 55
    iget-object v0, p0, Lahn;->a:Lalv;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lahn;->a:Lalv;

    iget v1, p0, Lahn;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 58
    :cond_1
    iget v0, p0, Lahn;->a:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    .line 59
    const-string v0, "download ad images fail!"

    invoke-direct {p0, v0}, Lahn;->a(Ljava/lang/String;)V

    .line 61
    :cond_2
    return-void
.end method

.method public b(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lahn;->a:Lalv;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lahn;->a:Lalv;

    invoke-interface {v0}, Lalv;->h()V

    .line 68
    :cond_0
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lahn;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 73
    iget-object v0, p0, Lahn;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 74
    iget-object v0, p0, Lahn;->a:Lalv;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lahn;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lahn;->a:Lalv;

    .line 79
    :cond_0
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    return-void
.end method

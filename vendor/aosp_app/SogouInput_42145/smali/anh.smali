.class public Lanh;
.super Lalg;
.source "SourceFile"

# interfaces
.implements Lsb;


# instance fields
.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lrr;

    iget-object v1, p0, Lanh;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lanh;->a:Lrr;

    .line 36
    iget-object v0, p0, Lanh;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsa;->a(Lsb;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "voice_dict.zip"

    return-object v0
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 41
    const/4 v2, 0x0

    .line 43
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v0, Laox;->G:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lanh;->c:I

    .line 45
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    iput v0, p0, Lanh;->d:I

    .line 46
    iget v0, p0, Lanh;->d:I

    iget v2, p0, Lanh;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lanh;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 54
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 56
    iget-object v0, p0, Lanh;->a:Lrr;

    sget-object v1, Laox;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lrr;->h(Ljava/lang/String;)I

    move-result v0

    .line 57
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sohu/inputmethod/sogou/SogouIME;->b:J

    .line 59
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->G:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Layw;->b(Ljava/io/File;)Z

    .line 61
    iget-object v0, p0, Lanh;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lanh;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lafp;->f(Z)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 48
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :goto_2
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 51
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 54
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 50
    :catch_2
    move-exception v0

    goto :goto_3

    .line 47
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lanh;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lanh;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lanh;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, ""

    return-object v0
.end method

.class public Lalp;
.super Lalg;
.source "SourceFile"

# interfaces
.implements Lsj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lrr;

    iget-object v1, p0, Lalp;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lalp;->a:Lrr;

    .line 29
    return-void
.end method

.method private a()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 47
    iget-object v0, p0, Lalp;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    .line 48
    new-instance v3, Laly;

    invoke-virtual {v2}, Lafp;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lafp;->m()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lalp;->a:Landroid/content/Context;

    invoke-direct {v3, v0, v4, v5}, Laly;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 49
    invoke-virtual {v3}, Laly;->a()I

    move-result v0

    .line 50
    const/16 v4, 0xa

    if-eq v0, v4, :cond_0

    .line 107
    :goto_0
    return v0

    .line 53
    :cond_0
    invoke-virtual {v3}, Laly;->c()Ljava/lang/String;

    move-result-object v3

    .line 54
    if-nez v3, :cond_1

    .line 55
    const/16 v0, 0x17

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v2}, Lafp;->h()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 60
    new-instance v4, Ljava/io/File;

    sget-object v0, Laox;->y:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 62
    iget-object v0, p0, Lalp;->a:Lrr;

    invoke-virtual {v0, v1}, Lrr;->a(Z)V

    .line 63
    const/4 v2, 0x0

    .line 65
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    iget-object v2, p0, Lalp;->a:Lrr;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v4

    invoke-virtual {v2, v4}, Lrr;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :goto_1
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 77
    :cond_2
    :goto_2
    iget-object v0, p0, Lalp;->a:Lrr;

    sget-object v2, Laox;->y:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lrr;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 78
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_7

    .line 79
    iget-object v0, p0, Lalp;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_4

    const-string v2, "updateurl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 81
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 68
    :goto_3
    :try_start_2
    iget-object v2, p0, Lalp;->a:Lrr;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lrr;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 70
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 74
    :cond_3
    invoke-virtual {v2, v3}, Lafp;->k(Ljava/lang/String;)V

    goto :goto_2

    .line 84
    :cond_4
    iget-object v0, p0, Lalp;->a:Lrr;

    sget-object v2, Laox;->y:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    const/16 v2, 0x18

    if-ne v0, v2, :cond_7

    .line 87
    iget-boolean v0, p0, Lalp;->c:Z

    if-nez v0, :cond_5

    .line 88
    iget-object v0, p0, Lalp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/engine/IMEInterface;->release(Z)V

    .line 90
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sgim_ex.bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v1, :cond_6

    .line 92
    sget-object v2, Laox;->y:Ljava/lang/String;

    sget-object v3, Laox;->v:Ljava/lang/String;

    const-string v4, "sgim_ex.bin"

    invoke-static {v2, v3, v4}, Lazj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    :goto_5
    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->init()V

    .line 97
    new-instance v0, Ljava/io/File;

    sget-object v2, Laox;->y:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v1, :cond_5

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    :cond_5
    iput-boolean v1, p0, Lalp;->b:Z

    .line 103
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 94
    :cond_6
    sget-object v2, Laox;->y:Ljava/lang/String;

    sget-object v3, Laox;->v:Ljava/lang/String;

    invoke-static {v2, v3}, Lazj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 107
    :cond_7
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 70
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 67
    :catch_1
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public a(Lsg;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 112
    iget-object v0, p0, Lalp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->release(Z)V

    .line 114
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sgim_ex.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 116
    sget-object v1, Laox;->y:Ljava/lang/String;

    sget-object v2, Laox;->v:Ljava/lang/String;

    const-string v3, "sgim_ex.bin"

    invoke-static {v1, v2, v3}, Lazj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    :goto_0
    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->init()V

    .line 121
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->y:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 125
    :cond_0
    return v4

    .line 118
    :cond_1
    sget-object v1, Laox;->y:Ljava/lang/String;

    sget-object v2, Laox;->v:Ljava/lang/String;

    invoke-static {v1, v2}, Lazj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lalp;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lalp;->c:Z

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lalp;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 35
    :cond_0
    invoke-direct {p0}, Lalp;->a()I

    move-result v0

    iput v0, p0, Lalp;->a:I

    .line 36
    iget-object v0, p0, Lalp;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lalp;->c:Z

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lalp;->a:Lalv;

    iget v1, p0, Lalp;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 39
    :cond_1
    return-void
.end method

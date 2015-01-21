.class public Lamg;
.super Lalg;
.source "SourceFile"

# interfaces
.implements Lsb;
.implements Lsj;


# instance fields
.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 36
    iget-object v0, p0, Lamg;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsa;->a(Lsb;)V

    .line 37
    new-instance v0, Lrr;

    iget-object v1, p0, Lamg;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamg;->a:Lrr;

    .line 38
    return-void
.end method

.method private a()I
    .locals 10

    .prologue
    const/16 v2, 0xd

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 72
    iget-object v0, p0, Lamg;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->saveUserDict()V

    .line 74
    new-instance v0, Ljava/io/File;

    sget-object v6, Laox;->w:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v6, Ljava/io/File;

    sget-object v7, Laox;->v:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laox;->v:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "sgim_usr.bin"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v7, v5

    .line 90
    :goto_0
    if-ne v7, v3, :cond_2

    .line 93
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v0

    iput v0, p0, Lamg;->c:I

    .line 95
    iget v0, p0, Lamg;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_c

    .line 96
    const/16 v0, 0x14

    .line 101
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    .line 135
    :goto_1
    return v0

    .line 82
    :cond_1
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laox;->v:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "sgim_usr.bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-static {v6, v0, v7, v8}, Lazj;->a(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v7, v3

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v6

    move v7, v3

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_2
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 98
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 101
    :goto_3
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 103
    :goto_4
    iput v5, p0, Lamg;->d:I

    .line 104
    iget v0, p0, Lamg;->c:I

    iget v6, p0, Lamg;->d:I

    sub-int/2addr v0, v6

    iput v0, p0, Lamg;->b:I

    .line 107
    :cond_2
    iget-object v6, p0, Lamg;->a:Lrr;

    if-ne v7, v3, :cond_3

    sget-object v0, Laox;->w:Ljava/lang/String;

    :goto_5
    invoke-virtual {v6, v0}, Lrr;->g(Ljava/lang/String;)I

    move-result v0

    .line 108
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_a

    .line 109
    iget-object v0, p0, Lamg;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 110
    if-nez v0, :cond_4

    move v0, v2

    .line 111
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 107
    goto :goto_5

    .line 112
    :cond_4
    if-eqz v0, :cond_5

    const-string v5, "updateurl"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    .line 113
    goto :goto_1

    .line 115
    :cond_5
    const-string v5, "error"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v2

    .line 117
    goto :goto_1

    .line 119
    :cond_6
    const-string v2, "keyurl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v4

    .line 120
    goto :goto_1

    .line 122
    :cond_7
    const-string v2, "keyurl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lamg;->a:Lrr;

    sget-object v5, Laox;->w:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 124
    const/16 v2, 0x18

    if-ne v0, v2, :cond_9

    .line 125
    iget-boolean v0, p0, Lamg;->c:Z

    if-nez v0, :cond_8

    .line 126
    invoke-virtual {p0, v1}, Lamg;->a(Lsg;)Z

    .line 128
    :cond_8
    iput-boolean v3, p0, Lamg;->b:Z

    .line 129
    const/16 v0, 0x16

    goto/16 :goto_1

    :cond_9
    move v0, v4

    .line 131
    goto/16 :goto_1

    .line 132
    :cond_a
    const/16 v1, 0x14

    if-ne v0, v1, :cond_b

    move v0, v4

    .line 133
    goto/16 :goto_1

    :cond_b
    move v0, v5

    .line 135
    goto/16 :goto_1

    .line 101
    :cond_c
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 98
    :catch_2
    move-exception v0

    move-object v0, v6

    goto :goto_3
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lamg;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    :goto_0
    return-object v0

    .line 160
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 161
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lamg;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lsg;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 140
    iget-object v0, p0, Lamg;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->release(Z)V

    .line 142
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sgim_ex.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 144
    sget-object v0, Laox;->w:Ljava/lang/String;

    sget-object v1, Laox;->v:Ljava/lang/String;

    const-string v2, "sgim_ex.bin"

    invoke-static {v0, v1, v2}, Lazj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    :goto_0
    iget-object v0, p0, Lamg;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->init()V

    .line 149
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->w:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 153
    :cond_0
    return v3

    .line 146
    :cond_1
    sget-object v0, Laox;->w:Ljava/lang/String;

    sget-object v1, Laox;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lazj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lamg;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "pc_dict.zip"

    return-object v0
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lamg;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamg;->c:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lamg;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 48
    :cond_0
    invoke-direct {p0}, Lamg;->a()I

    move-result v0

    iput v0, p0, Lamg;->a:I

    .line 49
    iget-object v0, p0, Lamg;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lamg;->c:Z

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lamg;->a:Lalv;

    iget v1, p0, Lamg;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 52
    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lamg;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lamg;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lamg;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, ""

    return-object v0
.end method

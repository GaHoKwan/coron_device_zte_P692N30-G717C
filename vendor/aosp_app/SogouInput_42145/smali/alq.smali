.class public Lalq;
.super Lalg;
.source "SourceFile"

# interfaces
.implements Lsb;


# instance fields
.field private a:J

.field private a:Lafp;

.field private a:Ljava/lang/String;

.field private b:I

.field private b:J

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    sget-object v0, Laox;->k:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lalq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lalq;->a:Ljava/lang/String;

    .line 39
    iput-wide v0, p0, Lalq;->a:J

    .line 40
    iput-wide v0, p0, Lalq;->b:J

    .line 41
    invoke-static {p1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsa;->a(Lsb;)V

    .line 42
    new-instance v0, Lrr;

    iget-object v1, p0, Lalq;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p4}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lalq;->a:Lrr;

    .line 43
    iget-object v0, p0, Lalq;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iput-object v0, p0, Lalq;->a:Lafp;

    .line 44
    iget-object v0, p0, Lalq;->a:Lrr;

    new-instance v1, Lalr;

    invoke-direct {v1, p0}, Lalr;-><init>(Lalq;)V

    invoke-virtual {v0, v1}, Lrr;->a(Lrq;)V

    .line 61
    return-void
.end method

.method private a()I
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/16 v0, 0xd

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x14

    .line 111
    iget-object v4, p0, Lalq;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->saveUserDict()V

    .line 112
    new-instance v4, Ljava/io/File;

    sget-object v6, Laox;->v:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v6, Ljava/io/File;

    sget-object v7, Laox;->x:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_2

    :cond_0
    move v0, v2

    .line 181
    :cond_1
    :goto_0
    return v0

    .line 118
    :cond_2
    const/4 v7, 0x0

    const/16 v8, 0x9

    :try_start_0
    invoke-static {v4, v6, v7, v8}, Lazj;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    iput v5, p0, Lalq;->d:I

    .line 127
    iget-object v5, p0, Lalq;->a:Lafp;

    invoke-virtual {v5}, Lafp;->b()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-nez v5, :cond_3

    iget-object v5, p0, Lalq;->a:Lafp;

    invoke-virtual {v5}, Lafp;->g()I

    move-result v5

    iget v7, p0, Lalq;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v5, v7, :cond_3

    .line 129
    const/16 v0, 0xf

    .line 134
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 119
    :catch_0
    move-exception v4

    .line 120
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 134
    :catchall_0
    move-exception v0

    move-object v4, v5

    :goto_2
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 131
    :catch_1
    move-exception v4

    move-object v4, v5

    .line 134
    :cond_3
    :goto_3
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 144
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v7, p0, Lalq;->a:Lafp;

    invoke-virtual {v7}, Lafp;->b()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-eqz v4, :cond_4

    .line 145
    iput v3, p0, Lalq;->b:I

    .line 149
    :goto_4
    iget v4, p0, Lalq;->d:I

    iget v5, p0, Lalq;->b:I

    sub-int/2addr v4, v5

    iput v4, p0, Lalq;->c:I

    .line 150
    iget-object v4, p0, Lalq;->a:Lrr;

    sget-object v5, Laox;->x:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lrr;->i(Ljava/lang/String;)I

    move-result v4

    .line 153
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_9

    .line 154
    iget-object v2, p0, Lalq;->a:Lrr;

    invoke-virtual {v2}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_5

    const-string v3, "updateurl"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 156
    goto :goto_0

    .line 147
    :cond_4
    iget-object v4, p0, Lalq;->a:Lafp;

    invoke-virtual {v4}, Lafp;->g()I

    move-result v4

    iput v4, p0, Lalq;->b:I

    goto :goto_4

    .line 158
    :cond_5
    if-eqz v2, :cond_6

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    :cond_6
    if-eqz v2, :cond_1

    .line 163
    const-string v0, "content"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "content"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 164
    const-string v0, "backuptime"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "backuptime"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 166
    iget-object v0, p0, Lalq;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v3

    const-string v0, "backuptime"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lafp;->b(J)V

    .line 170
    :goto_5
    iget-object v0, p0, Lalq;->a:Lafp;

    iget v2, p0, Lalq;->d:I

    invoke-virtual {v0, v2}, Lafp;->c(I)V

    .line 171
    iget-object v0, p0, Lalq;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-direct {p0}, Lalq;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafp;->k(Ljava/lang/String;)V

    .line 172
    iput-boolean v1, p0, Lalq;->b:Z

    .line 173
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 168
    :cond_7
    iget-object v0, p0, Lalq;->a:Lafp;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lafp;->b(J)V

    goto :goto_5

    .line 175
    :cond_8
    iget-object v0, p0, Lalq;->a:Lafp;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lafp;->b(J)V

    .line 176
    iget-object v0, p0, Lalq;->a:Lafp;

    iget-wide v1, p0, Lalq;->a:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lafp;->c(I)V

    .line 177
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 178
    :cond_9
    if-ne v4, v2, :cond_a

    move v0, v2

    .line 179
    goto/16 :goto_0

    :cond_a
    move v0, v3

    .line 181
    goto/16 :goto_0

    .line 134
    :catchall_1
    move-exception v0

    goto/16 :goto_2

    .line 131
    :catch_2
    move-exception v5

    goto/16 :goto_3
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lalq;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    const-string v1, "keyurl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "keyurl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lalq;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a_()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lalq;->g()Ljava/lang/String;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lalq;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 82
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "dict.zip"

    return-object v0
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lalq;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lalq;->c:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lalq;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 71
    :cond_0
    invoke-direct {p0}, Lalq;->a()I

    move-result v0

    iput v0, p0, Lalq;->a:I

    .line 72
    iget-object v0, p0, Lalq;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lalq;->c:Z

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lalq;->a:Lalv;

    iget v1, p0, Lalq;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 75
    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lalq;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lalq;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lalq;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, ""

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lalq;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 187
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

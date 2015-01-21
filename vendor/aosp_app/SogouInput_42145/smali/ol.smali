.class public Lol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl;


# instance fields
.field private a:D

.field private a:I

.field private a:J

.field private a:Landroid/content/Context;

.field private a:Ljava/lang/String;

.field private a:Lon;

.field private a:Lrj;

.field private a:Lrr;

.field private a:Lsg;

.field private b:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lol;->a:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lol;->b:Ljava/lang/String;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lol;->a:J

    .line 63
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    iput-object v0, p0, Lol;->a:Landroid/content/Context;

    .line 64
    new-instance v0, Lrr;

    iget-object v1, p0, Lol;->a:Landroid/content/Context;

    sget-object v2, Laox;->at:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lol;->a:Lrr;

    .line 65
    sget-object v0, Laox;->ay:Ljava/lang/String;

    iput-object v0, p0, Lol;->a:Ljava/lang/String;

    .line 66
    sget-object v0, Laox;->ax:Ljava/lang/String;

    iput-object v0, p0, Lol;->b:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic a(Lol;)D
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-wide v0, p0, Lol;->a:D

    return-wide v0
.end method

.method static synthetic a(Lol;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-wide p1, p0, Lol;->a:D

    return-wide p1
.end method

.method private a()I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 165
    const-string v1, "downloadFile"

    invoke-direct {p0, v1}, Lol;->a(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lol;->d()V

    .line 167
    iget-object v1, p0, Lol;->a:Lrr;

    iget-object v2, p0, Lol;->a:Lrj;

    invoke-virtual {v1, v2}, Lrr;->a(Lrj;)V

    .line 169
    iget-object v1, p0, Lol;->a:Lon;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lol;->a:Lon;

    iget-object v2, p0, Lol;->a:Lsg;

    invoke-virtual {v2}, Lsg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lon;->a(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v1, p0, Lol;->a:Lsg;

    invoke-virtual {v1}, Lsg;->a()Ljava/lang/String;

    move-result-object v2

    .line 172
    iget-object v1, p0, Lol;->a:Lsg;

    invoke-virtual {v1}, Lsg;->b()Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resultURL========================="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lol;->a(Ljava/lang/String;)V

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileName========================="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lol;->a(Ljava/lang/String;)V

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLocalExpressionPackPath========="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lol;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lol;->a(Ljava/lang/String;)V

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lol;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".sge"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".temp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    if-nez v2, :cond_1

    .line 197
    :goto_0
    return v0

    .line 180
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v5, :cond_2

    .line 182
    iget-object v0, p0, Lol;->a:Lrr;

    invoke-virtual {v0, v5}, Lrr;->a(Z)V

    .line 183
    const/4 v1, 0x0

    .line 185
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :try_start_1
    iget-object v1, p0, Lol;->a:Lrr;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v4

    invoke-virtual {v1, v4}, Lrr;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :goto_1
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 193
    :cond_2
    const-string v0, "start breakDownloadFile"

    invoke-direct {p0, v0}, Lol;->a(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lol;->a:Lrr;

    iget-object v1, p0, Lol;->a:Lsg;

    invoke-virtual {v0, v2, v3, v1}, Lrr;->a(Ljava/lang/String;Ljava/lang/String;Lsg;)I

    move-result v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lol;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 188
    :goto_2
    :try_start_2
    iget-object v1, p0, Lol;->a:Lrr;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lrr;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 190
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 187
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Lol;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lol;->b:I

    return p1
.end method

.method static synthetic a(Lol;)J
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-wide v0, p0, Lol;->a:J

    return-wide v0
.end method

.method static synthetic a(Lol;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-wide p1, p0, Lol;->a:J

    return-wide p1
.end method

.method static synthetic a(Lol;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lol;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lol;)Lon;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lol;->a:Lon;

    return-object v0
.end method

.method static synthetic a(Lol;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lol;->a:Lsg;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    return-void
.end method

.method static synthetic a(Lol;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lol;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lol;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lol;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lol;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lol;->a:I

    return p1
.end method

.method private b()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 220
    iget-object v1, p0, Lol;->a:Lsg;

    invoke-virtual {v1}, Lsg;->b()Ljava/lang/String;

    move-result-object v1

    .line 221
    iget-object v2, p0, Lol;->a:Lsg;

    invoke-virtual {v2}, Lsg;->a()Ljava/lang/String;

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lol;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".sge"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lol;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sge"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    iget-object v5, p0, Lol;->b:Ljava/lang/String;

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sourcePathTemp========================"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lol;->a(Ljava/lang/String;)V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sourcePath============================"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lol;->a(Ljava/lang/String;)V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sourcePathTemp exist========================"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lol;->a(Ljava/lang/String;)V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "targetPath============================"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lol;->a(Ljava/lang/String;)V

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "targetFilePathTemp============================"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lol;->a(Ljava/lang/String;)V

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "targetFilePath============================"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lol;->a(Ljava/lang/String;)V

    .line 235
    invoke-static {v3, v4}, Layw;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=========rename="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lol;->a(Ljava/lang/String;)V

    .line 239
    if-eqz v1, :cond_4

    .line 240
    const-string v1, "loadExpression"

    invoke-direct {p0, v1}, Lol;->a(Ljava/lang/String;)V

    .line 241
    invoke-static {v4, v5}, Lazj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 242
    if-nez v1, :cond_1

    .line 243
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    invoke-static {v6, v2}, Layw;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 251
    if-nez v3, :cond_5

    .line 252
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 256
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 262
    :cond_3
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 268
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lom;

    invoke-direct {v0, p0}, Lom;-><init>(Lol;)V

    iput-object v0, p0, Lol;->a:Lrj;

    .line 162
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "pauseDownload"

    invoke-direct {p0, v0}, Lol;->a(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lol;->a:Lsg;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lol;->a:Lsg;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 204
    :cond_0
    return-void
.end method

.method public a(Lalv;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    return-void
.end method

.method public a(Lon;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lol;->a:Lon;

    .line 298
    return-void
.end method

.method public a(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p2, p0, Lol;->a:Lsg;

    .line 280
    return-void
.end method

.method public a(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "cancelDownload"

    invoke-direct {p0, v0}, Lol;->a(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lol;->a:Lsg;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lol;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-direct {p0}, Lol;->a()I

    move-result v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on work   result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lol;->a(Ljava/lang/String;)V

    .line 286
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_1

    .line 288
    :cond_0
    iget-object v1, p0, Lol;->a:Lon;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lol;->a:Lon;

    invoke-virtual {p2}, Lsg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lon;->a(Ljava/lang/String;I)V

    .line 294
    :cond_1
    return-void
.end method

.method public b(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lol;->a:Lsg;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lol;->a:Lsg;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 217
    :cond_0
    return-void
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    return-void
.end method

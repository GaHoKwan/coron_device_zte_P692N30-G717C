.class public Laml;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Laml;->a:Z

    .line 44
    new-instance v0, Lrr;

    iget-object v1, p0, Laml;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Laml;->a:Lrr;

    .line 45
    iput-boolean p2, p0, Laml;->d:Z

    .line 46
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sogou/patch/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_1
    return-void
.end method

.method private a()I
    .locals 10

    .prologue
    const/16 v0, 0x12

    const/4 v1, 0x0

    const/16 v2, 0x40

    const/4 v3, 0x1

    .line 123
    const-string v4, "[[updateSoftware]]"

    invoke-direct {p0, v4}, Laml;->b(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Laml;->b()V

    .line 127
    invoke-static {}, Laox;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    const/16 v1, 0x41

    .line 306
    :cond_0
    :goto_0
    return v1

    .line 131
    :cond_1
    iget-object v4, p0, Laml;->a:Landroid/content/Context;

    invoke-static {v4}, Laox;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "======oldApkPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Laml;->b(Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Laml;->a:Lrr;

    invoke-virtual {v4}, Lrr;->h()I

    move-result v4

    .line 134
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_12

    .line 135
    iget-object v0, p0, Laml;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v7

    .line 136
    if-eqz v7, :cond_10

    const-string v0, "updateurl"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 137
    iget-boolean v0, p0, Laml;->d:Z

    if-eqz v0, :cond_f

    .line 138
    iput v1, p0, Laml;->d:I

    .line 139
    iget-object v0, p0, Laml;->a:Lrr;

    new-instance v4, Lamm;

    invoke-direct {v4, p0}, Lamm;-><init>(Laml;)V

    invoke-virtual {v0, v4}, Lrr;->a(Lrl;)V

    .line 183
    const-string v0, "updateurl"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[[updateSoftware]] download new name = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laml;->b(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/io/File;

    sget-object v4, Laox;->l:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-ne v4, v3, :cond_3

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[[updateSoftware]] old file name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laml;->a:Landroid/content/Context;

    invoke-static {v5}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v5

    invoke-virtual {v5}, Lafp;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Laml;->b(Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Laml;->a:Landroid/content/Context;

    invoke-static {v4}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v4

    invoke-virtual {v4}, Lafp;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    const-string v0, "content"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laml;->a(Ljava/lang/String;)V

    move v1, v3

    .line 191
    goto/16 :goto_0

    .line 193
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 199
    :cond_3
    const-string v0, "updatetype"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "updatetype"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ".xdelta"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "apkmd5"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==============appmd5="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "apkmd5"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laml;->b(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=============apptype="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "updatetype"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laml;->b(Ljava/lang/String;)V

    .line 203
    sget-object v0, Laox;->m:Ljava/lang/String;

    move v4, v3

    move-object v5, v0

    .line 211
    :goto_1
    if-eqz v4, :cond_6

    .line 212
    if-eqz v6, :cond_4

    if-nez v5, :cond_6

    :cond_4
    move v1, v2

    .line 213
    goto/16 :goto_0

    .line 207
    :cond_5
    sget-object v0, Laox;->l:Ljava/lang/String;

    move v4, v1

    move-object v5, v0

    .line 208
    goto :goto_1

    .line 216
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-ne v9, v3, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-ne v9, v3, :cond_7

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 221
    :cond_7
    iget-object v9, p0, Laml;->a:Lrr;

    const-string v0, "updateurl"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 222
    const/16 v9, 0x18

    if-ne v0, v9, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=================isPatchUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laml;->b(Ljava/lang/String;)V

    .line 225
    if-eqz v4, :cond_e

    .line 229
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 234
    :cond_8
    invoke-static {v6}, Labq;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 235
    invoke-static {v5}, Labq;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 236
    sget-object v4, Laox;->l:Ljava/lang/String;

    invoke-static {v4}, Labq;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 237
    iget-object v5, p0, Laml;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->buildUpdateApp([B[B[B)I

    move-result v0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=======buildUpdateApp===========ret="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Laml;->b(Ljava/lang/String;)V

    .line 239
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 241
    const-string v0, "apkmd5"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 242
    new-instance v1, Ljava/io/File;

    sget-object v0, Laox;->l:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 246
    :try_start_0
    invoke-static {v1}, Lcom/sohu/util/CoreString;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 256
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====newApkFileMd5="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Laml;->b(Ljava/lang/String;)V

    .line 257
    if-eqz v0, :cond_9

    if-eqz v0, :cond_b

    const-string v1, "apkmd5"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    move v1, v2

    .line 258
    goto/16 :goto_0

    .line 253
    :cond_a
    const-string v0, "====file not exist=========="

    invoke-direct {p0, v0}, Laml;->b(Ljava/lang/String;)V

    move v1, v2

    .line 254
    goto/16 :goto_0

    .line 260
    :cond_b
    iget-object v0, p0, Laml;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v8}, Lafp;->o(Ljava/lang/String;)V

    .line 272
    :goto_3
    const-string v0, "content"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laml;->a(Ljava/lang/String;)V

    .line 274
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 666 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laox;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    move v1, v3

    .line 278
    goto/16 :goto_0

    :cond_c
    move v1, v2

    .line 262
    goto/16 :goto_0

    :cond_d
    move v1, v2

    .line 266
    goto/16 :goto_0

    .line 269
    :cond_e
    iget-object v0, p0, Laml;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v8}, Lafp;->o(Ljava/lang/String;)V

    goto :goto_3

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 286
    :cond_f
    const-string v0, ""

    .line 287
    const-string v0, ""

    .line 288
    const-string v0, "updatetype"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    const-string v1, "apkmd5"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    iget-object v4, p0, Laml;->a:Landroid/content/Context;

    const-string v2, "content"

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v2, "updateurl"

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2, v0, v1}, Lsc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 294
    goto/16 :goto_0

    .line 298
    :cond_10
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v3, :cond_11

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-ne v1, v3, :cond_11

    .line 300
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 302
    :cond_11
    const-string v0, "[[updateSoftware]] no need to upgrade software"

    invoke-direct {p0, v0}, Laml;->b(Ljava/lang/String;)V

    .line 303
    const/16 v1, 0x13

    goto/16 :goto_0

    .line 306
    :cond_12
    if-ne v4, v0, :cond_13

    :goto_5
    move v1, v0

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto :goto_5

    .line 247
    :catch_1
    move-exception v1

    goto/16 :goto_2

    .line 249
    :catch_2
    move-exception v1

    goto/16 :goto_2
.end method

.method static synthetic a(Laml;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Laml;->c:I

    return v0
.end method

.method static synthetic a(Laml;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Laml;->b:I

    return p1
.end method

.method static synthetic a(Laml;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Laml;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 342
    iget-object v0, p0, Laml;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 343
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laml;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    const-string v2, "sogou.action.installsoftware"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v2, "sogou.extra.version.intro"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v2, p0, Laml;->a:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 347
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02009c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 348
    iget-object v3, p0, Laml;->a:Landroid/content/Context;

    iget-object v4, p0, Laml;->a:Landroid/content/Context;

    const v5, 0x7f0b01de

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 349
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 350
    return-void
.end method

.method static synthetic a(Laml;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Laml;->a:Z

    return p1
.end method

.method static synthetic b(Laml;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Laml;->b:I

    return v0
.end method

.method static synthetic b(Laml;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Laml;->c:I

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    return-void
.end method

.method static synthetic c(Laml;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Laml;->d:I

    return v0
.end method

.method static synthetic c(Laml;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Laml;->d:I

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Laml;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 370
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 371
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Laml;->a:Lsg;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Laml;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Laml;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 61
    return-void
.end method

.method public a(Lsg;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Laml;->c:Z

    .line 103
    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Laml;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Laml;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Laml;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 354
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 355
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Laml;->a()I

    move-result v0

    iput v0, p0, Laml;->a:I

    .line 71
    iget v0, p0, Laml;->a:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    .line 72
    iget-object v0, p0, Laml;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafp;->O(Z)V

    .line 73
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 76
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 79
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 84
    :cond_2
    return-void
.end method

.method public b(Lsg;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 106
    iput-boolean v2, p0, Laml;->c:Z

    .line 107
    iget-boolean v0, p0, Laml;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 108
    iput-boolean v2, p0, Laml;->a:Z

    .line 109
    invoke-direct {p0}, Laml;->c()V

    .line 111
    :cond_0
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Laml;->a:Lsg;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Laml;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 92
    :cond_0
    iget-object v0, p0, Laml;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 93
    iget-object v0, p0, Laml;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Laml;->b:Z

    .line 95
    return-void
.end method

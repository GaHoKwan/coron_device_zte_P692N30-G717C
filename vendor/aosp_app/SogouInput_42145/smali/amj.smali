.class public Lamj;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Lanl;

.field private a:Ljava/lang/String;

.field private a:Lrl;

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I

.field private c:Ljava/lang/String;

.field private d:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v5, p0, Lamj;->a:Z

    .line 40
    iput-object v0, p0, Lamj;->a:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lamj;->b:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lamj;->c:Ljava/lang/String;

    .line 55
    new-instance v0, Lrr;

    iget-object v1, p0, Lamj;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamj;->a:Lrr;

    .line 56
    new-instance v0, Lanl;

    iget-object v1, p0, Lamj;->a:Landroid/content/Context;

    const-string v2, "sogou.action.cancel.downloading.dialog"

    invoke-direct {v0, v1, v2}, Lanl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lamj;->a:Lanl;

    .line 57
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    const v1, 0x7f0b0224

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lamj;->a:Landroid/content/Context;

    const v4, 0x7f0b0142

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamj;->d:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sogou/patch/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 66
    :cond_1
    return-void
.end method

.method static synthetic a(Lamj;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lamj;->c:I

    return v0
.end method

.method static synthetic a(Lamj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lamj;->b:I

    return p1
.end method

.method static synthetic a(Lamj;)Lanl;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lamj;->a:Lanl;

    return-object v0
.end method

.method private a(JJ)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 603
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 604
    const-string v0, ""

    .line 610
    :goto_0
    return-object v0

    .line 606
    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p1

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 609
    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lamj;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lamj;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lamj;)Lrl;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lamj;->a:Lrl;

    return-object v0
.end method

.method static synthetic a(Lamj;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lamj;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lamj;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lamj;->a:Z

    return p1
.end method

.method static synthetic b(Lamj;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lamj;->b:I

    return v0
.end method

.method static synthetic b(Lamj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lamj;->c:I

    return p1
.end method

.method static synthetic b(Lamj;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lamj;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lamj;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lamj;->d:I

    return v0
.end method

.method static synthetic c(Lamj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lamj;->d:I

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lamj;->d:I

    .line 183
    iget-object v0, p0, Lamj;->a:Lrr;

    new-instance v1, Lamk;

    invoke-direct {v1, p0}, Lamk;-><init>(Lamj;)V

    invoke-virtual {v0, v1}, Lrr;->a(Lrl;)V

    .line 243
    return-void
.end method

.method private d()I
    .locals 11

    .prologue
    const/16 v6, 0x12

    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/16 v7, 0x40

    .line 246
    const-string v0, "[[updateSoftware]]"

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lamj;->b()V

    .line 249
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    const/16 v3, 0x41

    .line 353
    :cond_0
    :goto_0
    return v3

    .line 254
    :cond_1
    iget-boolean v0, p0, Lamj;->c:Z

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lamj;->a:Lanl;

    const/16 v1, 0xa

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    const v5, 0x7f0b03d4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lamj;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lanl;->a(IIILjava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_2
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====================oldApkPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lamj;->a:Lrr;

    invoke-virtual {v0}, Lrr;->i()I

    move-result v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===================result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lamj;->f(Ljava/lang/String;)V

    .line 263
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_e

    .line 264
    iget-object v0, p0, Lamj;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v6

    .line 265
    if-eqz v6, :cond_d

    const-string v0, "updateurl"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 266
    const-string v0, "================updateurl=============="

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lamj;->c()V

    .line 270
    const-string v0, "updatetype"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "updatetype"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ".xdelta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "apkmd5"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============appmd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "apkmd5"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=============apptype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "updatetype"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 274
    sget-object v0, Laox;->m:Ljava/lang/String;

    move v1, v8

    move-object v4, v0

    .line 281
    :goto_1
    if-eqz v1, :cond_5

    .line 282
    if-eqz v5, :cond_3

    if-nez v4, :cond_5

    :cond_3
    move v3, v7

    .line 283
    goto/16 :goto_0

    .line 277
    :cond_4
    sget-object v0, Laox;->l:Ljava/lang/String;

    move v1, v3

    move-object v4, v0

    .line 278
    goto :goto_1

    .line 287
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-ne v9, v8, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-ne v9, v8, :cond_6

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 292
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[[updateSoftware]] download from url = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v0, "updateurl"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 293
    iget-object v9, p0, Lamj;->a:Lrr;

    const-string v0, "updateurl"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0, v4}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 294
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "======================downloadResult="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lamj;->f(Ljava/lang/String;)V

    .line 295
    const/16 v9, 0x18

    if-ne v0, v9, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=================isPatchUpdate="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 297
    if-eqz v1, :cond_c

    .line 300
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 305
    :cond_7
    invoke-static {v5}, Labq;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 306
    invoke-static {v4}, Labq;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 307
    sget-object v3, Laox;->l:Ljava/lang/String;

    invoke-static {v3}, Labq;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 308
    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->buildUpdateApp([B[B[B)I

    move-result v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=======buildUpdateApp===========ret="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lamj;->f(Ljava/lang/String;)V

    .line 310
    if-eq v0, v2, :cond_b

    .line 311
    const-string v0, "apkmd5"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 312
    new-instance v1, Ljava/io/File;

    sget-object v0, Laox;->l:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x0

    .line 314
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 316
    :try_start_0
    invoke-static {v1}, Lcom/sohu/util/CoreString;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 326
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================newApkFileMd5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lamj;->f(Ljava/lang/String;)V

    .line 327
    if-eqz v0, :cond_8

    if-eqz v0, :cond_c

    const-string v1, "apkmd5"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    move v3, v7

    .line 328
    goto/16 :goto_0

    .line 323
    :cond_9
    const-string v0, "================file not exist=========="

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    move v3, v7

    .line 324
    goto/16 :goto_0

    :cond_a
    move v3, v7

    .line 331
    goto/16 :goto_0

    :cond_b
    move v3, v7

    .line 335
    goto/16 :goto_0

    .line 339
    :cond_c
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

    :goto_3
    move v3, v8

    .line 343
    goto/16 :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 349
    :cond_d
    const-string v0, "[[updateSoftware]] no need to upgrade software"

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 350
    const/16 v3, 0x13

    goto/16 :goto_0

    .line 353
    :cond_e
    if-ne v0, v6, :cond_0

    move v3, v6

    goto/16 :goto_0

    .line 317
    :catch_1
    move-exception v1

    goto :goto_2

    .line 319
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private d()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v4, 0x0

    .line 550
    invoke-virtual {p0}, Lamj;->b()V

    .line 551
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 552
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lamj;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    const-string v2, "sogou.action.closenotify"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v2, "sogou.notify.id"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    iget-object v2, p0, Lamj;->a:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 556
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02009a

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    const v5, 0x7f0b0215

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 557
    iget-object v3, p0, Lamj;->a:Landroid/content/Context;

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    const v5, 0x7f0b0142

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lamj;->a:Landroid/content/Context;

    const v6, 0x7f0b0225

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 558
    invoke-virtual {v0, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 559
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0b0212

    const/4 v4, 0x0

    .line 531
    invoke-virtual {p0}, Lamj;->b()V

    .line 532
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 533
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lamj;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 534
    const-string v2, "sogou.action.installsoftware"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v2, "sogou.extra.version.intro"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    iget-object v2, p0, Lamj;->a:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 537
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02009c

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 539
    iget-object v3, p0, Lamj;->a:Landroid/content/Context;

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    const v5, 0x7f0b01de

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lamj;->a:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 541
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 542
    return-void
.end method

.method private e()I
    .locals 9

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v6, 0x40

    const/4 v7, 0x1

    .line 360
    const-string v0, "[[downloadSoftware]]"

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lamj;->b()V

    .line 363
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    const/16 v3, 0x41

    .line 461
    :cond_0
    :goto_0
    return v3

    .line 368
    :cond_1
    iget-boolean v0, p0, Lamj;->c:Z

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lamj;->a:Lanl;

    const/16 v1, 0xa

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    const v5, 0x7f0b03d4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lamj;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lanl;->a(IIILjava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_2
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====================oldApkPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lamj;->c()V

    .line 376
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v7, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-ne v1, v7, :cond_3

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 384
    :cond_3
    invoke-virtual {p0}, Lamj;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lamj;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xdelta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lamj;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============appmd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lamj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=============apptype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lamj;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 388
    sget-object v0, Laox;->m:Ljava/lang/String;

    move-object v1, v0

    move v0, v7

    .line 396
    :goto_1
    if-eqz v0, :cond_6

    .line 397
    if-eqz v4, :cond_4

    if-nez v1, :cond_6

    :cond_4
    move v3, v6

    .line 398
    goto/16 :goto_0

    .line 392
    :cond_5
    sget-object v0, Laox;->l:Ljava/lang/String;

    move-object v1, v0

    move v0, v3

    .line 393
    goto :goto_1

    .line 402
    :cond_6
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-ne v8, v7, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-ne v8, v7, :cond_7

    .line 404
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 407
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[[updateSoftware]] download from url = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lamj;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lamj;->f(Ljava/lang/String;)V

    .line 408
    iget-object v5, p0, Lamj;->a:Lrr;

    invoke-virtual {p0}, Lamj;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v1}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 409
    const/16 v8, 0x18

    if-ne v5, v8, :cond_0

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=======2==========isPatchUpdate="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lamj;->f(Ljava/lang/String;)V

    .line 412
    if-eqz v0, :cond_d

    .line 414
    new-instance v0, Ljava/io/File;

    sget-object v3, Laox;->l:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 416
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 419
    :cond_8
    invoke-static {v4}, Labq;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 420
    invoke-static {v1}, Labq;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 421
    sget-object v3, Laox;->l:Ljava/lang/String;

    invoke-static {v3}, Labq;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 422
    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->buildUpdateApp([B[B[B)I

    move-result v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=======buildUpdateApp===========ret="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lamj;->f(Ljava/lang/String;)V

    .line 424
    if-eq v0, v2, :cond_c

    .line 426
    invoke-virtual {p0}, Lamj;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 427
    new-instance v1, Ljava/io/File;

    sget-object v0, Laox;->l:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x0

    .line 429
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 431
    :try_start_0
    invoke-static {v1}, Lcom/sohu/util/CoreString;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 441
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================newApkFileMd5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lamj;->f(Ljava/lang/String;)V

    .line 442
    if-eqz v0, :cond_9

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lamj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_9
    move v3, v6

    .line 443
    goto/16 :goto_0

    .line 438
    :cond_a
    const-string v0, "================file not exist=========="

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    move v3, v6

    .line 439
    goto/16 :goto_0

    :cond_b
    move v3, v6

    .line 446
    goto/16 :goto_0

    :cond_c
    move v3, v6

    .line 450
    goto/16 :goto_0

    .line 455
    :cond_d
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

    :goto_3
    move v3, v7

    .line 459
    goto/16 :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 432
    :catch_1
    move-exception v1

    goto :goto_2

    .line 434
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private e()V
    .locals 8

    .prologue
    const v7, 0x7f0b0216

    const/4 v4, 0x0

    .line 562
    invoke-virtual {p0}, Lamj;->b()V

    .line 563
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 564
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lamj;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    const-string v2, "sogou.action.upgrade.with.patch.upgrade.fail"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    iget-object v2, p0, Lamj;->a:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 567
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02009a

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 568
    iget-object v3, p0, Lamj;->a:Landroid/content/Context;

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    const v5, 0x7f0b0142

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lamj;->a:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 569
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 570
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xa

    const/4 v4, 0x0

    .line 585
    invoke-virtual {p0}, Lamj;->b()V

    .line 586
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 587
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lamj;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    const-string v2, "sogou.action.closenotify"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v2, "sogou.notify.id"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    iget-object v2, p0, Lamj;->a:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 591
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02009d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 592
    iget-object v3, p0, Lamj;->a:Landroid/content/Context;

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    const v5, 0x7f0b0142

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 593
    invoke-virtual {v0, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 594
    return-void
.end method

.method private f()V
    .locals 9

    .prologue
    const v8, 0x7f0b0217

    const/16 v7, 0xa

    const/4 v4, 0x0

    .line 573
    invoke-virtual {p0}, Lamj;->b()V

    .line 574
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 575
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lamj;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    const-string v2, "sogou.action.closenotify"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v2, "sogou.notify.id"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    iget-object v2, p0, Lamj;->a:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 579
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02009a

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 580
    iget-object v3, p0, Lamj;->a:Landroid/content/Context;

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    const v5, 0x7f0b0142

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lamj;->a:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 581
    invoke-virtual {v0, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 582
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 599
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 600
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lamj;->b:I

    return v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iput-object v2, p0, Lamj;->a:Lalv;

    .line 171
    iget-object v0, p0, Lamj;->a:Lsg;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lamj;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 174
    :cond_0
    iget-object v0, p0, Lamj;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lamj;->c:Z

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lamj;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 176
    iput-object v2, p0, Lamj;->a:Lalv;

    .line 178
    :cond_1
    iget-object v0, p0, Lamj;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 179
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lamj;->a:Ljava/lang/String;

    .line 504
    return-void
.end method

.method public a(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 74
    iput-object p2, p0, Lamj;->a:Lsg;

    .line 75
    invoke-virtual {p2}, Lsg;->a()Z

    move-result v0

    iput-boolean v0, p0, Lamj;->c:Z

    .line 76
    iget-object v0, p0, Lamj;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lamj;->c:Z

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lamj;->a:Lalv;

    invoke-interface {v0}, Lalv;->d()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-boolean v0, p0, Lamj;->c:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lamj;->a:Lalv;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lamj;->a:Lanl;

    const/16 v1, 0xa

    const/4 v3, 0x0

    iget-object v4, p0, Lamj;->a:Landroid/content/Context;

    const v5, 0x7f0b03d4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lamj;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lanl;->a(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lrl;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lamj;->a:Lrl;

    .line 70
    return-void
.end method

.method public a(Lsg;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lamj;->a:Lalv;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lamj;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 140
    iput-object v1, p0, Lamj;->a:Lalv;

    .line 141
    iput-object v1, p0, Lamj;->a:Lrl;

    .line 143
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamj;->c:Z

    .line 144
    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lamj;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lamj;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    iget v0, p0, Lamj;->b:I

    int-to-long v0, v0

    iget v2, p0, Lamj;->c:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lamj;->a(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 546
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 547
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lamj;->b:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lamj;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamj;->c:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lamj;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=onWork=====getUpdateUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lamj;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamj;->f(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lamj;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 92
    invoke-direct {p0}, Lamj;->e()I

    move-result v0

    iput v0, p0, Lamj;->a:I

    .line 99
    :goto_0
    iget-object v0, p0, Lamj;->a:Lalv;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lamj;->c:Z

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lamj;->a:Lalv;

    iget v1, p0, Lamj;->a:I

    invoke-interface {v0, v1}, Lalv;->a(I)V

    .line 102
    :cond_1
    iget-object v0, p0, Lamj;->a:Lalv;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lamj;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 104
    iget v0, p0, Lamj;->a:I

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lsg;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    .line 105
    invoke-direct {p0}, Lamj;->d()V

    .line 120
    :cond_2
    :goto_1
    return-void

    .line 94
    :cond_3
    invoke-direct {p0}, Lamj;->d()I

    move-result v0

    iput v0, p0, Lamj;->a:I

    goto :goto_0

    .line 106
    :cond_4
    iget v0, p0, Lamj;->a:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_6

    .line 108
    invoke-virtual {p0}, Lamj;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {p0}, Lamj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamj;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_5
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    const v1, 0x7f0b0166

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lamj;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_6
    iget v0, p0, Lamj;->a:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    .line 113
    iget-object v0, p0, Lamj;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafp;->O(Z)V

    .line 114
    invoke-direct {p0}, Lamj;->e()V

    goto :goto_1

    .line 115
    :cond_7
    iget v0, p0, Lamj;->a:I

    const/16 v1, 0x41

    if-ne v0, v1, :cond_2

    .line 116
    invoke-direct {p0}, Lamj;->f()V

    goto :goto_1
.end method

.method public b(Lsg;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lamj;->a:Lalv;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lamj;->a:Lalv;

    invoke-interface {v0}, Lalv;->f()V

    .line 150
    :cond_0
    iput-boolean v2, p0, Lamj;->c:Z

    .line 151
    iget-boolean v0, p0, Lamj;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 152
    iput-boolean v2, p0, Lamj;->a:Z

    .line 153
    invoke-direct {p0}, Lamj;->g()V

    .line 155
    :cond_1
    return-void
.end method

.method public c()I
    .locals 5

    .prologue
    const/16 v2, 0x12

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 466
    .line 468
    iget-object v3, p0, Lamj;->a:Lrr;

    invoke-virtual {v3}, Lrr;->i()I

    move-result v3

    .line 470
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 471
    iget-object v2, p0, Lamj;->a:Lrr;

    invoke-virtual {v2}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 472
    if-eqz v2, :cond_0

    const-string v3, "updateurl"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 480
    :cond_0
    if-eqz v0, :cond_3

    .line 483
    :goto_0
    return v1

    .line 476
    :cond_1
    if-ne v3, v2, :cond_2

    move v0, v2

    :cond_2
    move v1, v0

    goto :goto_0

    .line 483
    :cond_3
    const/16 v1, 0x13

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lamj;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lamj;->c:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lamj;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_0

    const-string v1, "updateurl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    const-string v1, "updateurl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 499
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamj;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lamj;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 125
    iget-object v0, p0, Lamj;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamj;->b:Z

    .line 127
    iget-object v0, p0, Lamj;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamj;->c:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lamj;->a:Lalv;

    invoke-interface {v0}, Lalv;->g()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lamj;->a:Lalv;

    .line 131
    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lamj;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_0

    const-string v1, "updatetype"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    const-string v1, "updatetype"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamj;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lamj;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    const-string v1, "apkmd5"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "apkmd5"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 523
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamj;->c:Ljava/lang/String;

    goto :goto_0
.end method

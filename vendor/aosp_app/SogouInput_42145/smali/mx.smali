.class public Lmx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final a:[Z

.field private static final a:[[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 458
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sgim_ndata.bin"

    aput-object v1, v0, v3

    const-string v1, "sgim_bh.bin"

    aput-object v1, v0, v4

    const-string v1, "sgim_py.bin"

    aput-object v1, v0, v5

    const-string v1, "sgim_sys.bin"

    aput-object v1, v0, v6

    const-string v1, "sgim_smile.bin"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sgim_sw_sys.bin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sgim_tb.bin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sgim_ui.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sys_en.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "trid.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "trid_to_sim.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sgim_cor.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sgim_pos.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "rand.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sgim_splt.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sgim_ip.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sgim_name.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sgim_pred.bin"

    aput-object v2, v0, v1

    sput-object v0, Lmx;->a:[Ljava/lang/String;

    .line 479
    const/16 v0, 0x12

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lmx;->a:[Z

    .line 500
    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v6

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lmx;->a:[[Ljava/lang/String;

    .line 520
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sgim_ex.bin"

    aput-object v1, v0, v3

    sput-object v0, Lmx;->b:[Ljava/lang/String;

    return-void

    .line 479
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 525
    sget-object v0, Laox;->o:Ljava/lang/String;

    .line 527
    const-string v1, "raw/sogouime"

    .line 529
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->i()Z

    move-result v1

    .line 531
    const-string v2, "raw/sogouime"

    const-string v3, "sogouime"

    invoke-static {p0, v2, v3, v0, v1}, Lmx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sogouime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/sohu/inputmethod/engine/IMEInterface;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 548
    sget-object v0, Laox;->v:Ljava/lang/String;

    .line 554
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->i()Z

    move-result v1

    .line 555
    invoke-static {p0, p1, v1}, Lmx;->a(Landroid/content/Context;Lcom/sohu/inputmethod/engine/IMEInterface;Z)V

    .line 556
    sget-object v2, Lmx;->b:[Ljava/lang/String;

    invoke-static {p0, v2, v0, v1}, Lmx;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 558
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/sohu/inputmethod/engine/IMEInterface;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 627
    sget-object v0, Laox;->v:Ljava/lang/String;

    .line 628
    sget-object v1, Laox;->o:Ljava/lang/String;

    .line 629
    sget-object v2, Laox;->o:Ljava/lang/String;

    .line 631
    sget-object v3, Lmx;->a:[Ljava/lang/String;

    invoke-static {p0, v3, v1, p2}, Lmx;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 632
    invoke-virtual {p1, v0, v2, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 571
    if-nez p4, :cond_0

    .line 572
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 577
    :cond_0
    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 580
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 581
    :try_start_1
    invoke-static {v0, p3, p2}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 587
    :goto_1
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 584
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 585
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 587
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 584
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 582
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 593
    if-nez p4, :cond_0

    .line 594
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 624
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 605
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 606
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x2000

    invoke-direct {v1, v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 607
    :goto_1
    :try_start_2
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 608
    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 610
    :goto_2
    sget-object v5, Lcom/sohu/inputmethod/engine/IMEInterface;->buf:[B

    const/4 v6, 0x0

    const/16 v7, 0x2000

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_1

    .line 611
    sget-object v6, Lcom/sohu/inputmethod/engine/IMEInterface;->buf:[B

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 615
    :catch_0
    move-exception v0

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 616
    :goto_3
    :try_start_3
    const-string v4, "SogouIME API"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 620
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 621
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 622
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 613
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 617
    :catch_1
    move-exception v0

    move-object v3, v2

    move-object v1, v2

    .line 618
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 620
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 621
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 622
    :goto_5
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 621
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 622
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 620
    throw v0

    :cond_2
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 621
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_5

    .line 620
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_6

    .line 617
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_4

    .line 615
    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_3
.end method

.method private static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    array-length v1, p1

    .line 562
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 563
    sget-object v2, Lmx;->a:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 564
    sget-object v2, Lmx;->a:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v3, p1, v0

    invoke-static {p0, v2, v3, p2, p3}, Lmx;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 562
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-static {p0, v2, v3, p2, p3}, Lmx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 568
    :cond_1
    return-void
.end method

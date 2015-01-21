.class public Lri;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Ljava/util/Set;

.field private a:Lorg/apache/http/HttpResponse;

.field private a:Lorg/apache/http/client/HttpClient;

.field private a:Lorg/apache/http/client/methods/HttpGet;

.field private a:Lorg/apache/http/client/methods/HttpPost;

.field private a:Lrj;

.field private a:Lrl;

.field private a:Lro;

.field private a:Lrp;

.field private a:Lrq;

.field private a:Z

.field private b:I

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Lri;->a:Z

    .line 73
    iput-boolean v1, p0, Lri;->b:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lri;->b:I

    .line 96
    iput-object p1, p0, Lri;->a:Landroid/content/Context;

    .line 97
    iput v1, p0, Lri;->a:I

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lri;->a:Ljava/util/Set;

    .line 99
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    iput-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 100
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    .line 101
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0}, Lri;->b()I

    move-result v1

    .line 133
    iget-object v2, p0, Lri;->a:Ljava/util/Set;

    monitor-enter v2

    .line 134
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Lri;->a:Ljava/util/Set;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 135
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrn;

    .line 140
    new-instance v2, Lrm;

    invoke-direct {v2, p0, p0}, Lrm;-><init>(Lri;Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v2, p1}, Lrm;->a(I)V

    .line 142
    invoke-virtual {v2, v1}, Lrm;->b(I)V

    .line 143
    invoke-interface {v0, v2}, Lrn;->a(Lrm;)V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 146
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 951
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 962
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 656
    .line 657
    iget v1, p0, Lri;->b:I

    if-eq v1, v0, :cond_0

    .line 658
    iget v0, p0, Lri;->b:I

    .line 660
    :cond_0
    iget-object v1, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_1

    .line 661
    iget-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 663
    :cond_1
    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 16
    .parameter

    .prologue
    .line 678
    const/4 v4, 0x0

    .line 679
    const/4 v3, 0x0

    .line 680
    const/4 v2, 0x0

    .line 682
    :try_start_0
    const-string v1, ">>>>>>>>>>>> begin save the received xml file <<<<<<<<<"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lri;->e(Ljava/lang/String;)V

    .line 683
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 685
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 687
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 689
    const-wide/16 v8, 0x0

    .line 690
    const-wide/16 v6, 0x0

    .line 692
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lri;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 694
    const/4 v3, 0x0

    .line 703
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lri;->a:Lorg/apache/http/HttpResponse;

    const-string v10, "Content-Encoding"

    invoke-interface {v1, v10}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v10

    .line 704
    array-length v11, v10

    const/4 v1, 0x0

    move v15, v1

    move v1, v3

    move v3, v15

    :goto_0
    if-ge v3, v11, :cond_2

    aget-object v12, v10, v3

    .line 705
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string v13, "gzip"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 706
    const/4 v1, 0x1

    .line 704
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 710
    :cond_2
    const/4 v3, 0x0

    .line 711
    move-object/from16 v0, p0

    iget-object v10, v0, Lri;->a:Lro;

    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lri;->a:Lorg/apache/http/HttpResponse;

    const-string v11, "Content-Length"

    invoke-interface {v10, v11}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v10

    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lri;->a:Lorg/apache/http/HttpResponse;

    const-string v11, "Content-Length"

    invoke-interface {v10, v11}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v10

    array-length v10, v10

    if-lez v10, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lri;->a:Lorg/apache/http/HttpResponse;

    const-string v11, "Content-Length"

    invoke-interface {v10, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lri;->a:Lorg/apache/http/HttpResponse;

    const-string v10, "Content-Length"

    invoke-interface {v3, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    move-wide v11, v8

    .line 718
    :goto_1
    const-wide/16 v8, 0x0

    .line 720
    if-eqz v1, :cond_8

    .line 722
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 723
    const/16 v1, 0x400

    :try_start_3
    new-array v13, v1, [B

    move-wide v1, v6

    move-wide v6, v8

    .line 725
    :cond_3
    :goto_2
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v13, v8, v9}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 727
    move-object/from16 v0, p0

    iget-object v9, v0, Lri;->a:Lro;

    if-eqz v9, :cond_4

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 731
    :cond_4
    move-object/from16 v0, p0

    iget v9, v0, Lri;->a:I

    add-int/2addr v9, v8

    move-object/from16 v0, p0

    iput v9, v0, Lri;->a:I

    .line 732
    move-object/from16 v0, p0

    iget v9, v0, Lri;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lri;->a(I)V

    .line 733
    const/4 v9, 0x0

    invoke-virtual {v5, v13, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 734
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 736
    move-object/from16 v0, p0

    iget-object v8, v0, Lri;->a:Lro;

    if-eqz v8, :cond_3

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-wide v8

    sub-long/2addr v8, v6

    add-long/2addr v1, v8

    goto :goto_2

    :cond_5
    move-wide v6, v1

    move-object v2, v3

    .line 763
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lri;->a:Lro;

    if-eqz v1, :cond_7

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v11

    sub-long v6, v8, v6

    .line 765
    invoke-static {v10}, Layu;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 766
    if-eqz v1, :cond_7

    .line 767
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v8, "0.000"

    invoke-direct {v3, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v8, v8

    const/high16 v9, 0x4480

    div-float/2addr v8, v9

    long-to-float v9, v6

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 768
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "########## downLen = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "bytes, downTime = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "ms, downVelocity = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lri;->e(Ljava/lang/String;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v1, v0, Lri;->a:Lro;

    invoke-interface {v1, v3}, Lro;->a(Ljava/lang/String;)V

    .line 773
    :cond_7
    const-string v1, "<<<<<<<<< begin dump the received xml file >>>>>>>>>>>"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lri;->e(Ljava/lang/String;)V

    .line 774
    invoke-direct/range {p0 .. p1}, Lri;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 785
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 786
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 787
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 789
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 743
    :cond_8
    const/16 v1, 0x400

    :try_start_5
    new-array v1, v1, [B

    .line 745
    :cond_9
    :goto_4
    const/4 v3, 0x0

    const/16 v13, 0x400

    invoke-virtual {v4, v1, v3, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v13, -0x1

    if-eq v3, v13, :cond_6

    .line 747
    move-object/from16 v0, p0

    iget-object v13, v0, Lri;->a:Lro;

    if-eqz v13, :cond_a

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 751
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lri;->a:I

    add-int/2addr v13, v3

    move-object/from16 v0, p0

    iput v13, v0, Lri;->a:I

    .line 752
    move-object/from16 v0, p0

    iget v13, v0, Lri;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lri;->a(I)V

    .line 753
    const/4 v13, 0x0

    invoke-virtual {v5, v1, v13, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 754
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lri;->a:Lro;

    if-eqz v3, :cond_9

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-wide v13

    sub-long/2addr v13, v8

    add-long/2addr v6, v13

    goto :goto_4

    .line 775
    :catch_0
    move-exception v1

    .line 776
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lri;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 777
    const/4 v1, 0x1

    .line 785
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 786
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 787
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 778
    :catch_1
    move-exception v1

    move-object v5, v4

    move-object v4, v3

    .line 779
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lri;->e(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 780
    const/4 v1, 0x1

    .line 785
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 786
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 787
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 781
    :catch_2
    move-exception v1

    move-object v5, v4

    move-object v4, v3

    .line 782
    :goto_7
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lri;->e(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 783
    const/4 v1, 0x1

    .line 785
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 786
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 787
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_3

    .line 785
    :catchall_0
    move-exception v1

    move-object v5, v4

    move-object v4, v3

    :goto_8
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 786
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 787
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    throw v1

    .line 785
    :catchall_1
    move-exception v1

    move-object v4, v3

    goto :goto_8

    :catchall_2
    move-exception v1

    goto :goto_8

    :catchall_3
    move-exception v1

    move-object v2, v3

    goto :goto_8

    :catchall_4
    move-exception v1

    move-object v5, v4

    move-object v4, v3

    goto :goto_8

    .line 781
    :catch_3
    move-exception v1

    move-object v4, v3

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_7

    .line 778
    :catch_6
    move-exception v1

    move-object v4, v3

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    move-object v2, v3

    goto :goto_6

    .line 775
    :catch_9
    move-exception v1

    move-object v4, v5

    goto :goto_5

    :catch_a
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto :goto_5

    :catch_b
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_5

    :cond_b
    move-object v10, v3

    move-wide v11, v8

    goto/16 :goto_1
.end method

.method public a(Lorg/apache/http/HttpResponse;Ljava/lang/String;Z)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 485
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 494
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 496
    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_2

    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 500
    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 511
    if-nez v7, :cond_5

    .line 512
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 513
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    :cond_1
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 564
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 565
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 567
    :goto_0
    return v0

    .line 502
    :cond_2
    const/4 v1, 0x0

    .line 503
    :try_start_1
    iget-object v3, p0, Lri;->a:Lrl;

    if-eqz v3, :cond_3

    .line 504
    iget-object v3, p0, Lri;->a:Lrl;

    invoke-interface {v3, v1, v1}, Lrl;->b(II)V

    .line 507
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v0, :cond_4

    .line 508
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 563
    :cond_4
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 564
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 565
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 516
    :cond_5
    :try_start_2
    iget-object v3, p0, Lri;->a:Lrl;

    if-eqz v3, :cond_6

    .line 518
    iget-object v3, p0, Lri;->a:Lrl;

    invoke-interface {v3, v7}, Lrl;->a(I)V

    .line 520
    :cond_6
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 521
    :try_start_3
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 523
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 525
    const/16 v2, 0x400

    :try_start_5
    new-array v8, v2, [B

    .line 528
    const-string v2, ".ssf"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 529
    const/4 v2, 0x1

    iput-boolean v2, p0, Lri;->b:Z

    :cond_7
    move v2, v1

    .line 531
    :cond_8
    :goto_1
    iget-boolean v9, p0, Lri;->b:Z

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v4, v8, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    .line 532
    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 533
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 534
    add-int/2addr v2, v9

    .line 535
    iget-object v9, p0, Lri;->a:Lrl;

    if-eqz v9, :cond_8

    .line 536
    iget-object v9, p0, Lri;->a:Lrl;

    invoke-interface {v9, v2, v7}, Lrl;->a(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 550
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 551
    :goto_2
    :try_start_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v0, :cond_9

    .line 552
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 553
    :cond_9
    invoke-virtual {p0}, Lri;->f()V

    .line 554
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 563
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 564
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 565
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 539
    :cond_a
    const/4 v8, 0x0

    :try_start_7
    iput-boolean v8, p0, Lri;->b:Z

    .line 540
    iget-object v8, p0, Lri;->a:Lrl;

    if-eqz v8, :cond_b

    if-ne v2, v7, :cond_b

    .line 541
    iget-object v8, p0, Lri;->a:Lrl;

    invoke-interface {v8, v2, v7}, Lrl;->b(II)V

    .line 543
    :cond_b
    if-ge v2, v7, :cond_d

    .line 544
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v0, :cond_c

    .line 545
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 546
    :cond_c
    invoke-virtual {p0}, Lri;->f()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 563
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 564
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 565
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 563
    :cond_d
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 564
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 565
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 567
    goto/16 :goto_0

    .line 556
    :catch_1
    move-exception v1

    move-object v4, v2

    move-object v5, v2

    .line 557
    :goto_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v0, :cond_e

    .line 558
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 559
    :cond_e
    invoke-virtual {p0}, Lri;->f()V

    .line 560
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 563
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 564
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 565
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 563
    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    :goto_4
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 564
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 565
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 563
    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    goto :goto_4

    .line 556
    :catch_2
    move-exception v1

    move-object v4, v2

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_3

    .line 550
    :catch_5
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_2

    :catch_6
    move-exception v1

    move-object v3, v2

    move-object v4, v5

    goto/16 :goto_2

    :catch_7
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_2
.end method

.method public a(Lorg/apache/http/HttpResponse;Ljava/lang/String;ZLsg;I)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 571
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    :try_start_0
    iget-object v3, p0, Lri;->a:Lrj;

    if-eqz v3, :cond_0

    .line 578
    iget-object v3, p0, Lri;->a:Lrj;

    invoke-interface {v3}, Lrj;->a()V

    .line 580
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 581
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 584
    :cond_1
    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_2

    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 588
    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v7

    .line 593
    if-nez v7, :cond_3

    .line 648
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 649
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 652
    :goto_0
    return v0

    .line 648
    :cond_2
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 649
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 597
    :cond_3
    :try_start_1
    iget-object v3, p0, Lri;->a:Lrj;

    if-eqz v3, :cond_4

    .line 598
    iget-object v3, p0, Lri;->a:Lrj;

    invoke-interface {v3, v7}, Lrj;->a(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v3

    .line 599
    if-nez v3, :cond_4

    .line 648
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 649
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 602
    :cond_4
    :try_start_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v5

    .line 603
    :try_start_3
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 604
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 606
    const/16 v2, 0x400

    :try_start_5
    new-array v6, v2, [B

    move v2, v1

    .line 609
    :cond_5
    :goto_1
    invoke-virtual {p4}, Lsg;->b()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_6

    invoke-virtual {p4}, Lsg;->b()I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-nez v8, :cond_6

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 610
    const/4 v9, 0x0

    invoke-virtual {v3, v6, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 611
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 612
    add-int/2addr v2, v8

    .line 613
    iget-object v8, p0, Lri;->a:Lrj;

    if-eqz v8, :cond_5

    .line 614
    iget-object v8, p0, Lri;->a:Lrj;

    invoke-interface {v8, v2, v7}, Lrj;->a(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 637
    :catch_0
    move-exception v1

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    .line 648
    :goto_2
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 649
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 617
    :cond_6
    :try_start_6
    invoke-virtual {p4}, Lsg;->b()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_8

    .line 618
    iget-object v6, p0, Lri;->a:Lrj;

    if-eqz v6, :cond_7

    .line 619
    iget-object v6, p0, Lri;->a:Lrj;

    invoke-interface {v6, v2, v7}, Lrj;->d(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 633
    :cond_7
    :goto_3
    if-ge v2, v7, :cond_b

    .line 634
    const/4 v0, 0x2

    .line 648
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 649
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 620
    :cond_8
    :try_start_7
    invoke-virtual {p4}, Lsg;->b()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    .line 621
    iget-object v6, p0, Lri;->a:Lrj;

    if-eqz v6, :cond_7

    .line 622
    iget-object v6, p0, Lri;->a:Lrj;

    invoke-interface {v6}, Lrj;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 639
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 648
    :goto_4
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 649
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 624
    :cond_9
    if-ne v2, v7, :cond_a

    .line 625
    :try_start_8
    iget-object v6, p0, Lri;->a:Lrj;

    if-eqz v6, :cond_7

    .line 626
    iget-object v6, p0, Lri;->a:Lrj;

    invoke-interface {v6, v2, v7}, Lrj;->b(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 641
    :catch_2
    move-exception v1

    move-object v2, v3

    .line 642
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 648
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 649
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 628
    :cond_a
    :try_start_a
    iget-object v6, p0, Lri;->a:Lrj;

    if-eqz v6, :cond_7

    .line 629
    iget-object v6, p0, Lri;->a:Lrj;

    invoke-interface {v6, v2, v7}, Lrj;->c(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    .line 644
    :catch_3
    move-exception v1

    move-object v2, v3

    .line 645
    :goto_6
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 648
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 649
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 648
    :cond_b
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 649
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 652
    goto/16 :goto_0

    .line 648
    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    :goto_7
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 649
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 650
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 648
    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_7

    .line 644
    :catch_4
    move-exception v1

    move-object v4, v2

    move-object v5, v2

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v4, v2

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_6

    .line 641
    :catch_7
    move-exception v1

    move-object v4, v2

    move-object v5, v2

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v4, v2

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_5

    .line 639
    :catch_a
    move-exception v1

    move-object v4, v2

    move-object v5, v2

    goto :goto_4

    :catch_b
    move-exception v1

    move-object v4, v2

    goto :goto_4

    :catch_c
    move-exception v1

    goto :goto_4

    .line 637
    :catch_d
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_2

    :catch_e
    move-exception v1

    move-object v1, v2

    move-object v3, v5

    goto/16 :goto_2

    :catch_f
    move-exception v1

    move-object v1, v2

    move-object v3, v5

    move-object v2, v4

    goto/16 :goto_2
.end method

.method public a(Lorg/apache/http/HttpResponse;[B)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1028
    .line 1033
    :try_start_0
    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1034
    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1036
    sput v6, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudDownLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1045
    if-nez v6, :cond_2

    .line 1082
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1083
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1084
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1087
    :goto_0
    return v0

    .line 1039
    :cond_0
    const/4 v1, 0x0

    .line 1040
    :try_start_1
    iget-object v3, p0, Lri;->a:Lrl;

    if-eqz v3, :cond_1

    .line 1041
    iget-object v3, p0, Lri;->a:Lrl;

    invoke-interface {v3, v1, v1}, Lrl;->b(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1082
    :cond_1
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1083
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1084
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1049
    :cond_2
    :try_start_2
    iget-object v3, p0, Lri;->a:Lrl;

    if-eqz v3, :cond_3

    .line 1050
    iget-object v3, p0, Lri;->a:Lrl;

    invoke-interface {v3, v6}, Lrl;->a(I)V

    .line 1052
    :cond_3
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 1053
    :try_start_3
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1057
    :try_start_4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1062
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lri;->b:Z

    .line 1063
    const/4 v2, 0x0

    invoke-virtual {v5, p2, v2, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    .line 1064
    const/4 v7, 0x0

    invoke-virtual {v3, p2, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1065
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1066
    add-int/2addr v2, v1

    .line 1067
    iget-object v7, p0, Lri;->a:Lrl;

    if-eqz v7, :cond_4

    .line 1068
    iget-object v7, p0, Lri;->a:Lrl;

    invoke-interface {v7, v2, v6}, Lrl;->a(II)V

    .line 1071
    :cond_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lri;->b:Z

    .line 1072
    iget-object v7, p0, Lri;->a:Lrl;

    if-eqz v7, :cond_5

    .line 1073
    iget-object v7, p0, Lri;->a:Lrl;

    invoke-interface {v7, v2, v6}, Lrl;->b(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1082
    :cond_5
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1083
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1084
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 1087
    goto :goto_0

    .line 1075
    :catch_0
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    .line 1076
    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1082
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1083
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1084
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1078
    :catch_1
    move-exception v1

    move-object v4, v2

    move-object v5, v2

    .line 1079
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1082
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1083
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1084
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1082
    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    :goto_3
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1083
    invoke-static {v5}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1084
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 1082
    :catchall_1
    move-exception v0

    move-object v5, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    goto :goto_3

    .line 1078
    :catch_2
    move-exception v1

    move-object v5, v2

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2

    .line 1075
    :catch_5
    move-exception v1

    move-object v3, v4

    move-object v4, v2

    goto :goto_1

    :catch_6
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto :goto_1

    :catch_7
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_1
.end method

.method public a(Lorg/apache/http/HttpResponse;)J
    .locals 2
    .parameter

    .prologue
    .line 347
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 350
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 354
    const-string v1, "0"

    .line 355
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 356
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 357
    if-eqz v0, :cond_0

    .line 361
    const/16 v0, 0x400

    :try_start_0
    new-array v5, v0, [B

    .line 362
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 363
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 364
    const/4 v0, 0x0

    const/16 v3, 0x400

    :try_start_2
    invoke-virtual {v2, v5, v0, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 365
    if-lez v3, :cond_3

    .line 366
    new-instance v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 373
    :goto_0
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 374
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    move-object v1, v0

    .line 397
    :cond_0
    :goto_1
    return-object v1

    .line 368
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 369
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 373
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 374
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 370
    :catch_1
    move-exception v0

    move-object v4, v3

    .line 371
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 373
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 374
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 373
    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_4
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 374
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 381
    :cond_1
    const/16 v0, 0x400

    :try_start_5
    new-array v5, v0, [B

    .line 382
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v4

    .line 383
    :try_start_6
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 384
    const/4 v0, 0x0

    const/16 v3, 0x400

    :try_start_7
    invoke-virtual {v2, v5, v0, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 385
    if-lez v3, :cond_2

    .line 386
    new-instance v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v1, v0

    .line 393
    :cond_2
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 394
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 388
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 389
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 393
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 394
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 390
    :catch_3
    move-exception v0

    move-object v4, v3

    .line 391
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 393
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 394
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 393
    :catchall_1
    move-exception v0

    move-object v4, v3

    :goto_7
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 394
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 393
    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v4, v2

    goto :goto_7

    .line 390
    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v3, v2

    goto :goto_6

    .line 388
    :catch_6
    move-exception v0

    move-object v2, v4

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    goto :goto_5

    .line 373
    :catchall_5
    move-exception v0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_4

    .line 370
    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 368
    :catch_a
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_2

    :catch_b
    move-exception v0

    move-object v3, v4

    goto/16 :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(I)Lorg/apache/http/HttpResponse;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x26

    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 149
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v1

    invoke-virtual {v1}, Lsa;->a()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    .line 150
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v1}, Lsa;->a(Lorg/apache/http/client/methods/HttpGet;)V

    .line 152
    if-lez p1, :cond_0

    .line 153
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[ openConnection(int) ]] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lri;->e(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 204
    :goto_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 169
    iput v6, p0, Lri;->b:I

    .line 170
    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    invoke-virtual {v0}, Lorg/apache/http/conn/HttpHostConnectException;->printStackTrace()V

    .line 173
    iput v6, p0, Lri;->b:I

    .line 174
    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 175
    :catch_2
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 177
    iput v5, p0, Lri;->b:I

    .line 178
    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 179
    :catch_3
    move-exception v0

    .line 180
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 181
    iput v5, p0, Lri;->b:I

    .line 182
    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 183
    :catch_4
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 185
    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 186
    :catch_5
    move-exception v0

    .line 187
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 188
    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 189
    :catch_6
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/AbstractMethodError;->printStackTrace()V

    .line 192
    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 193
    :catch_7
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 196
    :catch_8
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 199
    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 200
    :catch_9
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0
.end method

.method public a(Ljava/io/File;Lrq;)Lorg/apache/http/HttpResponse;
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 241
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v3}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v3

    invoke-virtual {v3}, Lsa;->a()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    .line 242
    iget-object v2, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 243
    iget-object v2, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v2}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v2

    iget-object v3, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v3, p1, p2}, Lsa;->a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/File;Lrq;)V

    .line 245
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[ openConnection(File) ]] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lri;->e(Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lri;->a:Lrp;

    if-eqz v2, :cond_1

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 250
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 253
    :goto_0
    iget-object v4, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    iget-object v5, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    .line 255
    invoke-virtual {p0}, Lri;->a()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lri;->a:Lrp;

    if-eqz v4, :cond_0

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 257
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.000"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v5, v0

    const/high16 v6, 0x4480

    div-float/2addr v5, v6

    long-to-float v6, v2

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 258
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "########## upLen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bytes, upTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, upVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lri;->e(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lri;->a:Lrp;

    invoke-interface {v0, v4}, Lrp;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 278
    :cond_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    check-cast v0, Lsd;

    invoke-virtual {v0}, Lsd;->a()V

    .line 280
    :goto_1
    iget-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    :try_start_1
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 264
    const/16 v0, 0x26

    iput v0, p0, Lri;->b:I

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    check-cast v0, Lsd;

    invoke-virtual {v0}, Lsd;->a()V

    goto :goto_1

    .line 266
    :catch_1
    move-exception v0

    .line 267
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/http/conn/HttpHostConnectException;->printStackTrace()V

    .line 268
    const/16 v0, 0x26

    iput v0, p0, Lri;->b:I

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    check-cast v0, Lsd;

    invoke-virtual {v0}, Lsd;->a()V

    goto :goto_1

    .line 270
    :catch_2
    move-exception v0

    .line 271
    const/16 v0, 0x21

    :try_start_3
    iput v0, p0, Lri;->b:I

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    check-cast v0, Lsd;

    invoke-virtual {v0}, Lsd;->a()V

    goto :goto_1

    .line 273
    :catch_3
    move-exception v0

    .line 274
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 275
    const/4 v0, -0x1

    iput v0, p0, Lri;->b:I

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    check-cast v0, Lsd;

    invoke-virtual {v0}, Lsd;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    check-cast v0, Lsd;

    invoke-virtual {v0}, Lsd;->a()V

    throw v1

    :cond_1
    move-wide v2, v0

    goto/16 :goto_0
.end method

.method public a(Ljava/io/File;Z)Lorg/apache/http/HttpResponse;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 224
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v1

    invoke-virtual {v1}, Lsa;->a()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    .line 225
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v1, p1, p2}, Lsa;->a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/File;Z)V

    .line 227
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[ openConnection(File) ]] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lri;->e(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    :goto_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 232
    iput-object v2, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    iput-object v2, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 10
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 300
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v3}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v3

    invoke-virtual {v3}, Lsa;->a()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    .line 301
    iget-object v2, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v2}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v2

    iget-object v3, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Lsa;->a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Z)V

    .line 308
    :try_start_0
    iget-object v2, p0, Lri;->a:Lrp;

    if-eqz v2, :cond_1

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 310
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 313
    :goto_0
    iget-object v4, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    iget-object v5, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    iput-object v4, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    .line 314
    invoke-virtual {p0}, Lri;->a()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lri;->a:Lrp;

    if-eqz v4, :cond_0

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 316
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.000"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v5, v0

    const/high16 v6, 0x4480

    div-float/2addr v5, v6

    long-to-float v6, v2

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "########## upLen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bytes, upTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, upVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lri;->e(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lri;->a:Lrp;

    invoke-interface {v0, v4}, Lrp;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 339
    :cond_0
    :goto_1
    iget-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    iput v9, p0, Lri;->b:I

    .line 322
    iput-object v8, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_1

    .line 323
    :catch_1
    move-exception v0

    .line 324
    const/16 v0, 0x20

    iput v0, p0, Lri;->b:I

    .line 325
    iput-object v8, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_1

    .line 326
    :catch_2
    move-exception v0

    .line 327
    const/16 v0, 0x21

    iput v0, p0, Lri;->b:I

    .line 328
    iput-object v8, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_1

    .line 329
    :catch_3
    move-exception v0

    .line 330
    iput v9, p0, Lri;->b:I

    .line 331
    iput-object v8, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_1

    .line 332
    :catch_4
    move-exception v0

    .line 333
    iput v9, p0, Lri;->b:I

    .line 334
    iput-object v8, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_1

    .line 335
    :catch_5
    move-exception v0

    .line 336
    iput v9, p0, Lri;->b:I

    .line 337
    iput-object v8, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_1

    :cond_1
    move-wide v2, v0

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 284
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v1

    invoke-virtual {v1}, Lsa;->a()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    .line 285
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v1, p1}, Lsa;->a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/util/Map;)V

    .line 287
    :try_start_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 295
    :goto_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 290
    iput-object v2, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 291
    :catch_1
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 293
    iput-object v2, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0
.end method

.method public a([B)Lorg/apache/http/HttpResponse;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1007
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v1

    invoke-virtual {v1}, Lsa;->a()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    .line 1008
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v1, p1}, Lsa;->a(Lorg/apache/http/client/methods/HttpPost;[B)V

    .line 1010
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[ openConnection(byteArray) ]] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lri;->e(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1024
    :goto_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1014
    iput-object v2, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 1015
    :catch_1
    move-exception v0

    .line 1016
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 1017
    iput-object v2, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 1018
    :catch_2
    move-exception v0

    .line 1019
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1020
    iput-object v2, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 1021
    :catch_3
    move-exception v0

    .line 1022
    iput-object v2, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 794
    :cond_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 795
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 812
    invoke-virtual {p0, p1}, Lri;->c(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "User-Agent"

    const-string v2, "sogou_mediasize"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "User-Agent"

    const-string v2, "sogou_mediasize"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-static {p2}, Lsa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    if-eqz v0, :cond_0

    .line 817
    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "SOGOU-MULTIMEDIA-AUTHCODE"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "SOGOU-MULTIMEDIA-AUTHCODE"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_0
    return-void
.end method

.method public a(Lrj;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lri;->a:Lrj;

    .line 119
    return-void
.end method

.method public a(Lrl;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lri;->a:Lrl;

    .line 115
    return-void
.end method

.method public a(Lrn;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v1, p0, Lri;->a:Ljava/util/Set;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lri;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lro;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lri;->a:Lro;

    .line 127
    return-void
.end method

.method public a(Lrp;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lri;->a:Lrp;

    .line 123
    return-void
.end method

.method public a(Lrq;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lri;->a:Lrq;

    .line 111
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    const-string v1, "SOGOU_TYPE"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 982
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 986
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 987
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 988
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 990
    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/16 v5, 0x400

    :try_start_2
    invoke-virtual {v1, v0, v2, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 991
    if-lez v2, :cond_0

    .line 992
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 994
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 995
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 999
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1000
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1002
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 999
    :cond_1
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1000
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 996
    :catch_1
    move-exception v0

    move-object v3, v2

    .line 997
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 999
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1000
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 999
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 1000
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 999
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_4

    .line 996
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 994
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 966
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v1

    invoke-virtual {v1}, Lsa;->a()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    .line 967
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lsa;->a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Z)V

    .line 969
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[ openConnection(byteArray) ]] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lri;->e(Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 978
    :goto_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 971
    :catch_0
    move-exception v0

    .line 972
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 973
    iput-object v3, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 974
    :catch_1
    move-exception v0

    .line 975
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 976
    iput-object v3, p0, Lri;->a:Lorg/apache/http/HttpResponse;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 801
    :cond_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_1

    .line 803
    :try_start_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :cond_1
    :goto_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->isAborted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 808
    :cond_2
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 809
    :cond_3
    return-void

    .line 804
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 834
    invoke-virtual {p0, p1}, Lri;->c(Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "User-Agent"

    const-string v2, "sogou_fileDuration"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "User-Agent"

    const-string v2, "sogou_fileDuration"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 823
    invoke-virtual {p0, p1}, Lri;->c(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "User-Agent"

    const-string v2, "sogou_download"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "User-Agent"

    const-string v2, "sogou_download"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-static {p2}, Lsa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_0

    .line 828
    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "SOGOU-MULTIMEDIA-AUTHCODE"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "SOGOU-MULTIMEDIA-AUTHCODE"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 862
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "User-Agent"

    const-string v2, "Android_QrAPKDownload"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 841
    :try_start_0
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 842
    const-string v1, "\n"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 843
    const-string v1, "\t"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 844
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->isAborted()Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 848
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    iput-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 850
    :cond_0
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 852
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    .line 854
    :cond_1
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 855
    iget-object v0, p0, Lri;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lri;->b:Z

    .line 872
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lri;->b:Z

    .line 876
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 955
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 956
    return-void
.end method

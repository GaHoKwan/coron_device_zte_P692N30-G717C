.class public final Lcom/adchina/android/ads/controllers/h;
.super Lcom/adchina/android/ads/controllers/BaseController;


# static fields
.field private static ad:Lcom/adchina/android/ads/controllers/h;

.field private static synthetic al:[I


# instance fields
.field private a:Ljava/util/HashMap;

.field private ae:I

.field private af:Lcom/adchina/android/ads/controllers/r;

.field private ag:Lcom/adchina/android/ads/AdFullScreenFinishListener;

.field private ah:Ljava/util/HashMap;

.field private ai:Z

.field private aj:Z

.field private ak:Lcom/adchina/android/ads/AdFsListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/controllers/BaseController;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/h;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput v0, p0, Lcom/adchina/android/ads/controllers/h;->ae:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/h;->ah:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/adchina/android/ads/controllers/h;->ai:Z

    iput-boolean v1, p0, Lcom/adchina/android/ads/controllers/h;->aj:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/adchina/android/ads/controllers/h;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/controllers/h;->ad:Lcom/adchina/android/ads/controllers/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adchina/android/ads/controllers/h;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/controllers/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adchina/android/ads/controllers/h;->ad:Lcom/adchina/android/ads/controllers/h;

    :cond_0
    sget-object v0, Lcom/adchina/android/ads/controllers/h;->ad:Lcom/adchina/android/ads/controllers/h;

    return-object v0
.end method

.method static synthetic a(Lcom/adchina/android/ads/controllers/h;)Lcom/adchina/android/ads/controllers/r;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "++ start to download FullScreen Img file"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/adchina/android/ads/k;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->X:Lcom/adchina/android/ads/r;

    invoke-static {p1}, Lcom/adchina/android/ads/r;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "yyyyMMddHHmmss"

    invoke-static {v5}, Lcom/adchina/android/ads/Utils;->getNowTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-string v5, "fsImg.tmp"

    aput-object v5, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v0, 0x4000

    :try_start_2
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/adchina/android/ads/controllers/h;->X:Lcom/adchina/android/ads/r;

    invoke-static {v3}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Failed to download FullScreen Img file, err = "

    aput-object v2, v1, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->X:Lcom/adchina/android/ads/r;

    invoke-static {v3}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->y()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/adchina/android/ads/controllers/h;)Lcom/adchina/android/ads/AdFullScreenFinishListener;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->ag:Lcom/adchina/android/ads/AdFullScreenFinishListener;

    return-object v0
.end method

.method public static b()Lcom/adchina/android/ads/controllers/h;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/controllers/h;->ad:Lcom/adchina/android/ads/controllers/h;

    return-object v0
.end method

.method private u()V
    .locals 5

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onSendFullScreenImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/h;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send FullScreenImpTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->v()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendFullScreenImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Exceptions in onSendFullScreenImpTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->v()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendFullScreenImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->v()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendFullScreenImpTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method

.method private v()V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/h;->a(Lcom/adchina/android/ads/p;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->U:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "++ onSendFullScreenThdImpTrack, Size of list is "

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    if-lez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->U:Ljava/util/LinkedList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ".time_span."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->U:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send FullScreenThdImpTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->v()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendFullScreenThdImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to onSendFullScreenThdImpTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->v()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->v()V

    throw v0
.end method

.method private w()V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->T:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "++ onSendFullScreenThdClkTrack, Size of list is "

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    if-lez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->T:Ljava/util/LinkedList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ".time_span."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->T:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send FullScreenThdClkTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->w()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendFullScreenThdClkTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to onSendFullScreenThdClkTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->w()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendFullScreenThdClkTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->w()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendFullScreenThdClkTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method

.method private x()V
    .locals 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/adchina/android/ads/k;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/h;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private y()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "saveLocalFullScreenImgList"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    const-string v1, "adchinaFSImgs.fc"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v4, "|||"

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/h;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_5
    iget-object v3, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Exceptions in saveLocalFullScreenImgList, err = "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method private static synthetic z()[I
    .locals 3

    sget-object v0, Lcom/adchina/android/ads/controllers/h;->al:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adchina/android/ads/p;->values()[Lcom/adchina/android/ads/p;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    invoke-virtual {v1}, Lcom/adchina/android/ads/p;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {v1}, Lcom/adchina/android/ads/p;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/adchina/android/ads/p;->b:Lcom/adchina/android/ads/p;

    invoke-virtual {v1}, Lcom/adchina/android/ads/p;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/adchina/android/ads/controllers/h;->al:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/adchina/android/ads/AdFsListener;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->ak:Lcom/adchina/android/ads/AdFsListener;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->ah:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->ah:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->ah:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->ag:Lcom/adchina/android/ads/AdFullScreenFinishListener;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/adchina/android/ads/controllers/p;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/controllers/p;-><init>(Lcom/adchina/android/ads/controllers/h;)V

    new-instance v2, Lcom/adchina/android/ads/controllers/q;

    invoke-direct {v2, p0, p1, v0}, Lcom/adchina/android/ads/controllers/q;-><init>(Lcom/adchina/android/ads/controllers/h;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/adchina/android/ads/c;->a(Lcom/adchina/android/ads/e;Lcom/adchina/android/ads/f;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to FullScreenAdActivity.onTouchEvent, err = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Lcom/adchina/android/ads/views/ak;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ showFullScreenAdImg"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    invoke-virtual {v1}, Lcom/adchina/android/ads/controllers/r;->a()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    sget-object v1, Lcom/adchina/android/ads/l;->b:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/adchina/android/ads/controllers/i;

    invoke-direct {v1, p0, v0}, Lcom/adchina/android/ads/controllers/i;-><init>(Lcom/adchina/android/ads/controllers/h;Ljava/lang/String;)V

    new-instance v0, Lcom/adchina/android/ads/controllers/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/adchina/android/ads/controllers/j;-><init>(Lcom/adchina/android/ads/controllers/h;Landroid/view/View;Lcom/adchina/android/ads/views/ak;)V

    invoke-static {v1, v0}, Lcom/adchina/android/ads/c;->a(Lcom/adchina/android/ads/e;Lcom/adchina/android/ads/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    :goto_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- showFullScreenAdImg"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/adchina/android/ads/l;->c:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/adchina/android/ads/controllers/k;

    invoke-direct {v1, p0, v0}, Lcom/adchina/android/ads/controllers/k;-><init>(Lcom/adchina/android/ads/controllers/h;Ljava/lang/String;)V

    new-instance v0, Lcom/adchina/android/ads/controllers/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/adchina/android/ads/controllers/l;-><init>(Lcom/adchina/android/ads/controllers/h;Landroid/view/View;Lcom/adchina/android/ads/views/ak;)V

    invoke-static {v1, v0}, Lcom/adchina/android/ads/c;->a(Lcom/adchina/android/ads/e;Lcom/adchina/android/ads/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_1
    :try_start_3
    sget-object v1, Lcom/adchina/android/ads/l;->d:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/adchina/android/ads/controllers/m;

    invoke-direct {v1, p0, v0}, Lcom/adchina/android/ads/controllers/m;-><init>(Lcom/adchina/android/ads/controllers/h;Ljava/lang/String;)V

    new-instance v0, Lcom/adchina/android/ads/controllers/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/adchina/android/ads/controllers/n;-><init>(Lcom/adchina/android/ads/controllers/h;Landroid/view/View;Lcom/adchina/android/ads/views/ak;)V

    invoke-static {v1, v0}, Lcom/adchina/android/ads/c;->a(Lcom/adchina/android/ads/e;Lcom/adchina/android/ads/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    throw v0

    :cond_2
    :try_start_4
    sget-object v0, Lcom/adchina/android/ads/l;->f:Lcom/adchina/android/ads/l;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/adchina/android/ads/l;->g:Lcom/adchina/android/ads/l;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    if-ne v0, v1, :cond_6

    :cond_3
    check-cast p1, Lcom/adchina/android/ads/views/AdWebView;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/r;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?1=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&sensor=1&display=android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p1, v0}, Lcom/adchina/android/ads/views/AdWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x12

    const-string v1, "Invalidate mAdModel"

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public final a(Lcom/adchina/android/ads/AdFsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/h;->ak:Lcom/adchina/android/ads/AdFsListener;

    return-void
.end method

.method public final a(Lcom/adchina/android/ads/AdFullScreenFinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/h;->ag:Lcom/adchina/android/ads/AdFullScreenFinishListener;

    return-void
.end method

.method public final a(Lcom/adchina/android/ads/controllers/g;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/h;->K:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/adchina/android/ads/controllers/g;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/adchina/android/ads/controllers/h;->z()[I

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->b:Lcom/adchina/android/ads/p;

    invoke-virtual {v1}, Lcom/adchina/android/ads/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onReceiveFullScreenAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/r;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/r;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_3
    sget-object v0, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/h;->a(Lcom/adchina/android/ads/p;)V

    :try_start_1
    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "AdserverUrl:"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->X:Lcom/adchina/android/ads/r;

    sget-object v1, Lcom/adchina/android/ads/k;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/h;->Q:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v4

    :goto_2
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/adchina/android/ads/controllers/h;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/adchina/android/ads/controllers/r;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/controllers/r;-><init>(Lcom/adchina/android/ads/controllers/h;)V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/controllers/r;->a(Ljava/lang/StringBuffer;)V

    :cond_4
    sget-object v0, Lcom/adchina/android/ads/l;->b:Lcom/adchina/android/ads/l;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/adchina/android/ads/l;->c:Lcom/adchina/android/ads/l;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/adchina/android/ads/l;->d:Lcom/adchina/android/ads/l;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    if-ne v0, v1, :cond_f

    :cond_5
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "loadLocalFullScreenImgList"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    const-string v1, "adchinaFSImgs.fc"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    const-string v3, "adchinaFSImgs.fc"

    invoke-virtual {v1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    :try_start_4
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/io/InputStreamReader;->read([C)I

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    move v0, v5

    :goto_3
    if-lt v0, v7, :cond_9

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_6
    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->x()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    :try_start_7
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onGetImgMaterial"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/h;->a(Lcom/adchina/android/ads/p;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adchina/android/ads/l;->e:Lcom/adchina/android/ads/l;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/controllers/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ load remote fullscreen img"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :cond_7
    const/16 v0, 0x13

    const-string v1, "Received FullScreen Ad"

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :try_start_9
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v6, "-- onGetImgMaterial, AdModel = "

    aput-object v6, v1, v3

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    aput-object v6, v1, v3

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->T:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->U:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/adchina/android/ads/controllers/h;->ae:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/h;->ai:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->X:Lcom/adchina/android/ads/r;

    invoke-static {v4}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onReceiveFullScreenAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    :try_start_a
    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "AdserverUrl:"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->X:Lcom/adchina/android/ads/r;

    const-string v1, "http://amob.acs86.com/a.htm"

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/h;->Q:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    move-result-object v4

    goto/16 :goto_2

    :cond_9
    :try_start_b
    aget-object v8, v6, v0

    const-string v9, "|||"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/adchina/android/ads/Utils;->isCachedFileTimeout(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/adchina/android/ads/controllers/h;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    :try_start_c
    iget-object v6, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Exceptions in loadLocalFullScreenImgList , err = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v7}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v1, :cond_b

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_c
    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->x()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_4

    :catch_2
    move-exception v0

    :try_start_e
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Exceptions in loadLocalBannerImgList , err = "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v1, v4

    :goto_7
    const/4 v3, 0x1

    :try_start_f
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "Exceptions in onReceiveFullScreenAd, err = No ads meet the needs of targeting condition"

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {p0, v4, v3}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "onReceiveAd error ="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const-string v0, "AdChinaError"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->X:Lcom/adchina/android/ads/r;

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onReceiveFullScreenAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_8
    if-eqz v1, :cond_d

    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_e
    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->x()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    :goto_9
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    :catchall_1
    move-exception v0

    :goto_a
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->X:Lcom/adchina/android/ads/r;

    invoke-static {v4}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onReceiveFullScreenAd"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v1

    :try_start_12
    iget-object v3, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Exceptions in loadLocalBannerImgList , err = "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v6}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_9

    :catch_5
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Exceptions in loadLocalBannerImgList , err = "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_4

    :catch_6
    move-exception v0

    const/4 v1, 0x2

    :try_start_13
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v6, "Failed to get fullscreen ad material, err = "

    aput-object v6, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v6, "-- onGetImgMaterial, AdModel = "

    aput-object v6, v1, v3

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    aput-object v6, v1, v3

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "-- onGetImgMaterial, AdModel = "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    aput-object v7, v3, v6

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0

    :cond_f
    sget-object v0, Lcom/adchina/android/ads/l;->f:Lcom/adchina/android/ads/l;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    if-eq v0, v1, :cond_10

    sget-object v0, Lcom/adchina/android/ads/l;->g:Lcom/adchina/android/ads/l;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    if-ne v0, v1, :cond_14

    :cond_10
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const-string v0, "webView url is null"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const/16 v0, 0x12

    const-string v1, "url is null"

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto/16 :goto_5

    :cond_12
    :try_start_15
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_13

    const-string v0, "webView url is error"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const/16 v0, 0x12

    const-string v1, "url is wrong"

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    goto/16 :goto_5

    :catch_7
    move-exception v0

    const/16 v0, 0x12

    :try_start_16
    const-string v1, "url is wrong"

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    goto/16 :goto_5

    :cond_13
    const/16 v0, 0x13

    :try_start_17
    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    goto/16 :goto_5

    :cond_14
    :try_start_18
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No ads meet the needs of targeting condition"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    :pswitch_1
    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/h;->aj:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->s()V

    :cond_15
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onRefreshAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_19
    iget v0, p0, Lcom/adchina/android/ads/controllers/h;->ae:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_8

    sget-object v0, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/h;->a(Lcom/adchina/android/ads/p;)V

    :goto_b
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onRefreshAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_8
    move-exception v0

    sget-object v0, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/h;->a(Lcom/adchina/android/ads/p;)V

    goto :goto_b

    :catchall_3
    move-exception v0

    sget-object v1, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/controllers/h;->a(Lcom/adchina/android/ads/p;)V

    throw v0

    :catchall_4
    move-exception v0

    move-object v4, v2

    goto/16 :goto_a

    :catchall_5
    move-exception v0

    move-object v4, v1

    goto/16 :goto_a

    :catch_9
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    :catchall_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8

    :catchall_7
    move-exception v0

    goto/16 :goto_8

    :catch_a
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    :catch_b
    move-exception v0

    goto/16 :goto_6

    :cond_16
    move-object v4, v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v0, "++ showFullScreenAd arg ="

    aput-object v0, v2, v3

    if-nez p1, :cond_5

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->ah:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    invoke-virtual {v1}, Lcom/adchina/android/ads/controllers/r;->b()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    invoke-virtual {v1}, Lcom/adchina/android/ads/controllers/r;->a()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    sget-object v2, Lcom/adchina/android/ads/l;->f:Lcom/adchina/android/ads/l;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->c:Lcom/adchina/android/ads/l;

    sget-object v2, Lcom/adchina/android/ads/l;->g:Lcom/adchina/android/ads/l;

    if-ne v1, v2, :cond_6

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "ArgName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mAdType"

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/h;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    const-class v2, Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "-- showFullScreenAd arg ="

    aput-object v2, v1, v3

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    aput-object p1, v1, v4

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    move-object v0, p1

    goto/16 :goto_0

    :cond_6
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "ArgName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mAdType"

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/h;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    const-class v2, Lcom/adchina/android/ads/views/FullScreenAdActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Exceptions in onReceiveFullScreenAd, err = "

    aput-object v2, v1, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    :try_start_2
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/adchina/android/ads/controllers/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adchina/android/ads/controllers/h;->aj:Z

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->r()V

    return-void
.end method

.method public final c()V
    .locals 6

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onFullScreenAdEnded"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onSendFullScreenEndedTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/h;->a(Lcom/adchina/android/ads/p;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "212"

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/h;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "212"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send FullScreenEndedTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendFullScreenEndedTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/r;->c()V

    :cond_0
    const-string v0, "RefreshAd"

    invoke-virtual {p0, v5, v0}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onFullScreenAdEnded"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Exceptions in onSendFullScreenEndedTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendFullScreenEndedTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendFullScreenEndedTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/adchina/android/ads/controllers/o;

    invoke-direct {v0, p0, p1}, Lcom/adchina/android/ads/controllers/o;-><init>(Lcom/adchina/android/ads/controllers/h;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adchina/android/ads/c;->a(Lcom/adchina/android/ads/e;Lcom/adchina/android/ads/f;)V

    return-void
.end method

.method public final d()V
    .locals 6

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onClickCloseButton"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onSendFullScreenCloseTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "211"

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/h;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "211"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send BtnClkTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendFullScreenCloseTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->af:Lcom/adchina/android/ads/controllers/r;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/r;->c()V

    :cond_0
    const-string v0, "RefreshAd"

    invoke-virtual {p0, v5, v0}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onClickCloseButton"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Exceptions in onSendFullScreenCloseTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendFullScreenCloseTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendFullScreenCloseTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method

.method protected final e()V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Q:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Q:Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getFullScreenAdspaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    const-string v0, "adchinaFSFC.fc"

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 2

    const/16 v0, 0x11

    const-string v1, "Displayd FullScreen Ad"

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onClickFullScreenAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++ open "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/h;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with browser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/h;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- open browser"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->w()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onClickFullScreenAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Y:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v5

    :sswitch_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->ak:Lcom/adchina/android/ads/AdFsListener;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->ak:Lcom/adchina/android/ads/AdFsListener;

    invoke-interface {v0}, Lcom/adchina/android/ads/AdFsListener;->onDisplayFullScreenAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/h;->ai:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onSendFullScreenStartedTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->L:Landroid/content/Context;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "210"

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/h;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "210"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/h;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send FullScreenStartedTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->u()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendFullScreenStartedTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :cond_3
    :goto_2
    iput-boolean v5, p0, Lcom/adchina/android/ads/controllers/h;->ai:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v1, 0x2

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Exceptions in onSendFullScreenStartedTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->u()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendFullScreenStartedTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/h;->u()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendFullScreenStartedTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->ak:Lcom/adchina/android/ads/AdFsListener;

    if-eqz v0, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->ak:Lcom/adchina/android/ads/AdFsListener;

    invoke-interface {v0}, Lcom/adchina/android/ads/AdFsListener;->onReceiveFullScreenAd()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->ak:Lcom/adchina/android/ads/AdFsListener;

    if-eqz v0, :cond_4

    :try_start_4
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/h;->ak:Lcom/adchina/android/ads/AdFsListener;

    invoke-interface {v0}, Lcom/adchina/android/ads/AdFsListener;->onFailedToReceiveFullScreenAd()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    iput-boolean v2, p0, Lcom/adchina/android/ads/controllers/h;->R:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/adchina/android/ads/controllers/h;->ae:I

    :sswitch_3
    sget-object v0, Lcom/adchina/android/ads/p;->b:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/h;->a(Lcom/adchina/android/ads/p;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x11 -> :sswitch_0
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public final t()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/h;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

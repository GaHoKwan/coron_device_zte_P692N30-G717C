.class public final Lcom/adchina/android/ads/controllers/s;
.super Lcom/adchina/android/ads/controllers/BaseController;


# static fields
.field private static al:Lcom/adchina/android/ads/controllers/s;

.field private static synthetic an:[I


# instance fields
.field private a:I

.field private ad:Ljava/util/LinkedList;

.field private ae:Ljava/util/LinkedList;

.field private af:Ljava/util/LinkedList;

.field private ag:Ljava/util/HashMap;

.field private ah:Ljava/util/HashMap;

.field private ai:Lcom/adchina/android/ads/controllers/w;

.field private aj:Lcom/adchina/android/ads/AdVideoFinishListener;

.field private ak:Z

.field private am:Lcom/adchina/android/ads/AdVideoListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/controllers/BaseController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/adchina/android/ads/controllers/s;->a:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ad:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ae:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/s;->af:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ag:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ah:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/s;->ak:Z

    return-void
.end method

.method private A()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "saveLocalVideoList"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    const-string v1, "adchinaVideos.fc"

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
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ag:Ljava/util/HashMap;

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

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/s;->ag:Ljava/util/HashMap;

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
    iget-object v3, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Exceptions in saveLocalVideoList, err = "

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

.method private static synthetic B()[I
    .locals 3

    sget-object v0, Lcom/adchina/android/ads/controllers/s;->an:[I

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
    sput-object v0, Lcom/adchina/android/ads/controllers/s;->an:[I

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

.method static synthetic a(Lcom/adchina/android/ads/controllers/s;)Lcom/adchina/android/ads/AdVideoFinishListener;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->aj:Lcom/adchina/android/ads/AdVideoFinishListener;

    return-object v0
.end method

.method public static a()Lcom/adchina/android/ads/controllers/s;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/controllers/s;->al:Lcom/adchina/android/ads/controllers/s;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/adchina/android/ads/controllers/s;
    .locals 1

    sget-object v0, Lcom/adchina/android/ads/controllers/s;->al:Lcom/adchina/android/ads/controllers/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adchina/android/ads/controllers/s;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/controllers/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adchina/android/ads/controllers/s;->al:Lcom/adchina/android/ads/controllers/s;

    :cond_0
    sget-object v0, Lcom/adchina/android/ads/controllers/s;->al:Lcom/adchina/android/ads/controllers/s;

    return-object v0
.end method

.method private v()V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/p;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ad:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "++ onSendVideoStartedThdImpTrack, Size of list is "

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    if-lez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->ad:Ljava/util/LinkedList;

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

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->ad:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send VideoStartedThdImpTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->v()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendVideoStartedThdImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to onSendVideoStartedThdImpTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->v()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->v()V

    throw v0
.end method

.method private w()V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/p;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "++ onSendVideoEndedThdImpTrack, Size of list is "

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    if-lez v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ae:Ljava/util/LinkedList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ".time_span."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->ae:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "send VideoEndedThdImpTrack to "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->w()V

    :goto_0
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/w;->c()V

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendVideoEndedThdImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Failed to onSendVideoEndedThdImpTrack, err = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v2, "AdChinaError"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->w()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->w()V

    throw v0

    :cond_1
    const/4 v0, 0x3

    const-string v2, "RefreshAd"

    invoke-virtual {p0, v0, v2}, Lcom/adchina/android/ads/controllers/s;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private x()V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->T:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "++ onSendVideoThdClkTrack, Size of list is "

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    if-lez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->T:Ljava/util/LinkedList;

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

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->T:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send VideoThdClkTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->x()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendVideoThdClkTrack"

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

    const-string v3, "Failed to onSendVideoThdClkTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->x()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendVideoThdClkTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->x()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendVideoThdClkTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method

.method private y()V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->af:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "++ onSendVideoCloseThdClkTrack, Size of list is "

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    if-lez v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->af:Ljava/util/LinkedList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ".time_span."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->af:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "send VideoCloseThdClkTrack to "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->y()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendVideoCloseThdClkTrack"

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/w;->c()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Failed to SendVideoCloseThdClkTrack, err = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v2, "AdChinaError"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->y()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendVideoCloseThdClkTrack"

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->y()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendVideoCloseThdClkTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x3

    const-string v2, "RefreshAd"

    invoke-virtual {p0, v0, v2}, Lcom/adchina/android/ads/controllers/s;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private z()V
    .locals 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/adchina/android/ads/k;->a:Ljava/lang/String;

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

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/s;->ag:Ljava/util/HashMap;

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


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->ah:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ah:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->ah:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->aj:Lcom/adchina/android/ads/AdVideoFinishListener;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/adchina/android/ads/controllers/t;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/controllers/t;-><init>(Lcom/adchina/android/ads/controllers/s;)V

    new-instance v2, Lcom/adchina/android/ads/controllers/u;

    invoke-direct {v2, p0, p1, v0}, Lcom/adchina/android/ads/controllers/u;-><init>(Lcom/adchina/android/ads/controllers/s;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/adchina/android/ads/c;->a(Lcom/adchina/android/ads/e;Lcom/adchina/android/ads/f;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/adchina/android/ads/AdVideoFinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/s;->aj:Lcom/adchina/android/ads/AdVideoFinishListener;

    return-void
.end method

.method public final a(Lcom/adchina/android/ads/AdVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/s;->am:Lcom/adchina/android/ads/AdVideoListener;

    return-void
.end method

.method public final a(Lcom/adchina/android/ads/controllers/g;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/s;->K:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/adchina/android/ads/controllers/g;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/adchina/android/ads/controllers/s;->B()[I

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->b:Lcom/adchina/android/ads/p;

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
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/w;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/w;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onReceiveAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/p;)V

    :try_start_1
    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/s;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

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

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->X:Lcom/adchina/android/ads/r;

    sget-object v1, Lcom/adchina/android/ads/k;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/s;->Q:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v4

    :goto_2
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/adchina/android/ads/controllers/s;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->E:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_d

    new-instance v0, Lcom/adchina/android/ads/controllers/w;

    invoke-direct {v0, p0}, Lcom/adchina/android/ads/controllers/w;-><init>(Lcom/adchina/android/ads/controllers/s;)V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->E:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/controllers/w;->a(Ljava/lang/StringBuffer;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "loadLocalVideoList"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    const-string v1, "adchinaVideos.fc"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    const-string v3, "adchinaVideos.fc"

    invoke-virtual {v1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    :try_start_4
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/io/InputStreamReader;->read([C)I

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ag:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    move v0, v5

    :goto_3
    if-lt v0, v7, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_4
    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->z()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    :try_start_7
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ag:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->E:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->isWifiOrNotRoaming3G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/adchina/android/ads/controllers/v;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    invoke-virtual {v1}, Lcom/adchina/android/ads/controllers/w;->a()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adchina/android/ads/controllers/v;-><init>(Lcom/adchina/android/ads/controllers/s;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/v;->start()V

    :cond_5
    const/16 v0, 0x14

    const-string v1, "ReceivedVideo"

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/s;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->T:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->F:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->ad:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->G:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->ae:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->H:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->af:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/adchina/android/ads/controllers/s;->a:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :goto_5
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->X:Lcom/adchina/android/ads/r;

    invoke-static {v4}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onReceiveAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    :try_start_8
    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/s;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

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

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->X:Lcom/adchina/android/ads/r;

    const-string v1, "http://amob.acs86.com/a.htm"

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/s;->Q:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v4

    goto/16 :goto_2

    :cond_7
    :try_start_9
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

    if-eqz v11, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/adchina/android/ads/Utils;->isCachedFileTimeout(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/adchina/android/ads/controllers/s;->ag:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    :try_start_a
    iget-object v6, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Exceptions in loadLocalVideoList 1, err = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v7}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v1, :cond_9

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_a
    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->z()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    :catch_2
    move-exception v0

    :try_start_c
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Exceptions in loadLocalVideoList 2, err = "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v1, v4

    :goto_7
    const/4 v3, 0x1

    :try_start_d
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "Exceptions in onReceiveAd, err = No ads meet the needs of targeting condition"

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lcom/adchina/android/ads/controllers/s;->a(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

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
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->X:Lcom/adchina/android/ads/r;

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onReceiveAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_8
    if-eqz v1, :cond_b

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_c
    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->z()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    :goto_9
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    :catchall_1
    move-exception v0

    :goto_a
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->X:Lcom/adchina/android/ads/r;

    invoke-static {v4}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onReceiveAd"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v1

    :try_start_10
    iget-object v3, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Exceptions in loadLocalVideoList 2, err = "

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

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Exceptions in loadLocalVideoList 2, err = "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    const/16 v0, 0x10

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/s;->a(ILjava/lang/Object;)V

    sget-object v0, Lcom/adchina/android/ads/p;->b:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/p;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_5

    :pswitch_1
    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/s;->ak:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/s;->s()V

    :cond_e
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onRefreshAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_11
    iget v0, p0, Lcom/adchina/android/ads/controllers/s;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_6

    sget-object v0, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/p;)V

    :goto_b
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onRefreshAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_6
    move-exception v0

    sget-object v0, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/p;)V

    goto :goto_b

    :catchall_2
    move-exception v0

    sget-object v1, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/p;)V

    throw v0

    :catchall_3
    move-exception v0

    move-object v4, v2

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    move-object v4, v1

    goto/16 :goto_a

    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    :catchall_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8

    :catchall_6
    move-exception v0

    goto/16 :goto_8

    :catch_8
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    :catch_9
    move-exception v0

    goto/16 :goto_6

    :cond_f
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
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/w;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/w;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/w;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->ag:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->ag:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->ah:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/w;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/adchina/android/ads/controllers/s;->S:Z

    iput-boolean v3, p0, Lcom/adchina/android/ads/controllers/s;->R:Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "ADUrl"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ArgName"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    const-class v1, Lcom/adchina/android/ads/views/AdVideoPlayerActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adchina/android/ads/controllers/s;->ak:Z

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/s;->r()V

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "++ onDisplayAd, mAdModel = "

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->c:Lcom/adchina/android/ads/l;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const/4 v0, 0x7

    const-string v1, "PlayVideo"

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/s;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onSendVideoStartedImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "207"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/s;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&tm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yyyyMMddHHmmss"

    invoke-static {v4}, Lcom/adchina/android/ads/Utils;->getNowTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "207"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/s;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "&tm="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "yyyyMMddHHmmss"

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->getNowTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send VideoStartedImpTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->v()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendVideoStartedImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onDisplayAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Exceptions in onSendVideoStartedImpTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->v()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendVideoStartedImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->v()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendVideoStartedImpTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 2

    const/16 v0, 0x8

    const-string v1, "FailedToPlayVideo"

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/s;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 2

    const/16 v0, 0x9

    const-string v1, "VideoPlayEnded"

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/s;->a(ILjava/lang/Object;)V

    return-void
.end method

.method protected final e()V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Q:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Q:Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getVideoAdspaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    const-string v0, "adchinaVideoFC.fc"

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Y:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v5

    :sswitch_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->am:Lcom/adchina/android/ads/AdVideoListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->am:Lcom/adchina/android/ads/AdVideoListener;

    invoke-interface {v0}, Lcom/adchina/android/ads/AdVideoListener;->onPlayVideoAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->am:Lcom/adchina/android/ads/AdVideoListener;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->am:Lcom/adchina/android/ads/AdVideoListener;

    invoke-interface {v0}, Lcom/adchina/android/ads/AdVideoListener;->onReceiveVideoAd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->am:Lcom/adchina/android/ads/AdVideoListener;

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->am:Lcom/adchina/android/ads/AdVideoListener;

    invoke-interface {v0}, Lcom/adchina/android/ads/AdVideoListener;->onFailedToReceiveVideoAd()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    const/16 v0, 0x1e

    iput v0, p0, Lcom/adchina/android/ads/controllers/s;->a:I

    sget-object v0, Lcom/adchina/android/ads/p;->b:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/p;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->am:Lcom/adchina/android/ads/AdVideoListener;

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->am:Lcom/adchina/android/ads/AdVideoListener;

    invoke-interface {v0}, Lcom/adchina/android/ads/AdVideoListener;->onFailedToPlayVideoAd()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_2
    iput-boolean v3, p0, Lcom/adchina/android/ads/controllers/s;->R:Z

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ai:Lcom/adchina/android/ads/controllers/w;

    invoke-virtual {v0}, Lcom/adchina/android/ads/controllers/w;->c()V

    sget-object v0, Lcom/adchina/android/ads/p;->b:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/p;)V

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_4
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onSendVideoEndedImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_4
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "208"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/s;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&tm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yyyyMMddHHmmss"

    invoke-static {v4}, Lcom/adchina/android/ads/Utils;->getNowTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "208"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/s;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "&tm="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "yyyyMMddHHmmss"

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->getNowTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send VideoEndedImpTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->w()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendVideoEndedImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const/4 v1, 0x2

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Exceptions in onSendVideoEndedImpTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->w()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendVideoEndedImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->w()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendVideoEndedImpTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0

    :sswitch_5
    sget-object v0, Lcom/adchina/android/ads/p;->b:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/s;->a(Lcom/adchina/android/ads/p;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->ag:Ljava/util/HashMap;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->ag:Ljava/util/HashMap;

    aget-object v2, v0, v3

    aget-object v0, v0, v5

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->A()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0x10 -> :sswitch_2
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final m()V
    .locals 1

    invoke-super {p0}, Lcom/adchina/android/ads/controllers/BaseController;->m()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ad:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public final t()V
    .locals 5

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onClosedVideo"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onSendVideoCloseClkTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->L:Landroid/content/Context;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "209"

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/s;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/s;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "209"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/s;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send VideoCloseClkTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->y()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendVideoCloseClkTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onClosedVideo"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Exceptions in onSendVideoCloseClkTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->y()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendVideoCloseClkTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->y()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendVideoCloseClkTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onVideoClick"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "++ open "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/s;->f:Ljava/lang/StringBuffer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " with browser"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/s;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- open browser"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/s;->x()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onVideoClick"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void
.end method

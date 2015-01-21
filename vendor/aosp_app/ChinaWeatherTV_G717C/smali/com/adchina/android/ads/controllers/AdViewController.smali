.class public Lcom/adchina/android/ads/controllers/AdViewController;
.super Lcom/adchina/android/ads/controllers/BaseController;


# static fields
.field public static a:Lcom/adchina/android/ads/controllers/AdViewController;

.field private static an:Ljava/util/HashMap;

.field private static ao:Ljava/util/ArrayList;

.field private static synthetic as:[I


# instance fields
.field private ad:J

.field private ae:Ljava/util/LinkedList;

.field private af:Ljava/util/HashMap;

.field private ag:I

.field private ah:I

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Ljava/lang/String;

.field private final ap:I

.field private final aq:I

.field private ar:Lcom/adchina/android/ads/AdBannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->an:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->ao:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/controllers/BaseController;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ad:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->af:Ljava/util/HashMap;

    iput v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ag:I

    iput v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ah:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ai:Z

    iput-boolean v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->aj:Z

    iput-boolean v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ak:Z

    iput-boolean v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->al:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ap:I

    const v0, 0xc350

    iput v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->aq:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/controllers/BaseController;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ad:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->af:Ljava/util/HashMap;

    iput v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ag:I

    iput v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ah:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ai:Z

    iput-boolean v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->aj:Z

    iput-boolean v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ak:Z

    iput-boolean v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->al:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ap:I

    const v0, 0xc350

    iput v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->aq:I

    iput-object p2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->am:Ljava/lang/String;

    return-void
.end method

.method private A()V
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "loadLocalBannerImgList"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->L:Landroid/content/Context;

    const-string v1, "adchinaBNImgs.fc"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->L:Landroid/content/Context;

    const-string v3, "adchinaBNImgs.fc"

    invoke-virtual {v1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/InputStreamReader;->read([C)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->af:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move v0, v4

    :goto_0
    if-lt v0, v5, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->z()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    return-void

    :cond_1
    :try_start_4
    aget-object v6, v2, v0

    const-string v7, "|||"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adchina/android/ads/Utils;->isCachedFileTimeout(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/adchina/android/ads/controllers/AdViewController;->af:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Exceptions in loadLocalBannerImgList , err = "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v5}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_4
    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->z()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "Exceptions in loadLocalBannerImgList , err = "

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_6
    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->z()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_4
    throw v0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v3, v11, [Ljava/lang/Object;

    const-string v5, "Exceptions in loadLocalBannerImgList , err = "

    aput-object v5, v3, v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "Exceptions in loadLocalBannerImgList , err = "

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1

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

    move-object v2, v3

    goto/16 :goto_2

    :catch_5
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2
.end method

.method private B()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "saveLocalBannerImgList"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->L:Landroid/content/Context;

    const-string v1, "adchinaBNImgs.fc"

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
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->af:Ljava/util/HashMap;

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

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/AdViewController;->af:Ljava/util/HashMap;

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
    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Exceptions in saveLocalBannerImgList, err = "

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

.method private static synthetic C()[I
    .locals 3

    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->as:[I

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
    sput-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->as:[I

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

.method private a(II)V
    .locals 0

    iput p1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ag:I

    iput p2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ah:I

    return-void
.end method

.method public static a(Lcom/adchina/android/ads/controllers/AdViewController;)V
    .locals 0

    sput-object p0, Lcom/adchina/android/ads/controllers/AdViewController;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    return-void
.end method

.method private static b(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private g(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\u7d20\u6750 "

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "++ start to download Banner Img file"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v4}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/adchina/android/ads/k;->d:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v4, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {p1}, Lcom/adchina/android/ads/r;->b(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/io/File;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "yyyyMMddHHmmss"

    invoke-static {v8}, Lcom/adchina/android/ads/Utils;->getNowTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "bnImg.tmp"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v2, 0x4000

    :try_start_3
    new-array v6, v2, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move v2, v3

    :goto_0
    :try_start_4
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    move v2, v3

    :goto_1
    :try_start_5
    const-string v3, "\u5f02\u5e381  downLoadAndSaveImg------------------>"

    invoke-static {v3}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_3

    :try_start_6
    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {v4}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    :cond_3
    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    move-object v1, v0

    move v3, v2

    move-object v0, v4

    :goto_3
    :try_start_7
    const-string v2, "\u5f02\u5e382 downLoadAndSaveImg------------------>"

    invoke-static {v2}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Failed to download Banner Img file, err = "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v2, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v2, "AdChinaError"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez v3, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {p1}, Lcom/adchina/android/ads/r;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_5
    :goto_4
    return-object v0

    :cond_6
    if-eqz v2, :cond_7

    :try_start_8
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {v4}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    :cond_7
    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->af:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->B()V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_5
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {p1}, Lcom/adchina/android/ads/r;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v2

    :goto_6
    if-nez v3, :cond_8

    if-nez v4, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {p1}, Lcom/adchina/android/ads/r;->b(Ljava/lang/String;)Ljava/io/InputStream;

    :cond_9
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move v3, v2

    goto :goto_6

    :catchall_4
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v1, v2

    move v2, v3

    goto/16 :goto_2

    :catchall_6
    move-exception v0

    move v2, v3

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move v2, v3

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_1

    :cond_a
    move-object v0, v4

    goto :goto_5
.end method

.method private t()V
    .locals 11

    const/4 v1, 0x0

    const v10, 0xc350

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v0, "\u5f00\u59cb  \u5f97\u5230\u7d20\u6750onGetImgMaterial"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "++ onGetImgMaterial"

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/adchina/android/ads/l;->e:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/adchina/android/ads/l;->a:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->af:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v3}, Lcom/adchina/android/ads/controllers/AdViewController;->g(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "++ load remote banner img"

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/adchina/android/ads/l;->b:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-ne v0, v2, :cond_8

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->convertStreamToBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/adchina/android/ads/controllers/AdViewController;->a(II)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    const-string v0, "\u7ed3\u675f  \u5f97\u5230\u7d20\u6750onGetImgMaterial"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "-- onGetImgMaterial, AdModel = "

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->an:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->an:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v2

    :goto_3
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "++ load local banner img"

    invoke-virtual {v0, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_4
    :try_start_2
    const-string v2, "\u5f02\u5e38  onGetImgMaterial------------------>"

    invoke-static {v2}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Failed to get ad material, err = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v2, "AdChinaError"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    const-string v0, "\u7ed3\u675f  \u5f97\u5230\u7d20\u6750onGetImgMaterial"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "-- onGetImgMaterial, AdModel = "

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :try_start_3
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->af:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v0, v5

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-lez v0, :cond_d

    if-ge v0, v10, :cond_d

    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-static {v2}, Lcom/adchina/android/ads/controllers/AdViewController;->b(Ljava/io/InputStream;)[B

    move-result-object v4

    if-eqz v4, :cond_d

    array-length v0, v4

    if-lez v0, :cond_d

    array-length v0, v4

    if-ge v0, v10, :cond_d

    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->an:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v5, 0x4

    if-lt v0, v5, :cond_5

    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->ao:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lcom/adchina/android/ads/controllers/AdViewController;->an:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/adchina/android/ads/controllers/AdViewController;->ao:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->an:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    move-object v1, v2

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->an:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_3

    :cond_7
    const/4 v0, 0x2

    const-string v2, "JPG AdMaterial is null"

    invoke-virtual {p0, v0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_5
    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    const-string v1, "\u7ed3\u675f  \u5f97\u5230\u7d20\u6750onGetImgMaterial"

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "-- onGetImgMaterial, AdModel = "

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0

    :cond_8
    :try_start_6
    sget-object v0, Lcom/adchina/android/ads/l;->c:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-ne v0, v2, :cond_a

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->convertStreamToBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/adchina/android/ads/controllers/AdViewController;->a(II)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x2

    const-string v2, "PNG AdMaterial is null"

    invoke-virtual {p0, v0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lcom/adchina/android/ads/l;->d:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_6
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v2}, Lcom/adchina/android/ads/GifEngine;->a([B)Lcom/adchina/android/ads/GifEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adchina/android/ads/GifEngine;->b()I

    move-result v3

    invoke-virtual {v2}, Lcom/adchina/android/ads/GifEngine;->c()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/adchina/android/ads/controllers/AdViewController;->a(II)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V

    :cond_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    :cond_d
    move-object v1, v2

    goto/16 :goto_3
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onSendImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->L:Landroid/content/Context;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "send ImpTrack to "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->v()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Exceptions in onSendImpTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->v()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->v()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendImpTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method

.method private v()V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->U:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "++ onSendThdImpTrack, Size of list is "

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    if-lez v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->U:Ljava/util/LinkedList;

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

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->U:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->L:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send ThdImpTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->v()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendThdImpTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to onSendThdImpTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u5f02\u5e38 \u53d1\u9001\u7b2c\u4e09\u65b9\u5370\u8c61\u6570"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->v()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->v()V

    throw v0

    :cond_1
    sget v0, Lcom/adchina/android/ads/AdManager;->e:I

    sget v1, Lcom/adchina/android/ads/AdManager;->a:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const-string v1, "RefreshAd"

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private w()V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->T:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "++ onSendThdClkTrack, Size of list is "

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    if-lez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->T:Ljava/util/LinkedList;

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

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->T:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->L:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send ThdClkTrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->w()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendThdClkTrack"

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

    const-string v3, "Failed to onSendThdClkTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->w()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendThdClkTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->w()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendThdClkTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method

.method private x()V
    .locals 5

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onSendBtnClkTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->L:Landroid/content/Context;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->g:Ljava/lang/StringBuffer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "200"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

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

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->V:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->y()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendBtnClkTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Exceptions in onSendBtnClkTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->V:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->y()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendBtnClkTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->V:Ljava/util/LinkedList;

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->y()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendBtnClkTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method

.method private y()V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->V:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "++ onSendBtnThdClkTrack, Size of list is "

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    if-lez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->V:Ljava/util/LinkedList;

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

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->V:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->L:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send btnthdclktrack to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->y()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendBtnThdClkTrack"

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

    const-string v3, "Failed to onSendBtnThdClkTrack, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->y()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendBtnThdClkTrack"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->y()V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendBtnThdClkTrack"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method

.method private z()V
    .locals 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/adchina/android/ads/k;->d:Ljava/lang/String;

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

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/AdViewController;->af:Ljava/util/HashMap;

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
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->aj:Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tryPause  mIsPaused-->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->aj:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adchina/android/ads/views/AdView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->x()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "down"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "++ open "

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->w:Ljava/lang/StringBuffer;

    aput-object v1, v2, v5

    const-string v1, " with browser"

    aput-object v1, v2, v6

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->w:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- open browser"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ar:Lcom/adchina/android/ads/AdBannerListener;

    check-cast p1, Lcom/adchina/android/ads/views/AdView;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SMS:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/AdViewController;->y:Ljava/lang/StringBuffer;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, " To:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/AdViewController;->x:Ljava/lang/StringBuffer;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/adchina/android/ads/AdBannerListener;->OnRecvSms(Lcom/adchina/android/ads/views/AdView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "++ send sms to number "

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->x:Ljava/lang/StringBuffer;

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->x:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->y:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- send sms"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "call"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "++ make call to number "

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->z:Ljava/lang/StringBuffer;

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- make call"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/adchina/android/ads/AdBannerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ar:Lcom/adchina/android/ads/AdBannerListener;

    return-void
.end method

.method public final a(Lcom/adchina/android/ads/controllers/g;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    :goto_0
    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->K:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/adchina/android/ads/controllers/g;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/adchina/android/ads/controllers/AdViewController;->C()[I

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->b:Lcom/adchina/android/ads/p;

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
    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ai:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->aj:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->al:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ak:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u63a5\u6536 Time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/adchina/android/ads/LogUtil;->getNowTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const-string v0, "\u5f00\u59cb banner onReceiveAd ,\u672cSDK\u7248\u672c\u53f7\u4e3a2.6.4"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onReceiveAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/adchina/android/ads/p;->c:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/adchina/android/ads/AdManager;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bf7\u6c42\u5730\u5740-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/adchina/android/ads/k;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "AdserverUrl:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/adchina/android/ads/k;->f:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->e()V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    sget-object v2, Lcom/adchina/android/ads/k;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Q:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/adchina/android/ads/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->I:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ac:Z

    :cond_4
    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/adchina/android/ads/AdManager;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5237\u65b0\u65f6\u95f4\u4e3a-->"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/adchina/android/ads/AdManager;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    sget-object v0, Lcom/adchina/android/ads/l;->a:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->p:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V

    :goto_4
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->T:Ljava/util/LinkedList;

    invoke-static {v0, v2}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->U:Ljava/util/LinkedList;

    invoke-static {v0, v2}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->V:Ljava/util/LinkedList;

    invoke-static {v0, v2}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onReceiveAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v0, "\u7ed3\u675f banner onReceiveAd"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    :try_start_4
    const-string v0, "\u8bf7\u6c42\u5730\u5740-->http://amob.acs86.com/a.htm"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "AdserverUrl:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://amob.acs86.com/a.htm?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    const-string v2, "http://amob.acs86.com/a.htm"

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Q:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/adchina/android/ads/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    sget v0, Lcom/adchina/android/ads/AdManager;->c:I

    sput v0, Lcom/adchina/android/ads/AdManager;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const/4 v2, 0x1

    :try_start_5
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Exceptions in onReceiveAd, err = No ads meet the needs of targeting condition"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v3, "AdChinaError"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceiveAd error ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->m()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onReceiveAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v0, "\u7ed3\u675f banner onReceiveAd"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    :try_start_6
    sget-object v0, Lcom/adchina/android/ads/l;->b:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-eq v0, v2, :cond_8

    sget-object v0, Lcom/adchina/android/ads/l;->c:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-eq v0, v2, :cond_8

    sget-object v0, Lcom/adchina/android/ads/l;->d:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-ne v0, v2, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->A()V

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->t()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->X:Lcom/adchina/android/ads/r;

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onReceiveAd"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "\u7ed3\u675f banner onReceiveAd"

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    throw v0

    :cond_9
    :try_start_7
    sget-object v0, Lcom/adchina/android/ads/l;->f:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-eq v0, v2, :cond_a

    sget-object v0, Lcom/adchina/android/ads/l;->g:Lcom/adchina/android/ads/l;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-ne v0, v2, :cond_e

    :cond_a
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const-string v0, "webView url is null"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v2, "url is null"

    invoke-virtual {p0, v0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4

    :cond_c
    :try_start_8
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_d

    const-string v0, "webView url is error"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v2, "url is wrong"

    invoke-virtual {p0, v0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    const/4 v0, 0x2

    :try_start_9
    const-string v2, "url is wrong"

    invoke-virtual {p0, v0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    :cond_d
    const/4 v0, 0x1

    :try_start_a
    invoke-virtual {p0, v0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_4

    :cond_e
    :try_start_b
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "No ads meet the needs of targeting condition"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    :pswitch_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onRefreshAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v0, "\u5f00\u59cb\u51c6\u5907\u5237\u65b0banner"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const/16 v1, 0x1e

    :try_start_c
    sget v0, Lcom/adchina/android/ads/AdManager;->e:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    :try_start_d
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    sget-object v1, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "-- onRefreshAd, delay = "

    aput-object v3, v2, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v0, "\u7ed3\u675f\u51c6\u5907\u5237\u65b0banner"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    :try_start_e
    sget v0, Lcom/adchina/android/ads/AdManager;->c:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    :try_start_f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    sget-object v1, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "-- onRefreshAd, delay = "

    aput-object v3, v2, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v0, "\u7ed3\u675f\u51c6\u5907\u5237\u65b0banner"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_5
    move-exception v1

    sget-object v1, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "-- onRefreshAd, delay = "

    aput-object v3, v2, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v0, "\u7ed3\u675f\u51c6\u5907\u5237\u65b0banner"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    sget-object v2, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "-- onRefreshAd, delay = "

    aput-object v4, v3, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v0, "\u7ed3\u675f\u51c6\u5907\u5237\u65b0banner"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    throw v1

    :catchall_2
    move-exception v0

    const/16 v2, 0x7530

    int-to-long v2, v2

    :try_start_10
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    sget-object v2, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "-- onRefreshAd, delay = "

    aput-object v4, v3, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "\u7ed3\u675f\u51c6\u5907\u5237\u65b0banner"

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    :goto_5
    throw v0

    :catch_6
    move-exception v2

    sget-object v2, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "-- onRefreshAd, delay = "

    aput-object v4, v3, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "\u7ed3\u675f\u51c6\u5907\u5237\u65b0banner"

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    goto :goto_5

    :catchall_3
    move-exception v0

    sget-object v2, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "-- onRefreshAd, delay = "

    aput-object v4, v3, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "\u7ed3\u675f\u51c6\u5907\u5237\u65b0banner"

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    throw v0

    :catch_7
    move-exception v1

    sget-object v1, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "-- onRefreshAd, delay = "

    aput-object v3, v2, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v0, "\u7ed3\u675f\u51c6\u5907\u5237\u65b0banner"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_4
    move-exception v1

    sget-object v2, Lcom/adchina/android/ads/p;->a:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "-- onRefreshAd, delay = "

    aput-object v4, v3, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v3}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v0, "\u7ed3\u675f\u51c6\u5907\u5237\u65b0banner"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/adchina/android/ads/views/AdView;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1, p0}, Lcom/adchina/android/ads/views/AdView;->setController(Lcom/adchina/android/ads/controllers/AdViewController;)V

    goto :goto_0
.end method

.method public final a(Lcom/adchina/android/ads/views/AdView;Landroid/view/MotionEvent;)V
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->r:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c8

    div-float v6, v0, v1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->s:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c8

    div-float v7, v0, v1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->t:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c8

    div-float v8, v0, v1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c8

    div-float v9, v0, v1

    invoke-virtual {p1}, Lcom/adchina/android/ads/views/AdView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/adchina/android/ads/views/AdView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ag:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ah:I

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    float-to-int v1, v4

    float-to-int v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->x()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "++ open "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->w:Ljava/lang/StringBuffer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " with browser"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->w:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- open browser"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/adchina/android/ads/views/AdView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/adchina/android/ads/views/AdView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ag:I

    int-to-double v2, v2

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v2, v10

    iget v10, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ah:I

    int-to-double v10, v10

    div-double/2addr v2, v10

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/adchina/android/ads/views/AdView;->getHeight()I

    move-result v0

    int-to-double v1, v0

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v1, v10

    iget v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ah:I

    int-to-double v10, v3

    div-double/2addr v1, v10

    iget v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ag:I

    int-to-double v10, v3

    mul-double/2addr v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/adchina/android/ads/views/AdView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-double v10, v3

    const-wide/high16 v12, 0x4000

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v3, v10

    :goto_2
    int-to-float v10, v1

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v6, v0

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v1, v1

    mul-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v6, v2

    invoke-direct {v0, v3, v2, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to AdView.onTouchEvent, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/adchina/android/ads/views/AdView;->getWidth()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v2, v10

    iget v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ag:I

    int-to-double v10, v0

    div-double/2addr v2, v10

    iget v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ah:I

    int-to-double v10, v0

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/adchina/android/ads/views/AdView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-double v10, v2

    const-wide/high16 v12, 0x4000

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v2, v10

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ar:Lcom/adchina/android/ads/AdBannerListener;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SMS:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/AdViewController;->y:Ljava/lang/StringBuffer;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, " To:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/AdViewController;->x:Ljava/lang/StringBuffer;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/adchina/android/ads/AdBannerListener;->OnRecvSms(Lcom/adchina/android/ads/views/AdView;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    :goto_3
    if-eqz v0, :cond_5

    :try_start_3
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "++ send sms to number "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->x:Ljava/lang/StringBuffer;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->x:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->y:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- send sms"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    move v0, v1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->q:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "++ make call to number "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->z:Ljava/lang/StringBuffer;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- make call"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->h()V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->h()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->am:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->e()V

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->aj:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tryResume  mIsPaused-->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->aj:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/adchina/android/ads/views/AdView;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->s()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->n:Ljava/lang/StringBuffer;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->al:Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/adchina/android/ads/controllers/a;

    invoke-direct {v0, p0, p1}, Lcom/adchina/android/ads/controllers/a;-><init>(Lcom/adchina/android/ads/controllers/AdViewController;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adchina/android/ads/c;->a(Lcom/adchina/android/ads/e;Lcom/adchina/android/ads/f;)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->al:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/adchina/android/ads/controllers/AdViewController;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    return-void
.end method

.method protected final e()V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Q:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Q:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    const-string v0, "adchinaFC.fc"

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->R:Z

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->u()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onDisplayAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 3

    const-string v0, "\u5f00\u59cb\u70b9\u51fb onClick"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onClick"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Ljava/lang/String;Lcom/adchina/android/ads/controllers/AdViewController;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- open browser"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->T:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lcom/adchina/android/ads/Utils;->splitTrackUrl(Ljava/lang/String;Ljava/util/LinkedList;)V

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->w()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onClick"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v0, "\u7ed3\u675f\u70b9\u51fb onClick"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adchina/android/ads/views/AdView;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ar:Lcom/adchina/android/ads/AdBannerListener;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ar:Lcom/adchina/android/ads/AdBannerListener;

    invoke-interface {v2, v0}, Lcom/adchina/android/ads/AdBannerListener;->onClickBanner(Lcom/adchina/android/ads/views/AdView;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Y:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ar:Lcom/adchina/android/ads/AdBannerListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u5c55\u793a\u5e7f\u544a mAdModel->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "++ onDisplayAd, mAdModel = "

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/adchina/android/ads/controllers/AdViewController;->S:Z

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Failed to DisplayAd, err = "

    aput-object v2, v1, v5

    const-string v2, "no AdView is visible"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/adchina/android/ads/controllers/AdViewController;->R:Z

    sget-object v0, Lcom/adchina/android/ads/p;->b:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adchina/android/ads/views/AdView;

    iget-boolean v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->S:Z

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ar:Lcom/adchina/android/ads/AdBannerListener;

    invoke-interface {v2, v0}, Lcom/adchina/android/ads/AdBannerListener;->onRefreshAd(Lcom/adchina/android/ads/views/AdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ar:Lcom/adchina/android/ads/AdBannerListener;

    invoke-interface {v2, v0}, Lcom/adchina/android/ads/AdBannerListener;->onReceiveAd(Lcom/adchina/android/ads/views/AdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/adchina/android/ads/l;->f:Lcom/adchina/android/ads/l;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-eq v0, v1, :cond_8

    sget-object v0, Lcom/adchina/android/ads/l;->g:Lcom/adchina/android/ads/l;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-eq v0, v1, :cond_8

    iput-boolean v4, p0, Lcom/adchina/android/ads/controllers/AdViewController;->R:Z

    invoke-direct {p0}, Lcom/adchina/android/ads/controllers/AdViewController;->u()V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onDisplayAd"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ed3\u675f\u5c55\u793a\u56fe\u7247 mAdModel->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adchina/android/ads/views/AdView;

    :try_start_2
    sget-object v1, Lcom/adchina/android/ads/l;->a:Lcom/adchina/android/ads/l;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->p:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdView;->setContent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v3, "Failed to DisplayAd, err = "

    aput-object v3, v1, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u5f02\u5e38  onDisplayAd---------------->"

    invoke-static {v0}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    :try_start_3
    sget-object v1, Lcom/adchina/android/ads/l;->b:Lcom/adchina/android/ads/l;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-eq v1, v3, :cond_b

    sget-object v1, Lcom/adchina/android/ads/l;->c:Lcom/adchina/android/ads/l;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-ne v1, v3, :cond_c

    :cond_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdView;->setContent(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_c
    sget-object v1, Lcom/adchina/android/ads/l;->d:Lcom/adchina/android/ads/l;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-ne v1, v3, :cond_d

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/adchina/android/ads/GifEngine;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdView;->setContent(Lcom/adchina/android/ads/GifEngine;)V

    goto/16 :goto_2

    :cond_d
    sget-object v1, Lcom/adchina/android/ads/l;->f:Lcom/adchina/android/ads/l;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-ne v1, v3, :cond_e

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdView;->setContent_html5(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    sget-object v1, Lcom/adchina/android/ads/l;->g:Lcom/adchina/android/ads/l;

    iget-object v3, p0, Lcom/adchina/android/ads/controllers/AdViewController;->c:Lcom/adchina/android/ads/l;

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/AdViewController;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdView;->setContent_ihtml5(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ar:Lcom/adchina/android/ads/AdBannerListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ae:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_f
    iput-boolean v5, p0, Lcom/adchina/android/ads/controllers/AdViewController;->R:Z

    sget-boolean v0, Lcom/adchina/android/ads/AdManager;->d:Z

    if-nez v0, :cond_10

    :try_start_4
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/adchina/android/ads/AdManager;->e:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_10
    :goto_4
    sget v0, Lcom/adchina/android/ads/AdManager;->e:I

    sget v1, Lcom/adchina/android/ads/AdManager;->a:I

    if-eq v0, v1, :cond_0

    :pswitch_2
    sget-object v0, Lcom/adchina/android/ads/p;->b:Lcom/adchina/android/ads/p;

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/p;)V

    goto/16 :goto_0

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adchina/android/ads/views/AdView;

    iget-boolean v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->S:Z

    if-eqz v2, :cond_12

    :try_start_5
    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ar:Lcom/adchina/android/ads/AdBannerListener;

    invoke-interface {v2, v0}, Lcom/adchina/android/ads/AdBannerListener;->onFailedToRefreshAd(Lcom/adchina/android/ads/views/AdView;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    :try_start_6
    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->ar:Lcom/adchina/android/ads/AdBannerListener;

    invoke-interface {v2, v0}, Lcom/adchina/android/ads/AdBannerListener;->onFailedToReceiveAd(Lcom/adchina/android/ads/views/AdView;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_3

    :catch_5
    move-exception v0

    sget v0, Lcom/adchina/android/ads/AdManager;->c:I

    sput v0, Lcom/adchina/android/ads/AdManager;->e:I

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/controllers/AdViewController;->aj:Z

    return-void
.end method

.class public Ltmsdkobf/id;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final qD:Ljava/lang/Long;

.field private static qE:I

.field private static qF:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Ltmsdkobf/id;->qD:Ljava/lang/Long;

    .line 48
    const/16 v0, 0x1e

    sput v0, Ltmsdkobf/id;->qE:I

    .line 50
    const/4 v0, 0x0

    sput v0, Ltmsdkobf/id;->qF:I

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "flags"
    .parameter "catchCrash"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {}, Ltmsdkobf/id;->cv()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 487
    :cond_0
    return-object v0

    .line 444
    :cond_1
    new-instance v1, Ltmsdkobf/id$5;

    invoke-direct {v1, p0, p1, p2, p3}, Ltmsdkobf/id$5;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)V

    .line 482
    .local v1, task:Ltmsdkobf/kt;,"Ltmsdkobf/kt<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {}, Ltmsdkobf/kq;->fs()Ltmsdkobf/km;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltmsdkobf/kt;->a(Ltmsdkobf/km;)V

    .line 483
    invoke-virtual {v1}, Ltmsdkobf/kt;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 484
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 485
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ltmsdkobf/id;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 1
    .parameter "packageManager"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ltmsdkobf/id;->b(Landroid/content/pm/PackageManager;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageManager;IZ)Ljava/util/List;
    .locals 2
    .parameter "packageManager"
    .parameter "flags"
    .parameter "catchCrash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ltmsdkobf/id$1;

    invoke-direct {v0, p0, p1, p2}, Ltmsdkobf/id$1;-><init>(Landroid/content/pm/PackageManager;IZ)V

    .line 183
    .local v0, task:Ltmsdkobf/kt;,"Ltmsdkobf/kt<Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    invoke-static {}, Ltmsdkobf/kq;->fs()Ltmsdkobf/km;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/kt;->a(Ltmsdkobf/km;)V

    .line 184
    invoke-virtual {v0}, Ltmsdkobf/kt;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/Intent;IZ)Ljava/util/List;
    .locals 2
    .parameter "packageManager"
    .parameter "intent"
    .parameter "flags"
    .parameter "catchCrash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ltmsdkobf/id$3;

    invoke-direct {v0, p0, p1, p2, p3}, Ltmsdkobf/id$3;-><init>(Landroid/content/pm/PackageManager;Landroid/content/Intent;IZ)V

    .line 348
    .local v0, task:Ltmsdkobf/kt;,"Ltmsdkobf/kt<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;>;"
    invoke-static {}, Ltmsdkobf/kq;->fs()Ltmsdkobf/km;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/kt;->a(Ltmsdkobf/km;)V

    .line 349
    invoke-virtual {v0}, Ltmsdkobf/kt;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private static a(ILjava/lang/RuntimeException;)V
    .locals 4
    .parameter "retryCount"
    .parameter "e"

    .prologue
    .line 123
    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    sget v1, Ltmsdkobf/id;->qF:I

    sget v2, Ltmsdkobf/id;->qE:I

    if-le v1, v2, :cond_1

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Ltmsdkobf/id;->qF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/ik;->cQ()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/ik;->cR()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/ik;->cS()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/ik;->bA()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/ik;->cT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/id;->cu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, err:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    .end local v0           #err:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 132
    return-void
.end method

.method public static a(Ljava/lang/RuntimeException;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/ik;->cQ()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/ik;->cR()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/ik;->cS()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/ik;->bA()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/ik;->cT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ltmsdkobf/id;->cu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, err:Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Ltmsdkobf/eu;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    .line 120
    return-void
.end method

.method public static b(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "flags"
    .parameter "catchCrash"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-static {}, Ltmsdkobf/id;->cv()Z

    move-result v2

    if-nez v2, :cond_0

    .line 523
    new-instance v1, Ltmsdkobf/id$6;

    invoke-direct {v1, p0, p1, p2, p3}, Ltmsdkobf/id$6;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)V

    .line 559
    .local v1, task:Ltmsdkobf/kt;,"Ltmsdkobf/kt<Landroid/content/pm/PackageInfo;>;"
    invoke-static {}, Ltmsdkobf/kq;->fs()Ltmsdkobf/km;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltmsdkobf/kt;->a(Ltmsdkobf/km;)V

    .line 560
    invoke-virtual {v1}, Ltmsdkobf/kt;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 561
    .local v0, info:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 562
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 566
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    .end local v1           #task:Ltmsdkobf/kt;,"Ltmsdkobf/kt<Landroid/content/pm/PackageInfo;>;"
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static b(Landroid/content/pm/PackageManager;IZ)Ljava/util/List;
    .locals 2
    .parameter "packageManager"
    .parameter "flags"
    .parameter "catchCrash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ltmsdkobf/id$2;

    invoke-direct {v0, p0, p1, p2}, Ltmsdkobf/id$2;-><init>(Landroid/content/pm/PackageManager;IZ)V

    .line 238
    .local v0, task:Ltmsdkobf/kt;,"Ltmsdkobf/kt<Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    invoke-static {}, Ltmsdkobf/kq;->fs()Ltmsdkobf/km;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/kt;->a(Ltmsdkobf/km;)V

    .line 239
    invoke-virtual {v0}, Ltmsdkobf/kt;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static b(Landroid/content/pm/PackageManager;Landroid/content/Intent;IZ)Ljava/util/List;
    .locals 2
    .parameter "packageManager"
    .parameter "intent"
    .parameter "flags"
    .parameter "catchCrash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Ltmsdkobf/id$4;

    invoke-direct {v0, p0, p1, p2, p3}, Ltmsdkobf/id$4;-><init>(Landroid/content/pm/PackageManager;Landroid/content/Intent;IZ)V

    .line 404
    .local v0, task:Ltmsdkobf/kt;,"Ltmsdkobf/kt<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;>;"
    invoke-static {}, Ltmsdkobf/kq;->fs()Ltmsdkobf/km;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/kt;->a(Ltmsdkobf/km;)V

    .line 405
    invoke-virtual {v0}, Ltmsdkobf/kt;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method static synthetic b(ILjava/lang/RuntimeException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-static {p0, p1}, Ltmsdkobf/id;->a(ILjava/lang/RuntimeException;)V

    return-void
.end method

.method public static cu()Ljava/lang/String;
    .locals 10

    .prologue
    .line 77
    const/4 v5, 0x0

    .line 78
    .local v5, process:Ljava/lang/Process;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v1, builder:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "logcat"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "-d"

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 82
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    const-string v4, ""

    .line 86
    .local v4, line:Ljava/lang/String;
    const/4 v2, 0x0

    .line 87
    .local v2, i:I
    const/4 v3, 0x0

    .line 89
    .local v3, j:I
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/16 v6, 0x14

    if-ge v2, v6, :cond_2

    const/16 v6, 0x2710

    if-ge v3, v6, :cond_2

    .line 90
    const-string v6, "ServiceManager"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_0

    const-string v6, "ProcessKiller"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 92
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 96
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_2
    if-eqz v5, :cond_3

    .line 101
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 104
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #line:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 98
    :catch_0
    move-exception v6

    .line 100
    if-eqz v5, :cond_3

    .line 101
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_4

    .line 101
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_4
    throw v6
.end method

.method private static cv()Z
    .locals 6

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, flag:Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, threadName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 419
    const/4 v0, 0x1

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    if-eqz v1, :cond_0

    const-string v2, "main"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static cw()V
    .locals 13

    .prologue
    .line 571
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 572
    .local v3, context:Landroid/content/Context;
    if-nez v3, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Landroid/app/Application;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 579
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 581
    .local v4, contextWrapper:Ljava/lang/Class;
    if-eqz v4, :cond_0

    .line 583
    :try_start_0
    const-string v11, "mBase"

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 584
    .local v6, fMbase:Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 585
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 586
    .local v10, oMBase:Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 589
    .local v2, clMbase:Ljava/lang/Class;
    const-string v11, "mMainThread"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 590
    .local v8, fd:Ljava/lang/reflect/Field;
    if-eqz v8, :cond_2

    .line 591
    const-string v11, "pms"

    const-string v12, "has mMainThread"

    invoke-static {v11, v12}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 593
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 594
    .local v0, acitvityThread:Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 595
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 596
    .local v1, atcalss:Ljava/lang/Class;
    const-string v11, "sPackageManager"

    invoke-virtual {v1, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 597
    .local v9, fd2:Ljava/lang/reflect/Field;
    if-eqz v9, :cond_2

    .line 598
    const-string v11, "pms"

    const-string v12, "clear sPackageManager"

    invoke-static {v11, v12}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 600
    const/4 v11, 0x0

    invoke-virtual {v9, v0, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 606
    .end local v0           #acitvityThread:Ljava/lang/Object;
    .end local v1           #atcalss:Ljava/lang/Class;
    .end local v9           #fd2:Ljava/lang/reflect/Field;
    :cond_2
    if-eqz v10, :cond_0

    .line 607
    const-string v11, "pms"

    const-string v12, "null != mBase"

    invoke-static {v11, v12}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 609
    const-string v11, "mPackageManager"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 611
    .local v7, fPackageManager:Ljava/lang/reflect/Field;
    if-eqz v7, :cond_0

    .line 612
    const-string v11, "pms"

    const-string v12, "clear packageManager"

    invoke-static {v11, v12}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 614
    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 618
    .end local v2           #clMbase:Ljava/lang/Class;
    .end local v6           #fMbase:Ljava/lang/reflect/Field;
    .end local v7           #fPackageManager:Ljava/lang/reflect/Field;
    .end local v8           #fd:Ljava/lang/reflect/Field;
    .end local v10           #oMBase:Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 619
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic cx()I
    .locals 2

    .prologue
    .line 39
    sget v0, Ltmsdkobf/id;->qF:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Ltmsdkobf/id;->qF:I

    return v0
.end method

.method static synthetic cy()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Ltmsdkobf/id;->cw()V

    return-void
.end method

.method static synthetic cz()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Ltmsdkobf/id;->qD:Ljava/lang/Long;

    return-object v0
.end method

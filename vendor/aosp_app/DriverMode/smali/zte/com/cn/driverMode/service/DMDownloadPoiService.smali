.class public Lzte/com/cn/driverMode/service/DMDownloadPoiService;
.super Landroid/app/Service;


# static fields
.field private static e:Ljava/lang/String;

.field private static o:Ljava/util/ArrayList;


# instance fields
.field protected a:Lzte/com/cn/driverMode/utils/h;

.field private b:Landroid/content/Context;

.field private c:Lzte/com/cn/driverMode/service/ad;

.field private d:Lzte/com/cn/driverMode/service/DMApplication;

.field private f:Lzte/com/cn/driverMode/service/ae;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/Map;

.field private i:[I

.field private j:[J

.field private k:[I

.field private final l:Landroid/os/IBinder;

.field private m:Lzte/com/cn/driverMode/service/ch;

.field private n:Z

.field private p:Lzte/com/cn/driverMode/service/ch;

.field private final q:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x21

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b:Landroid/content/Context;

    iput-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c:Lzte/com/cn/driverMode/service/ad;

    iput-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->g:Ljava/util/ArrayList;

    iput-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->h:Ljava/util/Map;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i:[I

    new-array v0, v2, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->j:[J

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->k:[I

    new-instance v0, Lzte/com/cn/driverMode/service/af;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/af;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->l:Landroid/os/IBinder;

    iput-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->m:Lzte/com/cn/driverMode/service/ch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->n:Z

    iput-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->p:Lzte/com/cn/driverMode/service/ch;

    new-instance v0, Lzte/com/cn/driverMode/service/ab;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/ab;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->q:Landroid/content/BroadcastReceiver;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x24t 0x3t 0x8t 0x7ft
        0x26t 0x3t 0x8t 0x7ft
        0x25t 0x3t 0x8t 0x7ft
        0x27t 0x3t 0x8t 0x7ft
        0x42t 0x3t 0x8t 0x7ft
        0x43t 0x3t 0x8t 0x7ft
        0x34t 0x3t 0x8t 0x7ft
        0x36t 0x3t 0x8t 0x7ft
        0x37t 0x3t 0x8t 0x7ft
        0x2et 0x3t 0x8t 0x7ft
        0x2ft 0x3t 0x8t 0x7ft
        0x45t 0x3t 0x8t 0x7ft
        0x39t 0x3t 0x8t 0x7ft
        0x29t 0x3t 0x8t 0x7ft
        0x28t 0x3t 0x8t 0x7ft
        0x3bt 0x3t 0x8t 0x7ft
        0x2dt 0x3t 0x8t 0x7ft
        0x2ct 0x3t 0x8t 0x7ft
        0x3ct 0x3t 0x8t 0x7ft
        0x32t 0x3t 0x8t 0x7ft
        0x33t 0x3t 0x8t 0x7ft
        0x3dt 0x3t 0x8t 0x7ft
        0x41t 0x3t 0x8t 0x7ft
        0x3et 0x3t 0x8t 0x7ft
        0x3ft 0x3t 0x8t 0x7ft
        0x31t 0x3t 0x8t 0x7ft
        0x2at 0x3t 0x8t 0x7ft
        0x2bt 0x3t 0x8t 0x7ft
        0x30t 0x3t 0x8t 0x7ft
        0x40t 0x3t 0x8t 0x7ft
        0x38t 0x3t 0x8t 0x7ft
        0x44t 0x3t 0x8t 0x7ft
        0x35t 0x3t 0x8t 0x7ft
    .end array-data

    :array_1
    .array-data 0x8
        0xd4t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x42t 0x3bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6bt 0x98t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x16t 0x5dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf2t 0x30t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa4t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x33t 0x89t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6bt 0x84t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x31t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf7t 0x99t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x93t 0x72t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd9t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4bt 0x1at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xb7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x25t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x6et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x91t 0x79t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xaft 0x7at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x5et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x97t 0x61t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x22t 0x76t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xbdt 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x68t 0x7at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x1dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xebt 0x5ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x3at 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1at 0x5ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x67t 0xf7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x13t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x83t 0x8ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa9t 0x13t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x6dt 0x3t 0x8t 0x7ft
        0x6ft 0x3t 0x8t 0x7ft
        0x6et 0x3t 0x8t 0x7ft
        0x70t 0x3t 0x8t 0x7ft
        0x8bt 0x3t 0x8t 0x7ft
        0x8ct 0x3t 0x8t 0x7ft
        0x7dt 0x3t 0x8t 0x7ft
        0x7ft 0x3t 0x8t 0x7ft
        0x80t 0x3t 0x8t 0x7ft
        0x77t 0x3t 0x8t 0x7ft
        0x78t 0x3t 0x8t 0x7ft
        0x8et 0x3t 0x8t 0x7ft
        0x82t 0x3t 0x8t 0x7ft
        0x72t 0x3t 0x8t 0x7ft
        0x71t 0x3t 0x8t 0x7ft
        0x84t 0x3t 0x8t 0x7ft
        0x76t 0x3t 0x8t 0x7ft
        0x75t 0x3t 0x8t 0x7ft
        0x85t 0x3t 0x8t 0x7ft
        0x7bt 0x3t 0x8t 0x7ft
        0x7ct 0x3t 0x8t 0x7ft
        0x86t 0x3t 0x8t 0x7ft
        0x8at 0x3t 0x8t 0x7ft
        0x87t 0x3t 0x8t 0x7ft
        0x88t 0x3t 0x8t 0x7ft
        0x7at 0x3t 0x8t 0x7ft
        0x73t 0x3t 0x8t 0x7ft
        0x74t 0x3t 0x8t 0x7ft
        0x79t 0x3t 0x8t 0x7ft
        0x89t 0x3t 0x8t 0x7ft
        0x81t 0x3t 0x8t 0x7ft
        0x8dt 0x3t 0x8t 0x7ft
        0x7et 0x3t 0x8t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c:Lzte/com/cn/driverMode/service/ad;

    return-object v0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Lzte/com/cn/driverMode/service/ch;)Lzte/com/cn/driverMode/service/ch;
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->m:Lzte/com/cn/driverMode/service/ch;

    return-object p1
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteFile---sdState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DMDownloadPoiService"

    const-string v1, "file.exists()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DMDownloadPoiService"

    const-string v1, "file.isFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMDownloadPoiService"

    const-string v1, "file.isDirectory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;ILzte/com/cn/driverMode/service/ch;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetDownloadInfoByProvince---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "resetDownloadInfoByProvince---size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "DMDownloadPoiService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "resetDownloadInfoByProvince---i="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",last status="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iget v0, v0, Lzte/com/cn/driverMode/service/ag;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iput p2, v0, Lzte/com/cn/driverMode/service/ag;->a:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v0, p1, p2}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;I)V

    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iput-object p3, v0, Lzte/com/cn/driverMode/service/ag;->b:Lzte/com/cn/driverMode/service/ch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Landroid/os/Message;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "province"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalFileSize"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->l(Ljava/lang/String;)I

    move-result v0

    const-string v4, "DMDownloadPoiService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPreparePoiDataDownloadSuccess:curStatus="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    const-string v0, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPreparePoiDataDownloadSuccess:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":download thread be stopped!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v4, 0x0

    invoke-direct {p0, v1, v0, v4}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Ljava/lang/String;ILzte/com/cn/driverMode/service/ch;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lzte/com/cn/driverMode/service/al;

    invoke-direct {v4, p0, v1, v2, v3}, Lzte/com/cn/driverMode/service/al;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;J)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;ILzte/com/cn/driverMode/service/ch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Ljava/lang/String;ILzte/com/cn/driverMode/service/ch;)V

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;J)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSDAvailableSize:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v3, v3, Lzte/com/cn/driverMode/service/DMApplication;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->x:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMApplication;->x:Ljava/lang/String;

    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v3

    :goto_0
    cmp-long v1, v1, p1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->u(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/DMApplication;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    return-object v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ch;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->m:Lzte/com/cn/driverMode/service/ch;

    return-object v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V
    .locals 4

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "redownloadForUpdatePoiData---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b:Landroid/content/Context;

    const v2, 0x7f0803f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_POI.zcf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->t(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v3, v0}, Lzte/com/cn/driverMode/utils/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f:Lzte/com/cn/driverMode/service/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f:Lzte/com/cn/driverMode/service/ae;

    invoke-interface {v0, p1, v1, v2}, Lzte/com/cn/driverMode/service/ae;->c(Ljava/lang/String;J)V

    :cond_1
    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkAndStartNextWaitingTask---nextWaitingProvince="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DMDownloadPoiService"

    const-string v2, "checkAndStartNextWaitingTask---no province is downloading..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->p(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->n:Z

    return v0
.end method

.method static synthetic f(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->v(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/driverMode/service/ao;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzte/com/cn/driverMode/service/ao;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic g(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/driverMode/service/ac;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/service/ac;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic h(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->n:Z

    return v0
.end method

.method static synthetic i(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ae;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f:Lzte/com/cn/driverMode/service/ae;

    return-object v0
.end method

.method static synthetic j(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->h:Ljava/util/Map;

    return-object v0
.end method

.method public static l(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    const-string v0, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurProvinceDownloadStatus---province="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v0, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getCurProvinceDownloadStatus---size="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iget v0, v0, Lzte/com/cn/driverMode/service/ag;->a:I

    const-string v1, "DMDownloadPoiService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCurProvinceDownloadStatus---i="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic l(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Ljava/util/ArrayList;
    .locals 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->h:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->k:[I

    array-length v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_POI.zcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "DMDownloadPoiService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getExistProvinceList---province="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",DEFAULT_PROVINCE_SIZE_GROUP[i]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->j:[J

    aget-wide v6, v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->h:Ljava/util/Map;

    iget-object v5, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->j:[J

    aget-wide v5, v5, v0

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic m(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)[I
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i:[I

    return-object v0
.end method

.method private static n(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const-string v0, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAlreadyExistInTasklist---province="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v0, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isAlreadyExistInTasklist---size="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAlreadyExistInTasklist---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private declared-synchronized o(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getNextWaitingOneByProvince---size="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "DMDownloadPoiService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getNextWaitingOneByProvince---mDownloadTaskList.size()="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iget v0, v0, Lzte/com/cn/driverMode/service/ag;->a:I

    :goto_1
    const-string v6, "DMDownloadPoiService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getNextWaitingOneByProvince---curProvince="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    move-object v0, v1

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method private p(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startPrepareDownloadPoiThread---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Ljava/lang/String;ILzte/com/cn/driverMode/service/ch;)V

    invoke-virtual {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/driverMode/service/aa;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/driverMode/service/aa;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->q(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "continueDownloadWithoutUpdate---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/driverMode/service/an;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/driverMode/service/an;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private r(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i:[I

    array-length v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_4

    iget-object v4, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i:[I

    aget v4, v4, v2

    invoke-virtual {p0, v4}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->k:[I

    aget v2, v3, v2

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v0, v1

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_3

    if-nez v0, :cond_2

    aget-char v3, v2, v1

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v2, v1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    aget-char v3, v2, v0

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v2, v0

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method private static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_POI.zcf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private t(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/utils/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private u(Ljava/lang/String;)Z
    .locals 13

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_POI.zcf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isUpdatedPoiDataExist...downloadUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Accept"

    const-string v3, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    const-string v3, "zh-CN"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Referer"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    const-string v2, "DMDownloadPoiService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getResponseCode()="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v0, v4}, Lzte/com/cn/driverMode/utils/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "DMDownloadPoiService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "getLastMoidfiedTimeFromDB---downloadUrl="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",lastModifiedTimeString="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    const-wide/16 v2, 0x0

    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v4, v8, v9, v10}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "DMDownloadPoiService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "isUpdatedPoiDataExist...lastModifiedTime="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ",savedModifiedTime="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ",totalFileSize="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",province="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-lez v0, :cond_5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->k(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->v(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v4, v10, v11, v12}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "DMDownloadPoiService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "isUpdatedPoiDataExist---localFileSize="

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ",serverFileSize="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ",savedModifiedTime="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ",province="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-nez v0, :cond_1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "DMDownloadPoiService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isUpdatedPoiDataExist---Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method

.method private v(Ljava/lang/String;)J
    .locals 7

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "DMDownloadPoiService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getLocalPoiFileSize---fileName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->a(Lzte/com/cn/driverMode/service/DMApplication;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "DMDownloadPoiService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getLocalPoiFileSize---path="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    const-string v3, "DMDownloadPoiService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getLocalPoiFileSize---s="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f:Lzte/com/cn/driverMode/service/ae;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x4

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadPoiData---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lzte/com/cn/driverMode/service/ag;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzte/com/cn/driverMode/service/ag;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;B)V

    iput v3, v1, Lzte/com/cn/driverMode/service/ag;->a:I

    const/4 v2, 0x0

    iput-object v2, v1, Lzte/com/cn/driverMode/service/ag;->b:Lzte/com/cn/driverMode/service/ch;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v0, p1, v3}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DMDownloadPoiService"

    const-string v1, "downloadPoiData---no province is downloading..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->p(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final a(Lzte/com/cn/driverMode/service/ae;)V
    .locals 3

    const-string v0, "DMDownloadPoiService"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f:Lzte/com/cn/driverMode/service/ae;

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/driverMode/service/ai;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzte/com/cn/driverMode/service/ai;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;B)V

    const-string v2, "ConfigThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-static {p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetPoiData, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exist!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Ljava/lang/String;ILzte/com/cn/driverMode/service/ch;)V

    sget-object v1, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v1, "DMDownloadPoiService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resetPoiData---size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ag;->b:Lzte/com/cn/driverMode/service/ch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ch;->d()V

    :cond_0
    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteSdcardFile---fileName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->a(Lzte/com/cn/driverMode/service/DMApplication;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Ljava/io/File;)V

    :goto_2
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/utils/h;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Ljava/io/File;)V

    goto :goto_2
.end method

.method public final declared-synchronized b()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v0, "DMDownloadPoiService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "hasPoiDownloading---size="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iget v0, v0, Lzte/com/cn/driverMode/service/ag;->a:I

    const-string v6, "DMDownloadPoiService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "hasPoiDownloading---province="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",status="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    :cond_0
    move v0, v1

    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final c()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->m:Lzte/com/cn/driverMode/service/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->m:Lzte/com/cn/driverMode/service/ch;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ch;->c()V

    :cond_0
    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iget v5, v0, Lzte/com/cn/driverMode/service/ag;->a:I

    const-string v0, "DMDownloadPoiService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pauseAllTask---province="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-lez v5, :cond_4

    const/4 v0, 0x6

    if-ge v5, v0, :cond_4

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    const/4 v6, 0x3

    iput v6, v0, Lzte/com/cn/driverMode/service/ag;->a:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v0, v4, v5}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;I)V

    :cond_3
    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ag;->b:Lzte/com/cn/driverMode/service/ch;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ch;->c()V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "continueDownload---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    :cond_0
    invoke-static {p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v3, v4}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Ljava/lang/String;ILzte/com/cn/driverMode/service/ch;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DMDownloadPoiService"

    const-string v1, "continueDownload---no province is downloading..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->p(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lzte/com/cn/driverMode/service/ag;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzte/com/cn/driverMode/service/ag;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;B)V

    iput v3, v1, Lzte/com/cn/driverMode/service/ag;->a:I

    iput-object v4, v1, Lzte/com/cn/driverMode/service/ag;->b:Lzte/com/cn/driverMode/service/ch;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v0, p1, v3}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    const-string v0, "DMDownloadPoiService"

    const-string v1, "startCheckIfUpdateExist---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->n:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c:Lzte/com/cn/driverMode/service/ad;

    if-nez v0, :cond_0

    new-instance v0, Lzte/com/cn/driverMode/service/ad;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/ad;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c:Lzte/com/cn/driverMode/service/ad;

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/driverMode/service/ai;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzte/com/cn/driverMode/service/ai;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;B)V

    const-string v2, "ConfigThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pauseDownload---province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startPauseDownloadPoiDataThread, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exist!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Ljava/lang/String;ILzte/com/cn/driverMode/service/ch;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/driverMode/service/ak;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/driverMode/service/ak;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "DMDownloadPoiService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isPoiFileExistInLocal---fileName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->a(Lzte/com/cn/driverMode/service/DMApplication;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "DMDownloadPoiService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isPoiFileExistInLocal---path="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_POI.zcf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v3, v2}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "DMDownloadPoiService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isPoiDownloadRecordExistInDB---province="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",logdata.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isPoiFileDownloading---province="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v1, p1}, Lzte/com/cn/driverMode/utils/h;->f(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v1, p1}, Lzte/com/cn/driverMode/utils/h;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "DMDownloadPoiService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isPoiFileExistInLocal---tmpFileName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->a(Lzte/com/cn/driverMode/service/DMApplication;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "DMDownloadPoiService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isPoiFileExistInLocal---path="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)J
    .locals 10

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_POI.zcf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPoiDownloadPercent---downloadUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v0, v7}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPoiDownloadPercent---province="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",logdata.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v2, v8

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0, v7}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->t(Ljava/lang/String;)J

    move-result-wide v0

    const-string v6, "DMDownloadPoiService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getPoiDownloadPercent---province="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",savedFileSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    :goto_2
    const-string v6, "DMDownloadPoiService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getPoiDownloadPercent---downloadSize="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",totalSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    div-long v4, v2, v0

    :cond_2
    return-wide v4

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/driverMode/service/ah;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/driverMode/service/ah;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final k(Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v0, p1}, Lzte/com/cn/driverMode/utils/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSavedMoidfiedTimeFromDB---downloadUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",savedModifiedTimeString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->l:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "DMDownloadPoiService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ThreadNume :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| BufferSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c:Lzte/com/cn/driverMode/service/ad;

    if-nez v0, :cond_0

    new-instance v0, Lzte/com/cn/driverMode/service/ad;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/ad;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c:Lzte/com/cn/driverMode/service/ad;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b:Landroid/content/Context;

    invoke-static {v0}, Lzte/com/cn/driverMode/utils/h;->a(Landroid/content/Context;)Lzte/com/cn/driverMode/utils/h;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/utils/h;->b()V

    :cond_1
    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DMDownloadPoiService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c:Lzte/com/cn/driverMode/service/ad;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c:Lzte/com/cn/driverMode/service/ad;

    :cond_0
    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput-object v2, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->o:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->q:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

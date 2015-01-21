.class public Ltmsdk/fg/module/qscanner/AmScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VERSION:I = 0x3


# instance fields
.field private wL:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v1, "virus_scan_libname"

    invoke-static {v1}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, libraryname:Ljava/lang/String;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ltmsdkobf/kc;->g(Landroid/content/Context;Ljava/lang/String;)Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "amfFile"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/fg/module/qscanner/AmScanner;->wL:I

    .line 41
    invoke-static {p1, p2}, Ltmsdk/fg/module/qscanner/AmScanner;->newObject(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltmsdk/fg/module/qscanner/AmScanner;->wL:I

    .line 42
    iget v0, p0, Ltmsdk/fg/module/qscanner/AmScanner;->wL:I

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 45
    :cond_0
    iget v0, p0, Ltmsdk/fg/module/qscanner/AmScanner;->wL:I

    invoke-static {v0}, Ltmsdk/fg/module/qscanner/AmScanner;->initScanner(I)I

    .line 46
    return-void
.end method

.method private static native deleteObject(I)V
.end method

.method private static native initScanner(I)I
.end method

.method public static loadAmfHeader(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/ck;
    .locals 5
    .parameter "context"
    .parameter "amfFile"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    new-instance v2, Ltmsdkobf/cw;

    invoke-direct {v2}, Ltmsdkobf/cw;-><init>()V

    .line 104
    .local v2, uniAttribute:Ltmsdkobf/cw;
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ltmsdkobf/cw;->an(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Ltmsdkobf/cw;->G()V

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 108
    .local v0, clientDataRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    invoke-static {p0, p1, v0}, Ltmsdk/fg/module/qscanner/AmScanner;->nativeLoadAmfHeaderBytes(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 110
    .local v1, resultData:[B
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v2, v1}, Ltmsdkobf/cw;->b([B)V

    .line 112
    const-string v3, "vci"

    new-instance v4, Ltmsdkobf/ck;

    invoke-direct {v4}, Ltmsdkobf/ck;-><init>()V

    invoke-virtual {v2, v3, v4}, Ltmsdkobf/cw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltmsdkobf/ck;

    .line 116
    .end local v0           #clientDataRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    .end local v1           #resultData:[B
    .end local v2           #uniAttribute:Ltmsdkobf/cw;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static native nativeLoadAmfHeaderBytes(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation
.end method

.method private static native nativeUpdateMalwareInfoBytes(Landroid/content/Context;Ljava/lang/String;[B[B)I
.end method

.method private static native newObject(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method private static native scanApkBytes(I[BLjava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation
.end method

.method public static updateBase(Landroid/content/Context;Ljava/lang/String;Ltmsdkobf/cn;Ljava/util/List;)I
    .locals 4
    .parameter "context"
    .parameter "amfFile"
    .parameter "virusServerInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ltmsdkobf/cn;",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/cm;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 128
    .local p3, virusInfoList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/cm;>;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 129
    :cond_0
    const/4 v3, -0x6

    .line 142
    :goto_0
    return v3

    .line 132
    :cond_1
    new-instance v1, Ltmsdkobf/cw;

    invoke-direct {v1}, Ltmsdkobf/cw;-><init>()V

    .line 133
    .local v1, uniAttribute:Ltmsdkobf/cw;
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ltmsdkobf/cw;->an(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ltmsdkobf/cw;->G()V

    .line 135
    const-string v3, "vsi"

    invoke-virtual {v1, v3, p2}, Ltmsdkobf/cw;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v1}, Ltmsdkobf/cw;->F()[B

    move-result-object v0

    .line 138
    .local v0, serverInfoData:[B
    invoke-virtual {v1}, Ltmsdkobf/cw;->E()V

    .line 139
    const-string v3, "vil"

    invoke-virtual {v1, v3, p3}, Ltmsdkobf/cw;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v1}, Ltmsdkobf/cw;->F()[B

    move-result-object v2

    .line 142
    .local v2, virusInfoData:[B
    invoke-static {p0, p1, v0, v2}, Ltmsdk/fg/module/qscanner/AmScanner;->nativeUpdateMalwareInfoBytes(Landroid/content/Context;Ljava/lang/String;[B[B)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ltmsdk/fg/module/qscanner/AmScanner;->wL:I

    if-eqz v0, :cond_0

    .line 54
    iget v0, p0, Ltmsdk/fg/module/qscanner/AmScanner;->wL:I

    invoke-static {v0}, Ltmsdk/fg/module/qscanner/AmScanner;->deleteObject(I)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/fg/module/qscanner/AmScanner;->wL:I

    .line 57
    :cond_0
    return-void
.end method

.method public scanApk(Ltmsdk/fg/module/qscanner/ApkKey;)Ltmsdk/fg/module/qscanner/QScanResult;
    .locals 8
    .parameter "apkKey"

    .prologue
    const/4 v1, 0x0

    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string v5, "AmScanner"

    const-string v6, "null argument"

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    :goto_0
    return-object v1

    .line 70
    :cond_0
    new-instance v4, Ltmsdkobf/cw;

    invoke-direct {v4}, Ltmsdkobf/cw;-><init>()V

    .line 71
    .local v4, uniAttribute:Ltmsdkobf/cw;
    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ltmsdkobf/cw;->an(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v4}, Ltmsdkobf/cw;->G()V

    .line 73
    const-string v5, "ak"

    invoke-virtual {v4, v5, p1}, Ltmsdkobf/cw;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 76
    .local v3, resultDataRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<[B>;"
    iget v5, p0, Ltmsdk/fg/module/qscanner/AmScanner;->wL:I

    invoke-virtual {v4}, Ltmsdkobf/cw;->F()[B

    move-result-object v6

    invoke-static {v5, v6, v3}, Ltmsdk/fg/module/qscanner/AmScanner;->scanApkBytes(I[BLjava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    .line 77
    .local v0, err:I
    if-eqz v0, :cond_1

    .line 78
    const-string v5, "AmScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scanApkBytes() returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 83
    .local v2, resultData:[B
    if-nez v2, :cond_2

    .line 84
    const-string v5, "AmScanner"

    const-string v6, "null result data"

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v4}, Ltmsdkobf/cw;->E()V

    .line 89
    invoke-virtual {v4, v2}, Ltmsdkobf/cw;->b([B)V

    .line 90
    const-string v5, "qsr"

    new-instance v6, Ltmsdk/fg/module/qscanner/QScanResult;

    invoke-direct {v6}, Ltmsdk/fg/module/qscanner/QScanResult;-><init>()V

    invoke-virtual {v4, v5, v6}, Ltmsdkobf/cw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/fg/module/qscanner/QScanResult;

    .line 91
    .local v1, qsr:Ltmsdk/fg/module/qscanner/QScanResult;
    goto :goto_0
.end method

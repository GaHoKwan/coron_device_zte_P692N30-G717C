.class public Lcom/android/defcontainer/DefaultContainerService;
.super Landroid/app/IntentService;
.source "DefaultContainerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/defcontainer/DefaultContainerService$ApkContainer;
    }
.end annotation


# static fields
.field private static final LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final PREFER_EXTERNAL:I = 0x2

.field private static final PREFER_INTERNAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefContainer"

.field private static final localLOGV:Z = true


# instance fields
.field private mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 290
    const-string v0, "DefaultContainerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/android/defcontainer/DefaultContainerService$1;

    invoke-direct {v0, p0}, Lcom/android/defcontainer/DefaultContainerService$1;-><init>(Lcom/android/defcontainer/DefaultContainerService;)V

    iput-object v0, p0, Lcom/android/defcontainer/DefaultContainerService;->mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;

    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p7}, Lcom/android/defcontainer/DefaultContainerService;->copyResourceInner(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/io/OutputStream;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/defcontainer/DefaultContainerService;->copyFile(Landroid/net/Uri;Ljava/io/OutputStream;Landroid/content/pm/ContainerEncryptionParams;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/defcontainer/DefaultContainerService;ILjava/lang/String;IJ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p5}, Lcom/android/defcontainer/DefaultContainerService;->recommendAppInstallLocation(ILjava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;ZJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/defcontainer/DefaultContainerService;->isUnderInternalThreshold(Ljava/io/File;ZJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/defcontainer/DefaultContainerService;->isUnderExternalThreshold(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/defcontainer/DefaultContainerService;->calculateContainerSize(Ljava/io/File;Z)I

    move-result v0

    return v0
.end method

.method private calculateContainerSize(Ljava/io/File;Z)I
    .locals 7
    .parameter "apkFile"
    .parameter "forwardLocked"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 876
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 877
    .local v0, sizeBytes:J
    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 878
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    .line 883
    :cond_0
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesLI(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 885
    if-eqz p2, :cond_1

    .line 886
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/content/PackageHelper;->extractPublicFiles(Ljava/lang/String;Ljava/io/File;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 889
    :cond_1
    const/16 v3, 0x14

    shr-long v3, v0, v3

    long-to-int v2, v3

    .line 890
    .local v2, sizeMb:I
    mul-int/lit16 v3, v2, 0x400

    mul-int/lit16 v3, v3, 0x400

    int-to-long v3, v3

    sub-long v3, v0, v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 891
    add-int/lit8 v2, v2, 0x1

    .line 899
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 901
    return v2
.end method

.method private copyFile(Landroid/net/Uri;Ljava/io/OutputStream;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 10
    .parameter "pPackageURI"
    .parameter "outStream"
    .parameter "encryptionParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 464
    .local v6, scheme:Ljava/lang/String;
    const/4 v3, 0x0

    .line 466
    .local v3, inStream:Ljava/io/InputStream;
    if-eqz v6, :cond_0

    :try_start_0
    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 467
    :cond_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 468
    .local v5, is:Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3           #inStream:Ljava/io/InputStream;
    .local v4, inStream:Ljava/io/InputStream;
    move-object v3, v4

    .line 498
    .end local v4           #inStream:Ljava/io/InputStream;
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v3       #inStream:Ljava/io/InputStream;
    :goto_0
    new-instance v0, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;

    invoke-direct {v0, v3, p3}, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;-><init>(Ljava/io/InputStream;Landroid/content/pm/ContainerEncryptionParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .local v0, container:Lcom/android/defcontainer/DefaultContainerService$ApkContainer;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/android/defcontainer/DefaultContainerService;->copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 509
    invoke-virtual {v0}, Lcom/android/defcontainer/DefaultContainerService$ApkContainer;->isAuthenticated()Z

    move-result v7

    if-nez v7, :cond_4

    .line 510
    new-instance v7, Ljava/security/DigestException;

    invoke-direct {v7}, Ljava/security/DigestException;-><init>()V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, e:Ljava/security/GeneralSecurityException;
    :try_start_2
    new-instance v7, Ljava/security/DigestException;

    const-string v8, "A problem occured copying the file."

    invoke-direct {v7, v8}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 516
    .end local v0           #container:Lcom/android/defcontainer/DefaultContainerService$ApkContainer;
    .end local v1           #e:Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    .line 469
    :cond_1
    :try_start_3
    const-string v7, "content"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 472
    :try_start_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    .line 479
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_2

    .line 480
    :try_start_5
    const-string v7, "DefContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Provider returned no file descriptor for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v7, Ljava/io/FileNotFoundException;

    const-string v8, "provider returned no file descriptor"

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 473
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    .line 474
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v7, "DefContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open file descriptor from download service. Failed with exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    throw v1

    .line 485
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_2
    const-string v7, "DefContainer"

    const-string v8, "Opened file descriptor from download service."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v4       #inStream:Ljava/io/InputStream;
    move-object v3, v4

    .line 489
    .end local v4           #inStream:Ljava/io/InputStream;
    .restart local v3       #inStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 490
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const-string v7, "DefContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package URI is not \'file:\' or \'content:\' - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v7, Ljava/io/FileNotFoundException;

    const-string v8, "Package URI is not \'file:\' or \'content:\'"

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 516
    .restart local v0       #container:Lcom/android/defcontainer/DefaultContainerService$ApkContainer;
    :cond_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 518
    return-void
.end method

.method private copyResourceInner(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 16
    .parameter "packageURI"
    .parameter "newCid"
    .parameter "key"
    .parameter "resFileName"
    .parameter "publicResFileName"
    .parameter "isExternal"
    .parameter "isForwardLocked"

    .prologue
    .line 333
    if-eqz p6, :cond_0

    .line 335
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 336
    .local v12, status:Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 337
    const-string v13, "DefContainer"

    const-string v14, "Make sure sdcard is mounted."

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v6, 0x0

    .line 449
    .end local v12           #status:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 343
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, codePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, codeFile:Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v3, v1}, Lcom/android/defcontainer/DefaultContainerService;->calculateContainerSize(Ljava/io/File;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 356
    .local v11, sizeMb:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p6

    invoke-static {v11, v0, v1, v13, v2}, Lcom/android/internal/content/PackageHelper;->createSdDir(ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, newCachePath:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 359
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to create container "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v6, 0x0

    goto :goto_0

    .line 350
    .end local v6           #newCachePath:Ljava/lang/String;
    .end local v11           #sizeMb:I
    :catch_0
    move-exception v5

    .line 351
    .local v5, e:Ljava/io/IOException;
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Problem when trying to copy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v6, 0x0

    goto :goto_0

    .line 364
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #newCachePath:Ljava/lang/String;
    .restart local v11       #sizeMb:I
    :cond_1
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Created container for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at path : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v8, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .local v8, resFile:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v8}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 370
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Copied "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :try_start_1
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1a0

    invoke-interface {v13, v14, v15}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    if-eqz p7, :cond_2

    .line 388
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v7, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v7, publicZipFile:Ljava/io/File;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/android/internal/content/PackageHelper;->extractPublicFiles(Ljava/lang/String;Ljava/io/File;)I

    .line 392
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Copied resources to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 402
    :try_start_3
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1a4

    invoke-interface {v13, v14, v15}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_3} :catch_3

    .line 410
    .end local v7           #publicZipFile:Ljava/io/File;
    :cond_2
    new-instance v10, Ljava/io/File;

    const-string v13, "lib"

    invoke-direct {v10, v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .local v10, sharedLibraryDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 412
    invoke-static {v3, v10}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesIfNeededLI(Ljava/io/File;Ljava/io/File;)I

    move-result v9

    .line 413
    .local v9, ret:I
    const/4 v13, 0x1

    if-eq v9, v13, :cond_5

    .line 414
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not copy native libraries to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 416
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 373
    .end local v9           #ret:I
    .end local v10           #sharedLibraryDir:Ljava/io/File;
    :cond_3
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to copy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 376
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 381
    :catch_1
    move-exception v5

    .line 382
    .local v5, e:Llibcore/io/ErrnoException;
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not chown APK: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 384
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 394
    .end local v5           #e:Llibcore/io/ErrnoException;
    .restart local v7       #publicZipFile:Ljava/io/File;
    :catch_2
    move-exception v5

    .line 395
    .local v5, e:Ljava/io/IOException;
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not chown public APK "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 398
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 403
    .end local v5           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 404
    .local v5, e:Llibcore/io/ErrnoException;
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not chown public resource file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 406
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 419
    .end local v5           #e:Llibcore/io/ErrnoException;
    .end local v7           #publicZipFile:Ljava/io/File;
    .restart local v10       #sharedLibraryDir:Ljava/io/File;
    :cond_4
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not create native lib directory: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 421
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 424
    .restart local v9       #ret:I
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->finalizeSdDir(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 425
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to finalize "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 428
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 432
    :cond_6
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Finalized container "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 437
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unmounting "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->gc()V

    .line 442
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 445
    :cond_7
    const-string v13, "DefContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Container "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not mounted"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "inputStream"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    const/16 v2, 0x4000

    new-array v0, v2, [B

    .line 455
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_0

    .line 456
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 458
    :cond_0
    return-void
.end method

.method private isSDExistWhenSwap()Z
    .locals 4

    .prologue
    .line 664
    const-class v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getSdSwapState"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isUnderExternalThreshold(Ljava/io/File;Z)Z
    .locals 7
    .parameter "apkFile"
    .parameter "isForwardLocked"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 849
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 864
    :cond_0
    :goto_0
    return v4

    .line 853
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/defcontainer/DefaultContainerService;->calculateContainerSize(Ljava/io/File;Z)I

    move-result v3

    .line 856
    .local v3, sizeMb:I
    const-string v5, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 857
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 858
    .local v2, sdStats:Landroid/os/StatFs;
    const/high16 v5, 0x10

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    div-int v1, v5, v6

    .line 859
    .local v1, blocksToMb:I
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    mul-int v0, v5, v1

    .line 864
    .end local v1           #blocksToMb:I
    .end local v2           #sdStats:Landroid/os/StatFs;
    .local v0, availSdMb:I
    :goto_1
    if-le v0, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 861
    .end local v0           #availSdMb:I
    :cond_2
    const/4 v0, -0x1

    .restart local v0       #availSdMb:I
    goto :goto_1
.end method

.method private isUnderInternalThreshold(Ljava/io/File;ZJ)Z
    .locals 9
    .parameter "apkFile"
    .parameter "isForwardLocked"
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 824
    .local v3, size:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 825
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5

    .line 828
    :cond_0
    if-eqz p2, :cond_1

    .line 829
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/content/PackageHelper;->extractPublicFiles(Ljava/lang/String;Ljava/io/File;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 832
    :cond_1
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 833
    .local v2, internalStats:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 836
    .local v0, availInternalSize:J
    sub-long v5, v0, v3

    cmp-long v5, v5, p3

    if-lez v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private recommendAppInstallLocation(ILjava/lang/String;IJ)I
    .locals 14
    .parameter "installLocation"
    .parameter "archiveFilePath"
    .parameter "flags"
    .parameter "threshold"

    .prologue
    .line 674
    const/4 v3, 0x0

    .line 676
    .local v3, checkBoth:Z
    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_4

    const/4 v9, 0x1

    .line 682
    .local v9, isForwardLocked:Z
    :goto_0
    and-int/lit8 v11, p3, 0x10

    if-eqz v11, :cond_5

    .line 683
    const/4 v10, 0x1

    .line 753
    .local v10, prefer:I
    :goto_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    .line 755
    .local v5, emulated:Z
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 757
    .local v2, apkFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 758
    .local v6, fitsOnInternal:Z
    if-nez v3, :cond_0

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 760
    :cond_0
    :try_start_0
    move-wide/from16 v0, p4

    invoke-direct {p0, v2, v9, v0, v1}, Lcom/android/defcontainer/DefaultContainerService;->isUnderInternalThreshold(Ljava/io/File;ZJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 766
    :cond_1
    const/4 v7, 0x0

    .line 767
    .local v7, fitsOnSd:Z
    if-nez v5, :cond_3

    if-nez v3, :cond_2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 769
    :cond_2
    :try_start_1
    invoke-direct {p0, v2, v9}, Lcom/android/defcontainer/DefaultContainerService;->isUnderExternalThreshold(Ljava/io/File;Z)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 782
    :cond_3
    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    .line 783
    if-eqz v6, :cond_d

    .line 784
    const/4 v11, 0x1

    .line 809
    .end local v7           #fitsOnSd:Z
    :goto_2
    return v11

    .line 676
    .end local v2           #apkFile:Ljava/io/File;
    .end local v5           #emulated:Z
    .end local v6           #fitsOnInternal:Z
    .end local v9           #isForwardLocked:Z
    .end local v10           #prefer:I
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 685
    .restart local v9       #isForwardLocked:Z
    :cond_5
    and-int/lit8 v11, p3, 0x8

    if-eqz v11, :cond_6

    .line 686
    const/4 v10, 0x2

    .line 687
    .restart local v10       #prefer:I
    goto :goto_1

    .line 691
    .end local v10           #prefer:I
    :cond_6
    const/4 v11, 0x1

    if-ne p1, v11, :cond_7

    .line 692
    const/4 v10, 0x1

    .line 693
    .restart local v10       #prefer:I
    goto :goto_1

    .line 694
    .end local v10           #prefer:I
    :cond_7
    const/4 v11, 0x2

    if-ne p1, v11, :cond_8

    .line 695
    const/4 v10, 0x2

    .line 696
    .restart local v10       #prefer:I
    const/4 v3, 0x1

    .line 697
    goto :goto_1

    .line 698
    .end local v10           #prefer:I
    :cond_8
    if-nez p1, :cond_9

    .line 700
    const/4 v10, 0x1

    .line 714
    .restart local v10       #prefer:I
    const/4 v3, 0x1

    .line 715
    goto :goto_1

    .line 719
    .end local v10           #prefer:I
    :cond_9
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "default_install_location"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 723
    .local v8, installPreference:I
    const/4 v11, 0x1

    if-ne v8, v11, :cond_a

    .line 724
    const/4 v10, 0x1

    .line 725
    .restart local v10       #prefer:I
    goto :goto_1

    .line 726
    .end local v10           #prefer:I
    :cond_a
    const/4 v11, 0x2

    if-ne v8, v11, :cond_b

    .line 727
    const/4 v10, 0x2

    .line 728
    .restart local v10       #prefer:I
    goto :goto_1

    .line 735
    .end local v10           #prefer:I
    :cond_b
    const/4 v10, 0x1

    .restart local v10       #prefer:I
    goto :goto_1

    .line 761
    .end local v8           #installPreference:I
    .restart local v2       #apkFile:Ljava/io/File;
    .restart local v5       #emulated:Z
    .restart local v6       #fitsOnInternal:Z
    :catch_0
    move-exception v4

    .line 762
    .local v4, e:Ljava/io/IOException;
    const/4 v11, -0x6

    goto :goto_2

    .line 777
    .end local v4           #e:Ljava/io/IOException;
    .restart local v7       #fitsOnSd:Z
    :catch_1
    move-exception v4

    .line 778
    .restart local v4       #e:Ljava/io/IOException;
    const/4 v11, -0x6

    goto :goto_2

    .line 786
    .end local v4           #e:Ljava/io/IOException;
    :cond_c
    if-nez v5, :cond_d

    const/4 v11, 0x2

    if-ne v10, v11, :cond_d

    .line 787
    if-eqz v7, :cond_d

    .line 788
    const/4 v11, 0x2

    goto :goto_2

    .line 792
    :cond_d
    if-eqz v3, :cond_f

    .line 793
    if-eqz v6, :cond_e

    .line 794
    const/4 v11, 0x1

    goto :goto_2

    .line 795
    :cond_e
    if-nez v5, :cond_f

    if-eqz v7, :cond_f

    .line 796
    const/4 v11, 0x2

    goto :goto_2

    .line 805
    :cond_f
    if-nez v5, :cond_11

    if-nez v3, :cond_10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_11

    :cond_10
    const-string v11, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 807
    const/4 v11, -0x5

    goto :goto_2

    .line 809
    :cond_11
    const/4 v11, -0x1

    goto :goto_2
.end method


# virtual methods
.method eraseFiles(Ljava/io/File;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 315
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, files:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 318
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 319
    .local v1, file:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #files:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 324
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService;->mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 296
    const-string v3, "android.content.pm.CLEAN_EXTERNAL_STORAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 299
    .local v1, pm:Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .line 301
    .local v0, item:Landroid/content/pm/PackageCleanItem;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    new-instance v2, Landroid/os/Environment$UserEnvironment;

    iget v3, v0, Landroid/content/pm/PackageCleanItem;->userId:I

    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 303
    .local v2, userEnv:Landroid/os/Environment$UserEnvironment;
    iget-object v3, v0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Environment$UserEnvironment;->getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 304
    iget-object v3, v0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Environment$UserEnvironment;->getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 305
    iget-boolean v3, v0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, v0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Environment$UserEnvironment;->getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    .end local v2           #userEnv:Landroid/os/Environment$UserEnvironment;
    :catch_0
    move-exception v3

    .line 312
    .end local v0           #item:Landroid/content/pm/PackageCleanItem;
    .end local v1           #pm:Landroid/content/pm/IPackageManager;
    :cond_1
    return-void
.end method

.class public Lcom/zte/heartyservice/main/SystemContentProvider;
.super Landroid/content/ContentProvider;
.source "SystemContentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 42
    const/16 v0, 0xa

    .local v0, n:I
    :goto_0
    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 43
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->reset(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppDownloadInfoSQLiteOpenHelper()Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;->deleteRecords([Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x0

    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 34
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 54
    const/4 v8, 0x0

    .line 55
    .local v8, cur:Landroid/database/MatrixCursor;
    if-eqz p3, :cond_2

    .line 56
    const-string v28, "p"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 57
    new-instance v8, Landroid/database/MatrixCursor;

    .end local v8           #cur:Landroid/database/MatrixCursor;
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "pN"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "vN"

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 59
    .restart local v8       #cur:Landroid/database/MatrixCursor;
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v28, 0x0

    const-string v30, "p2"

    aput-object v30, v29, v28

    const/16 v30, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    new-instance v31, Ljava/lang/String;

    const-string v32, "Z2V0TW5hbWU="

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/String;-><init>([B)V

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    aput-object v28, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 61
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p3"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getVirusDBEngineName()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 63
    const/16 v27, 0x33

    .line 65
    .local v27, version:I
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageName()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v27, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 70
    :goto_0
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p4"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 72
    const-wide/16 v17, 0x0

    .line 74
    .local v17, mask:J
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getMask()J

    move-result-wide v17

    .line 76
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p5"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 78
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p6"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    const-string v31, "i6"

    invoke-virtual/range {v30 .. v31}, Lcom/zte/heartyservice/main/HeartyServiceApp;->find(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 80
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p7"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    const-string v31, "i7"

    invoke-virtual/range {v30 .. v31}, Lcom/zte/heartyservice/main/HeartyServiceApp;->find(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 82
    const/16 v19, 0xa

    .local v19, n:I
    :goto_1
    const/16 v28, 0x20

    move/from16 v0, v19

    move/from16 v1, v28

    if-gt v0, v1, :cond_0

    .line 83
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "p"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 84
    .local v20, pN:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "i"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, iN:Ljava/lang/String;
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v20, v28, v29

    const/16 v29, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->find(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 82
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 88
    .end local v11           #iN:Ljava/lang/String;
    .end local v20           #pN:Ljava/lang/String;
    :cond_0
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p50"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 90
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p51"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    sget-object v30, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 92
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v28, 0x0

    const-string v30, "p53"

    aput-object v30, v29, v28

    const/16 v30, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    new-instance v31, Ljava/lang/String;

    const-string v32, "dGVzdA=="

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/String;-><init>([B)V

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    aput-object v28, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 94
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p54"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isWidgetOnScreen()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 96
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v28, 0x0

    const-string v30, "p55"

    aput-object v30, v29, v28

    const/16 v30, 0x1

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMonitorEnable()Z

    move-result v28

    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    const-string v28, "1"

    :goto_2
    aput-object v28, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 98
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v28, 0x0

    const-string v30, "p56"

    aput-object v30, v29, v28

    const/16 v30, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    const-string v31, "show_battery_notice"

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v28

    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    const-string v28, "1"

    :goto_3
    aput-object v28, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 100
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p57"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getRetrieveStatus()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 102
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p58"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getLastBackupTime()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 104
    const-wide/16 v22, 0x0

    .line 105
    .local v22, size:J
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_1

    .line 107
    :try_start_1
    new-instance v28, Ljava/io/File;

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Lcom/zte/filexplorer/FileHelper;->getFileSize(Ljava/io/File;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-wide v22

    .line 113
    :cond_1
    :goto_4
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p59"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 115
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p60"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 117
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p61"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 119
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v28, 0x0

    const-string v30, "p62"

    aput-object v30, v29, v28

    const/16 v30, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getFloaterOpen()Z

    move-result v28

    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    const-string v28, "1"

    :goto_5
    aput-object v28, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 121
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v28, 0x0

    const-string v30, "p63"

    aput-object v30, v29, v28

    const/16 v30, 0x1

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMarkMonitorEnable()Z

    move-result v28

    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    const-string v28, "1"

    :goto_6
    aput-object v28, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 123
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "p64"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    sget-object v30, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 208
    .end local v17           #mask:J
    .end local v19           #n:I
    .end local v22           #size:J
    .end local v27           #version:I
    :cond_2
    :goto_7
    return-object v8

    .line 96
    .restart local v17       #mask:J
    .restart local v19       #n:I
    .restart local v27       #version:I
    :cond_3
    const-string v28, "0"

    goto/16 :goto_2

    .line 98
    :cond_4
    const-string v28, "0"

    goto/16 :goto_3

    .line 119
    .restart local v22       #size:J
    :cond_5
    const-string v28, "0"

    goto :goto_5

    .line 121
    :cond_6
    const-string v28, "0"

    goto :goto_6

    .line 125
    .end local v17           #mask:J
    .end local v19           #n:I
    .end local v22           #size:J
    .end local v27           #version:I
    :cond_7
    const-string v28, "b"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 127
    new-instance v8, Landroid/database/MatrixCursor;

    .end local v8           #cur:Landroid/database/MatrixCursor;
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "b"

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 129
    .restart local v8       #cur:Landroid/database/MatrixCursor;
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v16, main:Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 132
    .local v5, array_d:Lorg/json/JSONArray;
    if-eqz p4, :cond_8

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_8

    .line 133
    move-object/from16 v4, p4

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_8
    if-ge v10, v14, :cond_8

    aget-object v24, v4, v10

    .line 135
    .local v24, str:Ljava/lang/String;
    :try_start_2
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    .local v12, info:Lorg/json/JSONObject;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 137
    .local v13, json:Lorg/json/JSONObject;
    const-string v28, "p"

    const-string v29, "packageName"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v28, "a"

    const-string v29, "appName"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v28, "v"

    const-string v29, "versionCode"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v28, "d"

    const-string v29, "downloadType"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v28, "t"

    const-string v29, "time"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v29

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 142
    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 133
    .end local v12           #info:Lorg/json/JSONObject;
    .end local v13           #json:Lorg/json/JSONObject;
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 149
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .end local v24           #str:Ljava/lang/String;
    :cond_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_9

    .line 151
    :try_start_3
    const-string v28, "d"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 157
    :cond_9
    :goto_a
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 158
    .local v21, packageManager:Landroid/content/pm/PackageManager;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 159
    .local v6, array_p:Lorg/json/JSONArray;
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 160
    .local v3, appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_a

    .line 161
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    .line 162
    .local v12, info:Landroid/content/pm/PackageInfo;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 164
    .restart local v13       #json:Lorg/json/JSONObject;
    :try_start_4
    const-string v28, "p"

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v28, "a"

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v28, "v"

    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    const-string v28, "m"

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->calcAppMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-wide/16 v25, 0x0

    .line 169
    .local v25, t:J
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getT(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 170
    .local v7, bundle:Landroid/os/Bundle;
    const-string v28, "t"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    .line 171
    const-string v28, "t"

    move-object/from16 v0, v28

    move-wide/from16 v1, v25

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 172
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_b

    .line 173
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v25           #t:J
    :catch_0
    move-exception v9

    .line 174
    .local v9, e:Ljava/lang/Exception;
    const-string v28, "20140219"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 179
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #info:Landroid/content/pm/PackageInfo;
    .end local v13           #json:Lorg/json/JSONObject;
    :cond_a
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_b

    .line 181
    :try_start_5
    const-string v28, "p"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 187
    :cond_b
    :goto_c
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 189
    .end local v3           #appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5           #array_d:Lorg/json/JSONArray;
    .end local v6           #array_p:Lorg/json/JSONArray;
    .end local v16           #main:Lorg/json/JSONObject;
    .end local v21           #packageManager:Landroid/content/pm/PackageManager;
    :cond_c
    const-string v28, "r"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 190
    new-instance v8, Landroid/database/MatrixCursor;

    .end local v8           #cur:Landroid/database/MatrixCursor;
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "r"

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 191
    .restart local v8       #cur:Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppDownloadInfoSQLiteOpenHelper()Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;->getAllRecords()Ljava/util/List;

    move-result-object v15

    .line 192
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;

    .line 193
    .local v12, info:Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .restart local v13       #json:Lorg/json/JSONObject;
    :try_start_6
    const-string v28, "_id"

    iget v0, v12, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->_id:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    const-string v28, "packageName"

    iget-object v0, v12, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v28, "appName"

    iget-object v0, v12, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->appName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v28, "versionCode"

    iget-object v0, v12, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->versionCode:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v28, "downloadType"

    iget-object v0, v12, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->downloadType:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v28, "time"

    iget-wide v0, v12, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->time:J

    move-wide/from16 v29, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 201
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_d

    .line 202
    :catch_1
    move-exception v28

    goto :goto_d

    .line 182
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #info:Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;
    .end local v13           #json:Lorg/json/JSONObject;
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;>;"
    .restart local v3       #appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v5       #array_d:Lorg/json/JSONArray;
    .restart local v6       #array_p:Lorg/json/JSONArray;
    .restart local v16       #main:Lorg/json/JSONObject;
    .restart local v21       #packageManager:Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v28

    goto/16 :goto_c

    .line 152
    .end local v3           #appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6           #array_p:Lorg/json/JSONArray;
    .end local v21           #packageManager:Landroid/content/pm/PackageManager;
    :catch_3
    move-exception v28

    goto/16 :goto_a

    .line 143
    .restart local v4       #arr$:[Ljava/lang/String;
    .local v10, i$:I
    .restart local v14       #len$:I
    .restart local v24       #str:Ljava/lang/String;
    :catch_4
    move-exception v28

    goto/16 :goto_9

    .line 108
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #array_d:Lorg/json/JSONArray;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .end local v16           #main:Lorg/json/JSONObject;
    .end local v24           #str:Ljava/lang/String;
    .restart local v17       #mask:J
    .restart local v19       #n:I
    .restart local v22       #size:J
    .restart local v27       #version:I
    :catch_5
    move-exception v28

    goto/16 :goto_4

    .line 66
    .end local v17           #mask:J
    .end local v19           #n:I
    .end local v22           #size:J
    :catch_6
    move-exception v28

    goto/16 :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

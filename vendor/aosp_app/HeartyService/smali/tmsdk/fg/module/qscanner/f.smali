.class final Ltmsdk/fg/module/qscanner/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/fg/module/qscanner/a;


# instance fields
.field private final Fl:Ljava/lang/String;

.field Fm:Ljava/lang/String;

.field Fn:I

.field Fo:Ljava/lang/String;

.field Fp:I

.field mName:Ljava/lang/String;

.field mType:I


# direct methods
.method public constructor <init>(Ltmsdkobf/bl;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "kungfu"

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/f;->Fl:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Ltmsdkobf/bl;->name:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/f;->mName:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Ltmsdkobf/bl;->ft:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/f;->Fm:Ljava/lang/String;

    .line 31
    iget v0, p1, Ltmsdkobf/bl;->level:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/f;->Fn:I

    .line 32
    iget-object v0, p1, Ltmsdkobf/bl;->eb:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/f;->Fo:Ljava/lang/String;

    .line 33
    iget v0, p1, Ltmsdkobf/bl;->advice:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/f;->Fp:I

    .line 34
    iget v0, p1, Ltmsdkobf/bl;->type:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/f;->mType:I

    .line 35
    return-void
.end method

.method private cZ(Ljava/lang/String;)I
    .locals 6
    .parameter "path"

    .prologue
    .line 141
    const/4 v1, -0x1

    .line 142
    .local v1, err:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v2, script:Ljava/lang/StringBuilder;
    const-string v3, "mount -o remount rw /system\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chattr -i "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rm -r "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_0
    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private da(Ljava/lang/String;)I
    .locals 7
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 161
    const/4 v1, -0x1

    .line 162
    .local v1, err:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, systemFilePath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v2, script:Ljava/lang/StringBuilder;
    const-string v4, "mount -o remount rw /system\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chattr -i "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rm -r "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mv "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 174
    :goto_0
    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hE()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v4, scanResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x5

    new-array v1, v6, [Ljava/lang/String;

    const-string v6, "/system/xbin/ccb"

    aput-object v6, v1, v8

    const-string v6, "/system/etc/.dhcpcd"

    aput-object v6, v1, v9

    const-string v6, "/system/etc/dhcpcd.lock"

    aput-object v6, v1, v10

    const-string v6, "/system/etc/.rild_cfg"

    aput-object v6, v1, v11

    const/4 v6, 0x4

    const-string v7, "/data/dhcpcd.lock"

    aput-object v7, v1, v6

    .line 112
    .local v1, kungfuBinaries:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, num:I
    array-length v2, v1

    .local v2, length:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 113
    new-instance v5, Ljava/io/File;

    aget-object v6, v1, v3

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v5, soFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v5           #soFile:Ljava/io/File;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 120
    const-string v6, "kungfu"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    new-array v0, v11, [Ljava/lang/String;

    const-string v6, "/system/bin/installdd"

    aput-object v6, v0, v8

    const-string v6, "/system/bin/dhcpcdd"

    aput-object v6, v0, v9

    const-string v6, "/system/bin/bootanimationd"

    aput-object v6, v0, v10

    .line 129
    .local v0, SystemBinaries:[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_4

    .line 130
    new-instance v5, Ljava/io/File;

    aget-object v6, v0, v3

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v5       #soFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 132
    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 136
    .end local v5           #soFile:Ljava/io/File;
    :cond_4
    return-object v4
.end method


# virtual methods
.method public b(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z
    .locals 7
    .parameter "scanResult"

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, killResult:Z
    if-nez p1, :cond_0

    move v6, v2

    .line 95
    :goto_0
    return v6

    .line 66
    :cond_0
    iget-object v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->dirtyDataPathes:Ljava/util/List;

    .line 67
    .local v0, dirtyPathes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 68
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 71
    :cond_2
    const-string v6, "kungfu"

    invoke-interface {v0, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 72
    .local v5, splitPosition:I
    if-lez v5, :cond_4

    .line 73
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Ltmsdk/fg/module/qscanner/f;->cZ(Ljava/lang/String;)I

    move-result v3

    .line 75
    .local v3, res:I
    if-eqz v3, :cond_3

    .line 76
    const/4 v2, 0x0

    .line 73
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 83
    .end local v1           #i:I
    .end local v3           #res:I
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 84
    .local v4, size:I
    if-ge v5, v4, :cond_6

    .line 85
    add-int/lit8 v1, v5, 0x1

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v4, :cond_6

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Ltmsdk/fg/module/qscanner/f;->da(Ljava/lang/String;)I

    move-result v3

    .line 87
    .restart local v3       #res:I
    if-eqz v3, :cond_5

    .line 88
    const/4 v2, 0x0

    .line 85
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 90
    :cond_5
    const/4 v2, 0x1

    goto :goto_4

    .end local v1           #i:I
    .end local v3           #res:I
    :cond_6
    move v6, v2

    .line 95
    goto :goto_0
.end method

.method public hw()Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    new-instance v1, Ltmsdk/common/module/qscanner/QScanResultEntity;

    invoke-direct {v1}, Ltmsdk/common/module/qscanner/QScanResultEntity;-><init>()V

    .line 40
    .local v1, resultEntity:Ltmsdk/common/module/qscanner/QScanResultEntity;
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/f;->hE()Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, dirtyPathes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v2, 0x1adb1

    iput v2, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->special:I

    .line 42
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/f;->Fm:Ljava/lang/String;

    iput-object v2, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->shortDesc:Ljava/lang/String;

    .line 43
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/f;->Fo:Ljava/lang/String;

    iput-object v2, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    .line 44
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/f;->mName:Ljava/lang/String;

    iput-object v2, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    .line 45
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 46
    iget v2, p0, Ltmsdk/fg/module/qscanner/f;->mType:I

    iput v2, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 47
    iget v2, p0, Ltmsdk/fg/module/qscanner/f;->Fn:I

    iput v2, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 48
    iget v2, p0, Ltmsdk/fg/module/qscanner/f;->Fp:I

    iput v2, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->dirtyDataPathes:Ljava/util/List;

    .line 50
    iput-boolean v3, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->needRootToHandle:Z

    .line 56
    :goto_0
    return-object v1

    .line 52
    :cond_0
    iput v3, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 53
    const/4 v2, 0x0

    iput v2, v1, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    goto :goto_0
.end method

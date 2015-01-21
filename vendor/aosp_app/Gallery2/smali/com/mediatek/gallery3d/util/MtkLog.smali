.class public final Lcom/mediatek/gallery3d/util/MtkLog;
.super Ljava/lang/Object;
.source "MtkLog.java"


# static fields
.field public static final DBG:Z

.field public static final DBG_PERFORMANCE:Z

.field public static final DBG_TILE:Z

.field public static final SUPPORT_PQ:Z

.field public static final SUPPORT_PQ_ADV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 22
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "DEBUG_GALLERY2"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .local v1, cfg:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    sput-boolean v8, Lcom/mediatek/gallery3d/util/MtkLog;->DBG:Z

    .line 28
    :goto_0
    new-instance v1, Ljava/io/File;

    .end local v1           #cfg:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "DEBUG_TILE"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .restart local v1       #cfg:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    sput-boolean v8, Lcom/mediatek/gallery3d/util/MtkLog;->DBG_TILE:Z

    .line 34
    :goto_1
    const-string v5, "MtkLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gallery2 debug mode "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/mediatek/gallery3d/util/MtkLog;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "ON"

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "SUPPORT_PQ"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .local v3, pqCfg:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 37
    sput-boolean v8, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ:Z

    .line 41
    :goto_3
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "SUPPORT_PQ_ADV"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v2, pqADVModeCfg:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 43
    sput-boolean v8, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ_ADV:Z

    .line 47
    :goto_4
    const-string v5, "MtkLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gallery2 support PQ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ:Z

    if-eqz v4, :cond_5

    const-string v4, "ON"

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Gallery2 support PQ ADV :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ_ADV:Z

    if-eqz v4, :cond_6

    const-string v4, "ON"

    :goto_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "DEBUG_PERFORMANCE"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .local v0, PMCfg:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 50
    sput-boolean v8, Lcom/mediatek/gallery3d/util/MtkLog;->DBG_PERFORMANCE:Z

    .line 54
    :goto_7
    const-string v5, "MtkLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gallery2 debug performance "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/mediatek/gallery3d/util/MtkLog;->DBG_PERFORMANCE:Z

    if-eqz v4, :cond_8

    const-string v4, "ON"

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 26
    .end local v0           #PMCfg:Ljava/io/File;
    .end local v2           #pqADVModeCfg:Ljava/io/File;
    .end local v3           #pqCfg:Ljava/io/File;
    :cond_0
    sput-boolean v7, Lcom/mediatek/gallery3d/util/MtkLog;->DBG:Z

    goto/16 :goto_0

    .line 32
    :cond_1
    sput-boolean v7, Lcom/mediatek/gallery3d/util/MtkLog;->DBG_TILE:Z

    goto/16 :goto_1

    .line 34
    :cond_2
    const-string v4, "OFF"

    goto/16 :goto_2

    .line 39
    .restart local v3       #pqCfg:Ljava/io/File;
    :cond_3
    sput-boolean v7, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ:Z

    goto/16 :goto_3

    .line 45
    .restart local v2       #pqADVModeCfg:Ljava/io/File;
    :cond_4
    sput-boolean v7, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ_ADV:Z

    goto :goto_4

    .line 47
    :cond_5
    const-string v4, "OFF"

    goto :goto_5

    :cond_6
    const-string v4, "OFF"

    goto :goto_6

    .line 52
    .restart local v0       #PMCfg:Ljava/io/File;
    :cond_7
    sput-boolean v7, Lcom/mediatek/gallery3d/util/MtkLog;->DBG_PERFORMANCE:Z

    goto :goto_7

    .line 54
    :cond_8
    const-string v4, "OFF"

    goto :goto_8
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 97
    invoke-static {p0, p1, p2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 81
    invoke-static {p0, p1, p2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static isDebugTile()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MtkLog;->DBG_TILE:Z

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

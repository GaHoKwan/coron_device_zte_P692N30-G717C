.class public Lcom/android/providers/downloads/DownloadDrmHelper;
.super Ljava/lang/Object;
.source "DownloadDrmHelper.java"


# static fields
.field public static final EXTENSION_DRM_MESSAGE:Ljava/lang/String; = ".dm"

.field public static final EXTENSION_INTERNAL_FWDL:Ljava/lang/String; = ".fl"

.field public static final MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "path"
    .parameter "containingMime"

    .prologue
    .line 104
    move-object v2, p2

    .line 105
    .local v2, result:Ljava/lang/String;
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, drmClient:Landroid/drm/DrmManagerClient;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 116
    :cond_0
    :goto_0
    return-object v2

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "DownloadManager"

    const-string v4, "Can\'t get original mime type since path is null or empty string."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 114
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v3, "DownloadManager"

    const-string v4, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDrmConvertNeeded(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimetype"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public static isDrmMimeType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "mimetype"

    .prologue
    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, result:Z
    if-eqz p0, :cond_0

    .line 47
    :try_start_0
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, drmClient:Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 49
    const-string v3, ""

    invoke-virtual {v0, v3, p1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 58
    .end local v0           #drmClient:Landroid/drm/DrmManagerClient;
    :cond_0
    :goto_0
    return v2

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DownloadManager"

    const-string v4, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 55
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v3, "DownloadManager"

    const-string v4, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 82
    if-eqz p0, :cond_1

    .line 84
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, extensionIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 88
    :cond_0
    const-string v1, ".fl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 90
    .end local v0           #extensionIndex:I
    :cond_1
    return-object p0
.end method

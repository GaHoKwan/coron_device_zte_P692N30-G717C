.class public Lcom/android/mms/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# static fields
.field private static final EXTENSION_ANDROID_FWDL:Ljava/lang/String; = ".fl"

.field private static final TAG:Ljava/lang/String; = "DrmUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getConvertExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mimetype"

    .prologue
    .line 38
    const-string v0, ".fl"

    return-object v0
.end method

.method public static haveRightsForAction(Landroid/net/Uri;I)Z
    .locals 5
    .parameter "uri"
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

    move-result-object v1

    .line 69
    .local v1, drmManagerClient:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    .local v0, check:I
    if-nez v0, :cond_1

    .line 77
    .end local v0           #check:I
    :cond_0
    :goto_0
    return v2

    .line 71
    .restart local v0       #check:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 75
    .end local v0           #check:I
    :catchall_0
    move-exception v2

    throw v2

    .line 73
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isDrmType(Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"

    .prologue
    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, result:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

    move-result-object v0

    .line 44
    .local v0, drmManagerClient:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    const-string v3, ""

    invoke-virtual {v0, v3, p0}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    const/4 v2, 0x1

    .line 55
    :cond_0
    :goto_0
    return v2

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmUtils"

    const-string v4, "canHandle called with wrong parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 52
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v3, "DrmUtils"

    const-string v4, "DrmManagerClient didn\'t initialize properly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

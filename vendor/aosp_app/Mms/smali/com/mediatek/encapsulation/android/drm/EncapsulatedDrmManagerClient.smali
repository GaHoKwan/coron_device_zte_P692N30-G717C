.class public Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
.super Lcom/mediatek/drm/OmaDrmClient;
.source "EncapsulatedDrmManagerClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OmaDrmClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 1
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 1
    .parameter "path"
    .parameter "action"

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "OmaDrmClient"

    const-string v1, "finalize OmaDrmClient instance"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/mediatek/drm/OmaDrmClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/mediatek/drm/OmaDrmClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

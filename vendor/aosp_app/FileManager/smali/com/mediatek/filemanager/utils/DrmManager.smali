.class public final Lcom/mediatek/filemanager/utils/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# static fields
.field public static final ACTIONID_INVALID_DRM:I = -0x2

.field public static final ACTIONID_NOT_DRM:I = -0x1

.field public static final APP_DRM:Ljava/lang/String; = "application/vnd.oma.drm"

.field public static final EXT_DRM_CONTENT:Ljava/lang/String; = "dcf"

.field private static final TAG:Ljava/lang/String; = "DrmManager"

.field private static sInstance:Lcom/mediatek/filemanager/utils/DrmManager;


# instance fields
.field private mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/mediatek/filemanager/utils/DrmManager;

    invoke-direct {v0}, Lcom/mediatek/filemanager/utils/DrmManager;-><init>()V

    sput-object v0, Lcom/mediatek/filemanager/utils/DrmManager;->sInstance:Lcom/mediatek/filemanager/utils/DrmManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 69
    return-void
.end method

.method public static getInstance()Lcom/mediatek/filemanager/utils/DrmManager;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/mediatek/filemanager/utils/DrmManager;->sInstance:Lcom/mediatek/filemanager/utils/DrmManager;

    return-object v0
.end method


# virtual methods
.method public checkDrmObjectType(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkDrmApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/drm/OmaDrmClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 157
    :cond_0
    return v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkDrmApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-virtual {v1, p1}, Lcom/mediatek/drm/OmaDrmClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, mimeType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 121
    const-string v1, "DrmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getOriginalMimeType(),mDrmManagerClient.getOriginalMimeType(path) return null.path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, ""

    .line 127
    .end local v0           #mimeType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkDrmApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p1}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 82
    :cond_0
    return-void
.end method

.method public isRightsStatus(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkDrmApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 142
    :cond_0
    return v0
.end method

.method public overlayDrmIconSkew(Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resources"
    .parameter "path"
    .parameter "actionId"
    .parameter "iconId"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkDrmApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayDrmIconSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showProtectionInfoDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "path"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/filemanager/utils/DrmManager;->mDrmManagerClient:Lcom/mediatek/drm/OmaDrmClient;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkDrmApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p1, p2}, Lcom/mediatek/drm/OmaDrmUiUtils;->showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    .line 171
    :cond_0
    return-void
.end method

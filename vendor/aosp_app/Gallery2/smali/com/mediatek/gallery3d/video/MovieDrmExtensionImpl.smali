.class public Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;
.super Lcom/mediatek/gallery3d/ext/MovieDrmExtension;
.source "MovieDrmExtensionImpl.java"


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/MovieDrmExtensionImpl"

.field private static sDrmClient:Lcom/mediatek/drm/OmaDrmClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mediatek/gallery3d/ext/MovieDrmExtension;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/net/Uri;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->consume(Landroid/content/Context;Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method private static canShare(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 116
    const-string v5, "Gallery2/VideoPlayer/MovieDrmExtensionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canShare("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p0}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->ensureDrmClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v0

    .line 119
    .local v0, client:Lcom/mediatek/drm/OmaDrmClient;
    const/4 v4, 0x0

    .line 120
    .local v4, share:Z
    const/4 v2, 0x0

    .line 122
    .local v2, isDrm:Z
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v5}, Lcom/mediatek/drm/OmaDrmClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 127
    :goto_0
    if-eqz v2, :cond_1

    .line 128
    const/4 v3, 0x1

    .line 130
    .local v3, rightsStatus:I
    const/4 v5, 0x3

    :try_start_1
    invoke-virtual {v0, p1, v5}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Landroid/net/Uri;I)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 134
    :goto_1
    if-nez v3, :cond_0

    const/4 v4, 0x1

    .line 136
    :goto_2
    const-string v5, "Gallery2/VideoPlayer/MovieDrmExtensionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canShare("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), rightsStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v3           #rightsStatus:I
    :goto_3
    const-string v5, "Gallery2/VideoPlayer/MovieDrmExtensionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canShare("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), share="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v4

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "Gallery2/VideoPlayer/MovieDrmExtensionImpl"

    const-string v6, "canShare() : raise exception, we assume it\'s not a OMA DRM file"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #rightsStatus:I
    :catch_1
    move-exception v1

    .line 132
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v5, "Gallery2/VideoPlayer/MovieDrmExtensionImpl"

    const-string v6, "canShare() : raise exception, we assume it has no rights to be shared"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    .line 139
    .end local v3           #rightsStatus:I
    :cond_1
    const/4 v4, 0x1

    goto :goto_3
.end method

.method private static consume(Landroid/content/Context;Landroid/net/Uri;I)I
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->ensureDrmClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v0

    .line 107
    .local v0, client:Lcom/mediatek/drm/OmaDrmClient;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->consumeRights(Landroid/net/Uri;I)I

    move-result v1

    .line 109
    .local v1, result:I
    const-string v2, "Gallery2/VideoPlayer/MovieDrmExtensionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v1
.end method

.method private static ensureDrmClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    sget-object v0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->sDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->sDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 64
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->sDrmClient:Lcom/mediatek/drm/OmaDrmClient;

    return-object v0
.end method

.method private static handleDrmFile(Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Z
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "listener"

    .prologue
    const/4 v8, 0x1

    .line 70
    const-string v5, "Gallery2/VideoPlayer/MovieDrmExtensionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDrmFile("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p0}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->ensureDrmClient(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v0

    .line 73
    .local v0, client:Lcom/mediatek/drm/OmaDrmClient;
    const/4 v3, 0x0

    .line 74
    .local v3, result:Z
    invoke-static {p0, p1, v0}, Lcom/mediatek/drm/OmaDrmUtils;->getDrmProfile(Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;

    move-result-object v2

    .line 75
    .local v2, info:Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->getMethod()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 76
    const/4 v4, 0x1

    .line 78
    .local v4, rightsStatus:I
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v5}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatusForTap(Landroid/net/Uri;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 82
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 100
    .end local v4           #rightsStatus:I
    :cond_0
    :goto_1
    :pswitch_0
    const-string v5, "Gallery2/VideoPlayer/MovieDrmExtensionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDrmFile() return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v3

    .line 79
    .restart local v4       #rightsStatus:I
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "Gallery2/VideoPlayer/MovieDrmExtensionImpl"

    const-string v6, "handleDrmFile() : raise exception, we assume invalid rights"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_1
    invoke-static {v0, p0, p2}, Lcom/mediatek/drm/OmaDrmUiUtils;->showConsumeRights(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;

    .line 85
    const/4 v3, 0x1

    .line 86
    goto :goto_1

    .line 88
    :pswitch_2
    invoke-static {v0, p0, p1, p2}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicense(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;

    .line 89
    const/4 v3, 0x1

    .line 90
    goto :goto_1

    .line 92
    :pswitch_3
    invoke-static {v0, p0, p2}, Lcom/mediatek/drm/OmaDrmUiUtils;->showSecureTimerInvalid(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;

    .line 93
    const/4 v3, 0x1

    .line 94
    goto :goto_1

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public canShare(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;)Z
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 56
    invoke-interface {p2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getOriginalUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->canShare(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public handleDrmFile(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;)Z
    .locals 3
    .parameter "context"
    .parameter "item"
    .parameter "callback"

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, handle:Z
    invoke-interface {p2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;-><init>(Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;)V

    invoke-static {p1, v1, v2}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->handleDrmFile(Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 51
    :cond_0
    return v0
.end method

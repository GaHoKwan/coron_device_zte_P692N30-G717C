.class public abstract Lcom/mediatek/email/emailvip/activity/ListPhotoManager;
.super Ljava/lang/Object;
.source "ListPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static final CONTACT_PHOTO_SERVICE:Ljava/lang/String; = "contactPhotos"

.field static final DEBUG:Z = false

.field static final DEBUG_SIZES:Z = false

.field static final TAG:Ljava/lang/String; = "ListPhotoManager"

.field private static sInstance:Lcom/mediatek/email/emailvip/activity/ListPhotoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/mediatek/email/emailvip/activity/ListPhotoManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 104
    const-class v1, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/email/emailvip/activity/ListPhotoManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, applicationContext:Landroid/content/Context;
    sget-object v1, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->sInstance:Lcom/mediatek/email/emailvip/activity/ListPhotoManager;

    if-nez v1, :cond_0

    .line 98
    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/mediatek/email/emailvip/activity/ListPhotoManager;

    move-result-object v1

    sput-object v1, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->sInstance:Lcom/mediatek/email/emailvip/activity/ListPhotoManager;

    .line 100
    :cond_0
    sget-object v1, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->sInstance:Lcom/mediatek/email/emailvip/activity/ListPhotoManager;

    return-object v1
.end method


# virtual methods
.method public abstract cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;JZ)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 171
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 181
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract removePhoto(Landroid/widget/ImageView;)V
.end method

.method public abstract resume()V
.end method

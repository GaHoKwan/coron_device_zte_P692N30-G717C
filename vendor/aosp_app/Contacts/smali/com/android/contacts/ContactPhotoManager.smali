.class public abstract Lcom/android/contacts/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoManager$1;,
        Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
    }
.end annotation


# static fields
.field public static final CONTACT_PHOTO_SERVICE:Ljava/lang/String; = "contactPhotos"

.field static final DEBUG:Z = false

.field static final DEBUG_SIZES:Z = false

.field public static final DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider; = null

.field public static final DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider; = null

.field static final TAG:Ljava/lang/String; = "ContactPhotoManager"

.field private static s180DipInPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    .line 160
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 162
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 180
    const-class v1, Lcom/android/contacts/ContactPhotoManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultAvatarResId(Landroid/content/Context;IZ)I
    .locals 5
    .parameter "context"
    .parameter "extent"
    .parameter "darkTheme"

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 96
    sget v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    if-ne v2, v4, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    .local v1, r:Landroid/content/res/Resources;
    const/high16 v2, 0x4334

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    .line 102
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_0
    if-eq p1, v4, :cond_1

    sget v2, Lcom/android/contacts/ContactPhotoManager;->s180DipInPixel:I

    if-le p1, v2, :cond_1

    .line 103
    .local v0, hires:Z
    :goto_0
    invoke-static {v0, p2}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZ)I

    move-result v2

    return v2

    .line 102
    .end local v0           #hires:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultAvatarResId(ZZ)I
    .locals 1
    .parameter "hires"
    .parameter "darkTheme"

    .prologue
    .line 107
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const v0, 0x7f020078

    .line 110
    :goto_0
    return v0

    .line 108
    :cond_0
    if-eqz p0, :cond_1

    const v0, 0x7f020079

    goto :goto_0

    .line 109
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f02007a

    goto :goto_0

    .line 110
    :cond_2
    const v0, 0x7f02007b

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 5
    .parameter "context"

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, applicationContext:Landroid/content/Context;
    const-string v2, "contactPhotos"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManager;

    .line 172
    .local v1, service:Lcom/android/contacts/ContactPhotoManager;
    if-nez v1, :cond_0

    .line 173
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    .line 174
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No contact photo service in context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-object v1
.end method

.method public static getSimDefaultAvatarResId(JZ)I
    .locals 5
    .parameter "photoId"
    .parameter "darkTheme"

    .prologue
    const v1, 0x7f02008a

    .line 286
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSimDefaultAvatarResId] photoId , darkTheme : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    long-to-int v0, p0

    .line 289
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 351
    :pswitch_0
    const-string v2, "ContactPhotoManager"

    const-string v3, "no match photoId "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    :goto_0
    return v1

    .line 291
    :pswitch_1
    if-eqz p2, :cond_0

    .line 292
    const v1, 0x7f02008f

    goto :goto_0

    .line 297
    :pswitch_2
    if-eqz p2, :cond_1

    .line 298
    const v1, 0x7f020082

    goto :goto_0

    .line 300
    :cond_1
    const v1, 0x7f02007d

    goto :goto_0

    .line 303
    :pswitch_3
    if-eqz p2, :cond_2

    .line 304
    const v1, 0x7f020084

    goto :goto_0

    .line 306
    :cond_2
    const v1, 0x7f02007f

    goto :goto_0

    .line 309
    :pswitch_4
    if-eqz p2, :cond_3

    .line 310
    const v1, 0x7f020083

    goto :goto_0

    .line 312
    :cond_3
    const v1, 0x7f02007e

    goto :goto_0

    .line 315
    :pswitch_5
    if-eqz p2, :cond_4

    .line 316
    const v1, 0x7f020085

    goto :goto_0

    .line 318
    :cond_4
    const v1, 0x7f020080

    goto :goto_0

    .line 321
    :pswitch_6
    if-eqz p2, :cond_5

    .line 322
    const v1, 0x7f020081

    goto :goto_0

    .line 324
    :cond_5
    const v1, 0x7f02007c

    goto :goto_0

    .line 327
    :pswitch_7
    if-eqz p2, :cond_6

    .line 328
    const v1, 0x7f020090

    goto :goto_0

    .line 330
    :cond_6
    const v1, 0x7f02008b

    goto :goto_0

    .line 333
    :pswitch_8
    if-eqz p2, :cond_7

    .line 334
    const v1, 0x7f020092

    goto :goto_0

    .line 336
    :cond_7
    const v1, 0x7f02008d

    goto :goto_0

    .line 339
    :pswitch_9
    if-eqz p2, :cond_8

    .line 340
    const v1, 0x7f020091

    goto :goto_0

    .line 342
    :cond_8
    const v1, 0x7f02008c

    goto :goto_0

    .line 345
    :pswitch_a
    if-eqz p2, :cond_9

    .line 346
    const v1, 0x7f020093

    goto :goto_0

    .line 348
    :cond_9
    const v1, 0x7f02008e

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V
    .locals 6
    .parameter "view"
    .parameter "photoUri"
    .parameter "darkTheme"

    .prologue
    .line 230
    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 231
    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V
    .locals 6
    .parameter "view"
    .parameter "photoUri"
    .parameter "requestedExtent"
    .parameter "darkTheme"

    .prologue
    .line 222
    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 223
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JZ)V
    .locals 6
    .parameter "view"
    .parameter "photoId"
    .parameter "darkTheme"

    .prologue
    .line 196
    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 197
    return-void
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 273
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 283
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

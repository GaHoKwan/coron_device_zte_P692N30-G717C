.class public Lcom/android/gallery3d/data/FilterSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "FilterSource.java"


# static fields
.field private static final FILTER_BY_CAMERA_SHORTCUT:I = 0x4

.field private static final FILTER_BY_CAMERA_SHORTCUT_ITEM:I = 0x5

.field private static final FILTER_BY_DELETE:I = 0x1

.field private static final FILTER_BY_EMPTY:I = 0x2

.field private static final FILTER_BY_EMPTY_ITEM:I = 0x3

.field private static final FILTER_BY_MEDIATYPE:I = 0x0

.field public static final FILTER_CAMERA_SHORTCUT:Ljava/lang/String; = "/filter/camera_shortcut"

.field private static final FILTER_CAMERA_SHORTCUT_ITEM:Ljava/lang/String; = "/filter/camera_shortcut_item"

.field public static final FILTER_EMPTY_ITEM:Ljava/lang/String; = "/filter/empty_prompt"

.field private static final TAG:Ljava/lang/String; = "Gallery2/FilterSource"

.field private static final mIsDrmSupported:Z

.field private static final mIsStereoDisplaySupported:Z


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mCameraShortcutItem:Lcom/android/gallery3d/data/MediaItem;

.field private mEmptyItem:Lcom/android/gallery3d/data/MediaItem;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/FilterSource;->mIsDrmSupported:Z

    .line 39
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/FilterSource;->mIsStereoDisplaySupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 48
    const-string v0, "filter"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/android/gallery3d/data/FilterSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 50
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/filter/mediatype/*/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/filter/delete/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/filter/empty/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/filter/empty_prompt"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/filter/camera_shortcut"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/filter/camera_shortcut_item"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 58
    new-instance v0, Lcom/android/gallery3d/data/EmptyAlbumImage;

    const-string v1, "/filter/empty_prompt"

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/data/FilterSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/EmptyAlbumImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mEmptyItem:Lcom/android/gallery3d/data/MediaItem;

    .line 60
    new-instance v0, Lcom/android/gallery3d/data/CameraShortcutImage;

    const-string v1, "/filter/camera_shortcut_item"

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/data/FilterSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/CameraShortcutImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mCameraShortcutItem:Lcom/android/gallery3d/data/MediaItem;

    .line 63
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 70
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v1

    .line 71
    .local v1, matchType:I
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 72
    .local v0, dataManager:Lcom/android/gallery3d/data/DataManager;
    packed-switch v1, :pswitch_data_0

    .line 112
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :pswitch_0
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    .line 75
    .local v2, mediaType:I
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, setsName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 77
    .local v3, sets:[Lcom/android/gallery3d/data/MediaSet;
    sget-boolean v5, Lcom/android/gallery3d/data/FilterSource;->mIsDrmSupported:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/gallery3d/data/FilterSource;->mIsStereoDisplaySupported:Z

    if-eqz v5, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;I)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 83
    :goto_0
    new-instance v5, Lcom/android/gallery3d/data/FilterTypeSet;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v0, v6, v2}, Lcom/android/gallery3d/data/FilterTypeSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;I)V

    .line 108
    .end local v2           #mediaType:I
    .end local v3           #sets:[Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #setsName:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 81
    .restart local v2       #mediaType:I
    .restart local v3       #sets:[Lcom/android/gallery3d/data/MediaSet;
    .restart local v4       #setsName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    goto :goto_0

    .line 86
    .end local v2           #mediaType:I
    .end local v3           #sets:[Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #setsName:Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    .restart local v4       #setsName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 88
    .restart local v3       #sets:[Lcom/android/gallery3d/data/MediaSet;
    sget-boolean v5, Lcom/android/gallery3d/data/FilterSource;->mIsDrmSupported:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/gallery3d/data/FilterSource;->mIsStereoDisplaySupported:Z

    if-eqz v5, :cond_3

    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;I)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 94
    :goto_2
    new-instance v5, Lcom/android/gallery3d/data/FilterDeleteSet;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v6}, Lcom/android/gallery3d/data/FilterDeleteSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    goto :goto_2

    .line 97
    .end local v3           #sets:[Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #setsName:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    .restart local v4       #setsName:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 99
    .restart local v3       #sets:[Lcom/android/gallery3d/data/MediaSet;
    new-instance v5, Lcom/android/gallery3d/data/FilterEmptyPromptSet;

    aget-object v6, v3, v7

    iget-object v7, p0, Lcom/android/gallery3d/data/FilterSource;->mEmptyItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v5, p1, v6, v7}, Lcom/android/gallery3d/data/FilterEmptyPromptSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_1

    .line 102
    .end local v3           #sets:[Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #setsName:Ljava/lang/String;
    :pswitch_3
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mEmptyItem:Lcom/android/gallery3d/data/MediaItem;

    goto :goto_1

    .line 105
    :pswitch_4
    new-instance v5, Lcom/android/gallery3d/data/SingleItemAlbum;

    iget-object v6, p0, Lcom/android/gallery3d/data/FilterSource;->mCameraShortcutItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v5, p1, v6}, Lcom/android/gallery3d/data/SingleItemAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_1

    .line 108
    :pswitch_5
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mCameraShortcutItem:Lcom/android/gallery3d/data/MediaItem;

    goto :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.class public Lcom/mediatek/gallery3d/util/MediatekMMProfile;
.super Ljava/lang/Object;
.source "MediatekMMProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;
    }
.end annotation


# static fields
.field private static EVENT_ALBUMSETPAGE_ACTIVITY:I

.field private static EVENT_ALBUMSETPAGE_DECODE_SCREENNAIL_JOB:I

.field private static EVENT_ALBUMSETPAGE_DECODE_SCREENNAIL_LISTENER:I

.field private static EVENT_ALBUMSETPAGE_DECODE_SCREENNAIL_SUBMIT:I

.field private static EVENT_ALBUMSETPAGE_ON_CREATE:I

.field private static EVENT_ALBUMSETPAGE_ON_RESUME:I

.field private static EVENT_ALBUMSETPAGE_RELOAD_DATA:I

.field private static EVENT_DRAW_SCREEN_NAIL:I

.field private static EVENT_FRAME_AVAILABLE:I

.field private static EVENT_FRAME_DRAW_AVAILABLE:I

.field private static EVENT_GALLERY_ACTIVITY:I

.field private static EVENT_GALLERY_DATALOADER:I

.field private static EVENT_GALLERY_ON_CREATE:I

.field private static EVENT_GALLERY_ON_DESTROY:I

.field private static EVENT_GALLERY_ON_PAUSE:I

.field private static EVENT_GALLERY_ON_RESUME:I

.field private static EVENT_GALLERY_ROOT:I

.field private static EVENT_GALLERY_START_UP:I

.field private static EVENT_GALLERY_VTNP_ONDRAWFRAME:I

.field private static EVENT_GLROOTVIEW:I

.field private static EVENT_GLROOTVIEW_ONDRAWFRAME:I

.field private static EVENT_GLROOTVIEW_REQUEST_RENDER:I

.field private static EVENT_PHOTOPAGE_ACTIVITY:I

.field private static EVENT_PHOTOPAGE_DECODE_SCREENNAIL_JOB:I

.field private static EVENT_PHOTOPAGE_DECODE_SCREENNAIL_LISTENER:I

.field private static EVENT_PHOTOPAGE_DECODE_SCREENNAIL_SUBMIT:I

.field private static EVENT_PHOTOPAGE_FIRE_DATA_CHANGE:I

.field private static EVENT_PHOTOPAGE_GET_UPDATE_INFO:I

.field private static EVENT_PHOTOPAGE_ON_CREATE:I

.field private static EVENT_PHOTOPAGE_ON_RESUME:I

.field private static EVENT_PHOTOPAGE_RELOAD_DATA:I

.field private static EVENT_PHOTOPAGE_UPDATE_CONTENT:I

.field private static EVENT_PHOTOPAGE_UPDATE_IMAGE_CACHE:I

.field private static EVENT_PHOTOPAGE_UPDATE_IMAGE_REQUEST:I

.field private static EVENT_PHOTOPAGE_UPDATE_SLIDING_WINDOW:I

.field private static EVENT_PHOTOPAGE_UPDATE_TILE_PROVIDER:I

.field private static NAME_ALBUMSETPAGE_ACTIVITY:Ljava/lang/String;

.field private static NAME_ALBUMSETPAGE_DECODE_SCREENNAIL_JOB:Ljava/lang/String;

.field private static NAME_ALBUMSETPAGE_DECODE_SCREENNAIL_LISTENER:Ljava/lang/String;

.field private static NAME_ALBUMSETPAGE_DECODE_SCREENNAIL_SUBMIT:Ljava/lang/String;

.field private static NAME_ALBUMSETPAGE_ON_CREATE:Ljava/lang/String;

.field private static NAME_ALBUMSETPAGE_ON_RESUME:Ljava/lang/String;

.field private static NAME_ALBUMSETPAGE_RELOAD_DATA:Ljava/lang/String;

.field private static NAME_DRAW_SCREEN_NAIL:Ljava/lang/String;

.field private static NAME_FIRST_FRAME_AVAILABLE:Ljava/lang/String;

.field private static NAME_FRAME_AVAILABLE:Ljava/lang/String;

.field private static NAME_GALLERY_ACTIVITY:Ljava/lang/String;

.field private static NAME_GALLERY_DATALOADER:Ljava/lang/String;

.field private static NAME_GALLERY_ON_CREATE:Ljava/lang/String;

.field private static NAME_GALLERY_ON_DESTROY:Ljava/lang/String;

.field private static NAME_GALLERY_ON_PAUSE:Ljava/lang/String;

.field private static NAME_GALLERY_ON_RESUME:Ljava/lang/String;

.field private static NAME_GALLERY_ROOT:Ljava/lang/String;

.field private static NAME_GALLERY_START_UP:Ljava/lang/String;

.field private static NAME_GALLERY_VTNP_ONDRAWFRAME:Ljava/lang/String;

.field private static NAME_GLROOTVIEW:Ljava/lang/String;

.field private static NAME_GLROOTVIEW_ONDRAWFRAME:Ljava/lang/String;

.field private static NAME_GLROOTVIEW_REQUEST_RENDER:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_ACTIVITY:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_DECODE_SCREENNAIL_JOB:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_DECODE_SCREENNAIL_LISTENER:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_DECODE_SCREENNAIL_SUBMIT:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_FIRE_DATA_CHANGE:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_GET_UPDATE_INFO:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_ON_CREATE:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_ON_RESUME:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_RELOAD_DATA:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_UPDATE_CONTENT:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_UPDATE_IMAGE_CACHE:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_UPDATE_IMAGE_REQUEST:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_UPDATE_SLIDING_WINDOW:Ljava/lang/String;

.field private static NAME_PHOTOPAGE_UPDATE_TILE_PROVIDER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "GALLERYApp"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ROOT:Ljava/lang/String;

    .line 18
    const-string v0, "Gallery2VideoThumbnailPlayback"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_VTNP_ONDRAWFRAME:Ljava/lang/String;

    .line 19
    const-string v0, "FrameAvailable"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_FRAME_AVAILABLE:Ljava/lang/String;

    .line 20
    const-string v0, "FirstFrameAvailable"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_FIRST_FRAME_AVAILABLE:Ljava/lang/String;

    .line 21
    const-string v0, "DrawScreenNail"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_DRAW_SCREEN_NAIL:Ljava/lang/String;

    .line 28
    const-string v0, "GLRootView"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GLROOTVIEW:Ljava/lang/String;

    .line 29
    const-string v0, "GLRootViewRequestRender"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GLROOTVIEW_REQUEST_RENDER:Ljava/lang/String;

    .line 30
    const-string v0, "GLRootViewOnDrawFrame"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GLROOTVIEW_ONDRAWFRAME:Ljava/lang/String;

    .line 40
    const-string v0, "GalleryActivity"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ACTIVITY:Ljava/lang/String;

    .line 41
    const-string v0, "GalleryOnCreate"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ON_CREATE:Ljava/lang/String;

    .line 42
    const-string v0, "GalleryOnResume"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ON_RESUME:Ljava/lang/String;

    .line 43
    const-string v0, "GalleryOnPause"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ON_PAUSE:Ljava/lang/String;

    .line 44
    const-string v0, "GalleryOnDestroy"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ON_DESTROY:Ljava/lang/String;

    .line 45
    const-string v0, "GalleryStartUp"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_START_UP:Ljava/lang/String;

    .line 52
    const-string v0, "AlbumSetPageActivity"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_ACTIVITY:Ljava/lang/String;

    .line 53
    const-string v0, "AlbumSetPageOnCreate"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_ON_CREATE:Ljava/lang/String;

    .line 54
    const-string v0, "AlbumSetPageOnResume"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_ON_RESUME:Ljava/lang/String;

    .line 61
    const-string v0, "PhotoPageActivity"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_ACTIVITY:Ljava/lang/String;

    .line 62
    const-string v0, "PhotoPageOnCreate"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_ON_CREATE:Ljava/lang/String;

    .line 63
    const-string v0, "PhotoPageOnResume"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_ON_RESUME:Ljava/lang/String;

    .line 84
    const-string v0, "GalleryDataLoader"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_DATALOADER:Ljava/lang/String;

    .line 85
    const-string v0, "PhotoPageReloadData"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_RELOAD_DATA:Ljava/lang/String;

    .line 86
    const-string v0, "PhotoPageGetUpdateInfo"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_GET_UPDATE_INFO:Ljava/lang/String;

    .line 87
    const-string v0, "PhotoPageUpdateContent"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_UPDATE_CONTENT:Ljava/lang/String;

    .line 88
    const-string v0, "PhotoPageUpdateSlidingWindow"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_UPDATE_SLIDING_WINDOW:Ljava/lang/String;

    .line 89
    const-string v0, "PhotoPageUpdateImageCache"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_UPDATE_IMAGE_CACHE:Ljava/lang/String;

    .line 90
    const-string v0, "PhotoPageUpdateTileProvider"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_UPDATE_TILE_PROVIDER:Ljava/lang/String;

    .line 91
    const-string v0, "PhotoPageUpdateImageRequest"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_UPDATE_IMAGE_REQUEST:Ljava/lang/String;

    .line 92
    const-string v0, "PhotoPageFireDataChange"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_FIRE_DATA_CHANGE:Ljava/lang/String;

    .line 93
    const-string v0, "PhotoPageDecodeScreenNailSubmit"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_DECODE_SCREENNAIL_SUBMIT:Ljava/lang/String;

    .line 94
    const-string v0, "PhotoPageDecodeScreenNailJob"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_DECODE_SCREENNAIL_JOB:Ljava/lang/String;

    .line 95
    const-string v0, "PhotoPageDecodeScreenNailListener"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_DECODE_SCREENNAIL_LISTENER:Ljava/lang/String;

    .line 96
    const-string v0, "AlbumSetPageReloadData"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_RELOAD_DATA:Ljava/lang/String;

    .line 97
    const-string v0, "AlbumSetPageDecodeScreenNailSubmit"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_DECODE_SCREENNAIL_SUBMIT:Ljava/lang/String;

    .line 98
    const-string v0, "AlbumSetPageDecodeScreenNailJob"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_DECODE_SCREENNAIL_JOB:Ljava/lang/String;

    .line 99
    const-string v0, "AlbumSetPageDecodeScreenNailListener"

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_DECODE_SCREENNAIL_LISTENER:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ROOT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ROOT:I

    .line 106
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ROOT:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_VTNP_ONDRAWFRAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_VTNP_ONDRAWFRAME:I

    .line 108
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_VTNP_ONDRAWFRAME:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_FRAME_AVAILABLE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_FRAME_AVAILABLE:I

    .line 110
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_VTNP_ONDRAWFRAME:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_FIRST_FRAME_AVAILABLE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_FRAME_DRAW_AVAILABLE:I

    .line 112
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_VTNP_ONDRAWFRAME:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_DRAW_SCREEN_NAIL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_DRAW_SCREEN_NAIL:I

    .line 116
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ROOT:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GLROOTVIEW:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GLROOTVIEW:I

    .line 118
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GLROOTVIEW:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GLROOTVIEW_REQUEST_RENDER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GLROOTVIEW_REQUEST_RENDER:I

    .line 120
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GLROOTVIEW:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GLROOTVIEW_ONDRAWFRAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GLROOTVIEW_ONDRAWFRAME:I

    .line 124
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ROOT:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ACTIVITY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ACTIVITY:I

    .line 126
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ACTIVITY:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ON_CREATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_CREATE:I

    .line 128
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ACTIVITY:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ON_RESUME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_RESUME:I

    .line 130
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ACTIVITY:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ON_PAUSE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_PAUSE:I

    .line 132
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ACTIVITY:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_ON_DESTROY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_DESTROY:I

    .line 134
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ACTIVITY:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_START_UP:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_START_UP:I

    .line 138
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ROOT:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_ACTIVITY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_ACTIVITY:I

    .line 140
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_ACTIVITY:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_ON_CREATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_ON_CREATE:I

    .line 142
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_ACTIVITY:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_ON_RESUME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_ON_RESUME:I

    .line 146
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ROOT:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_ACTIVITY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_ACTIVITY:I

    .line 148
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_ACTIVITY:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_ON_CREATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_ON_CREATE:I

    .line 150
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_ACTIVITY:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_ON_RESUME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_ON_RESUME:I

    .line 154
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ROOT:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_GALLERY_DATALOADER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    .line 156
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_RELOAD_DATA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_RELOAD_DATA:I

    .line 158
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_GET_UPDATE_INFO:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_GET_UPDATE_INFO:I

    .line 160
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_UPDATE_CONTENT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_CONTENT:I

    .line 162
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_UPDATE_SLIDING_WINDOW:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_SLIDING_WINDOW:I

    .line 164
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_UPDATE_IMAGE_CACHE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_IMAGE_CACHE:I

    .line 166
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_UPDATE_TILE_PROVIDER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_TILE_PROVIDER:I

    .line 168
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_UPDATE_IMAGE_REQUEST:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_IMAGE_REQUEST:I

    .line 170
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_FIRE_DATA_CHANGE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_FIRE_DATA_CHANGE:I

    .line 172
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_DECODE_SCREENNAIL_SUBMIT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_DECODE_SCREENNAIL_SUBMIT:I

    .line 174
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_DECODE_SCREENNAIL_JOB:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_DECODE_SCREENNAIL_JOB:I

    .line 176
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_PHOTOPAGE_DECODE_SCREENNAIL_LISTENER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_DECODE_SCREENNAIL_LISTENER:I

    .line 178
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_RELOAD_DATA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_RELOAD_DATA:I

    .line 180
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_DECODE_SCREENNAIL_SUBMIT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_DECODE_SCREENNAIL_SUBMIT:I

    .line 182
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_DECODE_SCREENNAIL_JOB:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_DECODE_SCREENNAIL_JOB:I

    .line 184
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_DATALOADER:I

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->NAME_ALBUMSETPAGE_DECODE_SCREENNAIL_LISTENER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_DECODE_SCREENNAIL_LISTENER:I

    .line 186
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    return-void
.end method

.method public static startProfileAlbumSetPageDecodeScreenNailJob()V
    .locals 2

    .prologue
    .line 444
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_DECODE_SCREENNAIL_JOB:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 447
    return-void
.end method

.method public static startProfileAlbumSetPageOnCreate()V
    .locals 2

    .prologue
    .line 248
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_ON_CREATE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 251
    return-void
.end method

.method public static startProfileAlbumSetPageOnResume()V
    .locals 2

    .prologue
    .line 260
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_ON_RESUME:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 263
    return-void
.end method

.method public static startProfileAlbumSetPageReloadData()V
    .locals 2

    .prologue
    .line 426
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_RELOAD_DATA:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 429
    return-void
.end method

.method public static startProfileDrawScreenNail()V
    .locals 2

    .prologue
    .line 214
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_DRAW_SCREEN_NAIL:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 217
    return-void
.end method

.method public static startProfileFirstFrameAvailable()V
    .locals 2

    .prologue
    .line 202
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_FRAME_DRAW_AVAILABLE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 205
    return-void
.end method

.method public static startProfileGALLERYOnDestroy()V
    .locals 2

    .prologue
    .line 494
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_DESTROY:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 497
    return-void
.end method

.method public static startProfileGALLERYOnPause()V
    .locals 2

    .prologue
    .line 482
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_PAUSE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 485
    return-void
.end method

.method public static startProfileGalleryOnCreate()V
    .locals 2

    .prologue
    .line 458
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_CREATE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 461
    return-void
.end method

.method public static startProfileGalleryOnResume()V
    .locals 2

    .prologue
    .line 470
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_RESUME:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 473
    return-void
.end method

.method public static startProfileGalleryStartUp()V
    .locals 2

    .prologue
    .line 506
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_START_UP:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 509
    return-void
.end method

.method public static startProfileOnDrawFrame()V
    .locals 2

    .prologue
    .line 234
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GLROOTVIEW_ONDRAWFRAME:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 237
    return-void
.end method

.method public static startProfilePhotoPageDecodeScreenNailJob()V
    .locals 2

    .prologue
    .line 402
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_DECODE_SCREENNAIL_JOB:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 405
    return-void
.end method

.method public static startProfilePhotoPageDecodeScreenNailListener()V
    .locals 2

    .prologue
    .line 414
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_DECODE_SCREENNAIL_LISTENER:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 417
    return-void
.end method

.method public static startProfilePhotoPageFireDataChange()V
    .locals 2

    .prologue
    .line 384
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_FIRE_DATA_CHANGE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 387
    return-void
.end method

.method public static startProfilePhotoPageGetUpdateInfo()V
    .locals 2

    .prologue
    .line 312
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_GET_UPDATE_INFO:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 315
    return-void
.end method

.method public static startProfilePhotoPageOnCreate()V
    .locals 2

    .prologue
    .line 274
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_ON_CREATE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 277
    return-void
.end method

.method public static startProfilePhotoPageOnResume()V
    .locals 2

    .prologue
    .line 286
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_ON_RESUME:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 289
    return-void
.end method

.method public static startProfilePhotoPageReloadData()V
    .locals 2

    .prologue
    .line 300
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_RELOAD_DATA:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 303
    return-void
.end method

.method public static startProfilePhotoPageUpdateContent()V
    .locals 2

    .prologue
    .line 324
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_CONTENT:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 327
    return-void
.end method

.method public static startProfilePhotoPageUpdateImageCache()V
    .locals 2

    .prologue
    .line 348
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_IMAGE_CACHE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 351
    return-void
.end method

.method public static startProfilePhotoPageUpdateImageRequest()V
    .locals 2

    .prologue
    .line 372
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_IMAGE_REQUEST:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 375
    return-void
.end method

.method public static startProfilePhotoPageUpdateSlidingWindow()V
    .locals 2

    .prologue
    .line 336
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_SLIDING_WINDOW:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 339
    return-void
.end method

.method public static startProfilePhotoPageUpdateTileProvider()V
    .locals 2

    .prologue
    .line 360
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_TILE_PROVIDER:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 363
    return-void
.end method

.method public static stopProfileAlbumSetPageDecodeScreenNailJob()V
    .locals 2

    .prologue
    .line 450
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_DECODE_SCREENNAIL_JOB:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 453
    return-void
.end method

.method public static stopProfileAlbumSetPageOnCreate()V
    .locals 2

    .prologue
    .line 254
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_ON_CREATE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 257
    return-void
.end method

.method public static stopProfileAlbumSetPageOnResume()V
    .locals 2

    .prologue
    .line 266
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_ON_RESUME:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 269
    return-void
.end method

.method public static stopProfileAlbumSetPageReloadData()V
    .locals 2

    .prologue
    .line 432
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_RELOAD_DATA:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 435
    return-void
.end method

.method public static stopProfileDrawScreenNail()V
    .locals 2

    .prologue
    .line 220
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_DRAW_SCREEN_NAIL:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 223
    return-void
.end method

.method public static stopProfileFirstFrameAvailable()V
    .locals 2

    .prologue
    .line 208
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_FRAME_DRAW_AVAILABLE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 211
    return-void
.end method

.method public static stopProfileGALLERYOnDestroy()V
    .locals 2

    .prologue
    .line 500
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_DESTROY:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 503
    return-void
.end method

.method public static stopProfileGALLERYOnPause()V
    .locals 2

    .prologue
    .line 488
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_PAUSE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 491
    return-void
.end method

.method public static stopProfileGalleryOnCreate()V
    .locals 2

    .prologue
    .line 464
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_CREATE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 467
    return-void
.end method

.method public static stopProfileGalleryOnResume()V
    .locals 2

    .prologue
    .line 476
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_ON_RESUME:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 479
    return-void
.end method

.method public static stopProfileGalleryStartUp()V
    .locals 2

    .prologue
    .line 512
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GALLERY_START_UP:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 515
    return-void
.end method

.method public static stopProfileOnDrawFrame()V
    .locals 2

    .prologue
    .line 240
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GLROOTVIEW_ONDRAWFRAME:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 243
    return-void
.end method

.method public static stopProfilePhotoPageDecodeScreenNailJob()V
    .locals 2

    .prologue
    .line 408
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_DECODE_SCREENNAIL_JOB:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 411
    return-void
.end method

.method public static stopProfilePhotoPageDecodeScreenNailListener()V
    .locals 2

    .prologue
    .line 420
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_DECODE_SCREENNAIL_LISTENER:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 423
    return-void
.end method

.method public static stopProfilePhotoPageFireDataChange()V
    .locals 2

    .prologue
    .line 390
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_FIRE_DATA_CHANGE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 393
    return-void
.end method

.method public static stopProfilePhotoPageGetUpdateInfo()V
    .locals 2

    .prologue
    .line 318
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_GET_UPDATE_INFO:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 321
    return-void
.end method

.method public static stopProfilePhotoPageOnCreate()V
    .locals 2

    .prologue
    .line 280
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_ON_CREATE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 283
    return-void
.end method

.method public static stopProfilePhotoPageOnResume()V
    .locals 2

    .prologue
    .line 292
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_ON_RESUME:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 295
    return-void
.end method

.method public static stopProfilePhotoPageReloadData()V
    .locals 2

    .prologue
    .line 306
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_RELOAD_DATA:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 309
    return-void
.end method

.method public static stopProfilePhotoPageUpdateContent()V
    .locals 2

    .prologue
    .line 330
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_CONTENT:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 333
    return-void
.end method

.method public static stopProfilePhotoPageUpdateImageCache()V
    .locals 2

    .prologue
    .line 354
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_IMAGE_CACHE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 357
    return-void
.end method

.method public static stopProfilePhotoPageUpdateImageRequest()V
    .locals 2

    .prologue
    .line 378
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_IMAGE_REQUEST:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 381
    return-void
.end method

.method public static stopProfilePhotoPageUpdateSlidingWindow()V
    .locals 2

    .prologue
    .line 342
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_SLIDING_WINDOW:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 345
    return-void
.end method

.method public static stopProfilePhotoPageUpdateTileProvider()V
    .locals 2

    .prologue
    .line 366
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_UPDATE_TILE_PROVIDER:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 369
    return-void
.end method

.method public static triggerAlbumSetPageDecodeScreenNail()V
    .locals 2

    .prologue
    .line 438
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_ALBUMSETPAGE_DECODE_SCREENNAIL_SUBMIT:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 441
    return-void
.end method

.method public static triggerFirstFrameAvailable()V
    .locals 2

    .prologue
    .line 196
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_FRAME_DRAW_AVAILABLE:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 199
    return-void
.end method

.method public static triggerFrameAvailable()V
    .locals 2

    .prologue
    .line 190
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_FRAME_AVAILABLE:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 193
    return-void
.end method

.method public static triggerGLRootViewRequest()V
    .locals 2

    .prologue
    .line 228
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_GLROOTVIEW_REQUEST_RENDER:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 231
    return-void
.end method

.method public static triggerPhotoPageDecodeScreenNail()V
    .locals 2

    .prologue
    .line 396
    sget v0, Lcom/mediatek/gallery3d/util/MediatekMMProfile;->EVENT_PHOTOPAGE_DECODE_SCREENNAIL_SUBMIT:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekMMProfile$MMProfileWrapper;->MMProfileLog(II)V

    .line 399
    return-void
.end method

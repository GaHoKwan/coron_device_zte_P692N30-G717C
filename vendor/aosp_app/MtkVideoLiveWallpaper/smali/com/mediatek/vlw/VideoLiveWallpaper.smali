.class public Lcom/mediatek/vlw/VideoLiveWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "VideoLiveWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vlw/VideoLiveWallpaper$1;,
        Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HIDE:Ljava/lang/String; = "hide"

.field private static final SHOW:Ljava/lang/String; = "show"

.field private static final TAG:Ljava/lang/String; = "VideoLiveWallpaper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;-><init>(Lcom/mediatek/vlw/VideoLiveWallpaper;Lcom/mediatek/vlw/VideoLiveWallpaper$1;)V

    return-object v0
.end method

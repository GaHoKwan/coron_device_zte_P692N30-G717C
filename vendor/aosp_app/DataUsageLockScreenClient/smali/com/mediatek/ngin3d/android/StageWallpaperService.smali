.class public Lcom/mediatek/ngin3d/android/StageWallpaperService;
.super Lcom/mediatek/ngin3d/android/GLWallpaperService;
.source "StageWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;,
        Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;
    }
.end annotation


# static fields
.field private static final DEBUG_WALLPAPER:Z = true

.field private static final TAG:Ljava/lang/String; = "StageWallpaper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v0

    return-object v0
.end method

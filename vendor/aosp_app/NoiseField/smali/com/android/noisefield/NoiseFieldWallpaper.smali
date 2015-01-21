.class public Lcom/android/noisefield/NoiseFieldWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "NoiseFieldWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/noisefield/NoiseFieldWallpaper$1;,
        Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/noisefield/NoiseFieldWallpaper$RenderScriptEngine;-><init>(Lcom/android/noisefield/NoiseFieldWallpaper;Lcom/android/noisefield/NoiseFieldWallpaper$1;)V

    return-object v0
.end method

.class public Lcom/android/phasebeam/PhaseBeamWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "PhaseBeamWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phasebeam/PhaseBeamWallpaper$1;,
        Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phasebeam/PhaseBeamWallpaper$RenderScriptEngine;-><init>(Lcom/android/phasebeam/PhaseBeamWallpaper;Lcom/android/phasebeam/PhaseBeamWallpaper$1;)V

    return-object v0
.end method

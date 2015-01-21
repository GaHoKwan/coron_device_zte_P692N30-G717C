.class public Lcom/android/galaxy4/Galaxy4Wallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "Galaxy4Wallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/galaxy4/Galaxy4Wallpaper$1;,
        Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/galaxy4/Galaxy4Wallpaper$RenderScriptEngine;-><init>(Lcom/android/galaxy4/Galaxy4Wallpaper;Lcom/android/galaxy4/Galaxy4Wallpaper$1;)V

    return-object v0
.end method

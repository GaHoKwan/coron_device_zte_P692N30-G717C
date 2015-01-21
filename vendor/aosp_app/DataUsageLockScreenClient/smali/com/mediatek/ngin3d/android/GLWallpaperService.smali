.class Lcom/mediatek/ngin3d/android/GLWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;,
        Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GLWallpaperService"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 268
    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;-><init>(Lcom/mediatek/ngin3d/android/GLWallpaperService;)V

    return-object v0
.end method

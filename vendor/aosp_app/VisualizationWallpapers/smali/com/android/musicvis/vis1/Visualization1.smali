.class public Lcom/android/musicvis/vis1/Visualization1;
.super Landroid/service/wallpaper/WallpaperService;
.source "Visualization1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/musicvis/vis1/Visualization1$CubeEngine;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/musicvis/vis1/Visualization1;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/musicvis/vis1/Visualization1;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 41
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;

    invoke-direct {v0, p0}, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;-><init>(Lcom/android/musicvis/vis1/Visualization1;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 46
    return-void
.end method

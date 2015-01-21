.class public Lcom/android/wallpaper/nexus/NexusWallpaper;
.super Lcom/android/wallpaper/RenderScriptWallpaper;
.source "NexusWallpaper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/wallpaper/RenderScriptWallpaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected createScene(II)Lcom/android/wallpaper/RenderScriptScene;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 24
    new-instance v0, Lcom/android/wallpaper/nexus/NexusRS;

    invoke-direct {v0, p1, p2}, Lcom/android/wallpaper/nexus/NexusRS;-><init>(II)V

    return-object v0
.end method

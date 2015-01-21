.class public Lcom/mediatek/wallpaper/plugin/Op09WallpaperPluginExt;
.super Landroid/content/ContextWrapper;
.source "Op09WallpaperPluginExt.java"

# interfaces
.implements Lcom/mediatek/common/wallpaper/IWallpaperPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getPluginDefaultImage()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f020158

    return v0
.end method

.method public getPluginResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

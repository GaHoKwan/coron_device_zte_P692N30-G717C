.class public Lcom/android/wallpaper/grass/Grass;
.super Landroid/app/Activity;
.source "Grass.java"


# instance fields
.field private mView:Lcom/android/wallpaper/grass/GrassView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/android/wallpaper/grass/GrassView;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/grass/GrassView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wallpaper/grass/Grass;->mView:Lcom/android/wallpaper/grass/GrassView;

    .line 31
    iget-object v0, p0, Lcom/android/wallpaper/grass/Grass;->mView:Lcom/android/wallpaper/grass/GrassView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 43
    iget-object v0, p0, Lcom/android/wallpaper/grass/Grass;->mView:Lcom/android/wallpaper/grass/GrassView;

    invoke-virtual {v0}, Landroid/renderscript/RSSurfaceView;->pause()V

    .line 45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/android/wallpaper/grass/Grass;->mView:Lcom/android/wallpaper/grass/GrassView;

    invoke-virtual {v0}, Landroid/renderscript/RSSurfaceView;->resume()V

    .line 38
    return-void
.end method

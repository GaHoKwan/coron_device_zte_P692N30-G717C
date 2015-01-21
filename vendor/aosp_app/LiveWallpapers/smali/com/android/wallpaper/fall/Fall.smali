.class public Lcom/android/wallpaper/fall/Fall;
.super Landroid/app/Activity;
.source "Fall.java"


# instance fields
.field private mView:Lcom/android/wallpaper/fall/FallView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/android/wallpaper/fall/FallView;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/fall/FallView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wallpaper/fall/Fall;->mView:Lcom/android/wallpaper/fall/FallView;

    .line 30
    iget-object v0, p0, Lcom/android/wallpaper/fall/Fall;->mView:Lcom/android/wallpaper/fall/FallView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 31
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 42
    iget-object v0, p0, Lcom/android/wallpaper/fall/Fall;->mView:Lcom/android/wallpaper/fall/FallView;

    invoke-virtual {v0}, Landroid/renderscript/RSSurfaceView;->pause()V

    .line 44
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 36
    iget-object v0, p0, Lcom/android/wallpaper/fall/Fall;->mView:Lcom/android/wallpaper/fall/FallView;

    invoke-virtual {v0}, Landroid/renderscript/RSSurfaceView;->resume()V

    .line 37
    return-void
.end method

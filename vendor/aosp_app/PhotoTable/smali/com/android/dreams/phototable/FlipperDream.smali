.class public Lcom/android/dreams/phototable/FlipperDream;
.super Landroid/service/dreams/DreamService;
.source "FlipperDream.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FlipperDream"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 36
    const-string v1, "FlipperDream"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dreams/phototable/AlbumSettings;->getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;

    move-result-object v0

    .line 38
    .local v0, settings:Lcom/android/dreams/phototable/AlbumSettings;
    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumSettings;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setContentView(I)V

    .line 44
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setFullscreen(Z)V

    .line 45
    return-void

    .line 41
    :cond_0
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setContentView(I)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 50
    const v1, 0x7f0b0007

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/PhotoCarousel;

    .line 51
    .local v0, carousel:Lcom/android/dreams/phototable/PhotoCarousel;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoCarousel;->removeTasks()V

    .line 54
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDetachedFromWindow()V

    .line 55
    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setInteractive(Z)V

    .line 31
    return-void
.end method

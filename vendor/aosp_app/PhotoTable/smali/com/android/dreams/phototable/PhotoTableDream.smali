.class public Lcom/android/dreams/phototable/PhotoTableDream;
.super Landroid/service/dreams/DreamService;
.source "PhotoTableDream.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoTableDream"


# instance fields
.field private mTable:Lcom/android/dreams/phototable/PhotoTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 54
    const-string v1, "PhotoTableDream"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dreams/phototable/AlbumSettings;->getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;

    move-result-object v0

    .line 56
    .local v0, settings:Lcom/android/dreams/phototable/AlbumSettings;
    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumSettings;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const v1, 0x7f040006

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setContentView(I)V

    .line 61
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setFullscreen(Z)V

    .line 62
    return-void

    .line 59
    :cond_0
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setContentView(I)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 66
    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/PhotoTable;

    .line 67
    .local v0, table:Lcom/android/dreams/phototable/PhotoTable;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoTable;->removeTasks()V

    .line 70
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDetachedFromWindow()V

    .line 71
    return-void
.end method

.method public onDreamingStarted()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 34
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 35
    invoke-virtual {p0, v5}, Landroid/service/dreams/DreamService;->setInteractive(Z)V

    .line 37
    const v3, 0x7f0b0006

    invoke-virtual {p0, v3}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/BummerView;

    .line 38
    .local v0, bummer:Lcom/android/dreams/phototable/BummerView;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 40
    .local v1, resources:Landroid/content/res/Resources;
    const/high16 v3, 0x7f08

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f080001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/dreams/phototable/BummerView;->setAnimationParams(ZII)V

    .line 45
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_0
    const v3, 0x7f0b000c

    invoke-virtual {p0, v3}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/dreams/phototable/PhotoTable;

    .line 46
    .local v2, table:Lcom/android/dreams/phototable/PhotoTable;
    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {v2, p0}, Lcom/android/dreams/phototable/PhotoTable;->setDream(Landroid/service/dreams/DreamService;)V

    .line 49
    :cond_1
    return-void
.end method

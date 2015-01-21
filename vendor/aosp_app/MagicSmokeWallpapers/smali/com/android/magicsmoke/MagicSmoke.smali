.class public Lcom/android/magicsmoke/MagicSmoke;
.super Lcom/android/magicsmoke/RenderScriptWallpaper;
.source "MagicSmoke.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/magicsmoke/RenderScriptWallpaper",
        "<",
        "Lcom/android/magicsmoke/MagicSmokeRS;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/magicsmoke/RenderScriptWallpaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected createScene(II)Lcom/android/magicsmoke/MagicSmokeRS;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 23
    new-instance v0, Lcom/android/magicsmoke/MagicSmokeRS;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/magicsmoke/MagicSmokeRS;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method protected bridge synthetic createScene(II)Lcom/android/magicsmoke/RenderScriptScene;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/magicsmoke/MagicSmoke;->createScene(II)Lcom/android/magicsmoke/MagicSmokeRS;

    move-result-object v0

    return-object v0
.end method

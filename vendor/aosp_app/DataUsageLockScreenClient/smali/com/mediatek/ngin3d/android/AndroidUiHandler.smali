.class final Lcom/mediatek/ngin3d/android/AndroidUiHandler;
.super Ljava/lang/Object;
.source "AndroidUiHandler.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static create()Lcom/mediatek/ngin3d/UiHandler;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 51
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/mediatek/ngin3d/android/AndroidUiHandler$1;

    invoke-direct {v1, v0}, Lcom/mediatek/ngin3d/android/AndroidUiHandler$1;-><init>(Landroid/os/Handler;)V

    .line 57
    .local v1, uiHandler:Lcom/mediatek/ngin3d/UiHandler;
    return-object v1
.end method

.class final Lcom/mediatek/ngin3d/android/AndroidUiHandler$1;
.super Ljava/lang/Object;
.source "AndroidUiHandler.java"

# interfaces
.implements Lcom/mediatek/ngin3d/UiHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/android/AndroidUiHandler;->create()Lcom/mediatek/ngin3d/UiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/AndroidUiHandler$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/AndroidUiHandler$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

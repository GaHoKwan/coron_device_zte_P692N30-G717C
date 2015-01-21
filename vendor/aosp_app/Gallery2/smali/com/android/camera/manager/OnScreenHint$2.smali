.class Lcom/android/camera/manager/OnScreenHint$2;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/OnScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/OnScreenHint;


# direct methods
.method constructor <init>(Lcom/android/camera/manager/OnScreenHint;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/camera/manager/OnScreenHint$2;->this$0:Lcom/android/camera/manager/OnScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint$2;->this$0:Lcom/android/camera/manager/OnScreenHint;

    #calls: Lcom/android/camera/manager/OnScreenHint;->handleHide()V
    invoke-static {v0}, Lcom/android/camera/manager/OnScreenHint;->access$200(Lcom/android/camera/manager/OnScreenHint;)V

    .line 216
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint$2;->this$0:Lcom/android/camera/manager/OnScreenHint;

    #getter for: Lcom/android/camera/manager/OnScreenHint;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/camera/manager/OnScreenHint;->access$100(Lcom/android/camera/manager/OnScreenHint;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint$2;->this$0:Lcom/android/camera/manager/OnScreenHint;

    #getter for: Lcom/android/camera/manager/OnScreenHint;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/camera/manager/OnScreenHint;->access$100(Lcom/android/camera/manager/OnScreenHint;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint$2;->this$0:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->removeOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 219
    :cond_0
    return-void
.end method

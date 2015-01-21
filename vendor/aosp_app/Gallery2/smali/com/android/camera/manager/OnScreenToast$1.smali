.class Lcom/android/camera/manager/OnScreenToast$1;
.super Ljava/lang/Object;
.source "OnScreenToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/OnScreenToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/OnScreenToast;


# direct methods
.method constructor <init>(Lcom/android/camera/manager/OnScreenToast;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/camera/manager/OnScreenToast$1;->this$0:Lcom/android/camera/manager/OnScreenToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast$1;->this$0:Lcom/android/camera/manager/OnScreenToast;

    #calls: Lcom/android/camera/manager/OnScreenToast;->handleShow()V
    invoke-static {v0}, Lcom/android/camera/manager/OnScreenToast;->access$000(Lcom/android/camera/manager/OnScreenToast;)V

    .line 210
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast$1;->this$0:Lcom/android/camera/manager/OnScreenToast;

    #getter for: Lcom/android/camera/manager/OnScreenToast;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/camera/manager/OnScreenToast;->access$100(Lcom/android/camera/manager/OnScreenToast;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast$1;->this$0:Lcom/android/camera/manager/OnScreenToast;

    #getter for: Lcom/android/camera/manager/OnScreenToast;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/camera/manager/OnScreenToast;->access$100(Lcom/android/camera/manager/OnScreenToast;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast$1;->this$0:Lcom/android/camera/manager/OnScreenToast;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 212
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast$1;->this$0:Lcom/android/camera/manager/OnScreenToast;

    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast$1;->this$0:Lcom/android/camera/manager/OnScreenToast;

    #getter for: Lcom/android/camera/manager/OnScreenToast;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/camera/manager/OnScreenToast;->access$100(Lcom/android/camera/manager/OnScreenToast;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getOrientationCompensation()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/manager/OnScreenToast;->onOrientationChanged(I)V

    .line 214
    :cond_0
    return-void
.end method

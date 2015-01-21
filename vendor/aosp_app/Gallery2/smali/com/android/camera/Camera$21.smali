.class Lcom/android/camera/Camera$21;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->doShowCSInfo(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$showMs:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3632
    iput-object p1, p0, Lcom/android/camera/Camera$21;->this$0:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/Camera$21;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/android/camera/Camera$21;->val$showMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/android/camera/Camera$21;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCsSpeedManager:Lcom/android/camera/manager/ShowCSSpeedManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$7300(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ShowCSSpeedManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$21;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShowCSSpeedManager;->showText(Ljava/lang/String;)V

    .line 3636
    iget-object v0, p0, Lcom/android/camera/Camera$21;->this$0:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/Camera$21;->val$showMs:I

    #calls: Lcom/android/camera/Camera;->showIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;I)V

    .line 3637
    return-void
.end method

.class Lcom/android/camera/Camera$20;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onlyShowInfo(Ljava/lang/String;I)V
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
    .line 3596
    iput-object p1, p0, Lcom/android/camera/Camera$20;->this$0:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/Camera$20;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/android/camera/Camera$20;->val$showMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3599
    iget-object v0, p0, Lcom/android/camera/Camera$20;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/InfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$20;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/InfoManager;->showText(Ljava/lang/String;)V

    .line 3600
    iget-object v0, p0, Lcom/android/camera/Camera$20;->this$0:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/Camera$20;->val$showMs:I

    #calls: Lcom/android/camera/Camera;->showIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;I)V

    .line 3601
    return-void
.end method

.class Lcom/android/camera/Camera$14;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->applyParameterForFocus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$setArea:Z


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2306
    iput-object p1, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    iput-boolean p2, p0, Lcom/android/camera/Camera$14;->val$setArea:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)Lcom/android/camera/SettingChecker;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/Camera$14;->val$setArea:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingChecker;->applyFocusCapabilities(Z)V

    .line 2312
    iget-object v0, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyParametersToServer()V

    .line 2313
    return-void
.end method

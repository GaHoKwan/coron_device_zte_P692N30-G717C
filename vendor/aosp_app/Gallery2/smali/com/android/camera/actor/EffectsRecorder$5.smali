.class Lcom/android/camera/actor/EffectsRecorder$5;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder$5;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$5;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/android/camera/actor/EffectsRecorder;->access$1100(Lcom/android/camera/actor/EffectsRecorder;)Landroid/media/MediaActionSound;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$5;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/android/camera/actor/EffectsRecorder;->access$1100(Lcom/android/camera/actor/EffectsRecorder;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 936
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$5;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;
    invoke-static {v0, v1}, Lcom/android/camera/actor/EffectsRecorder;->access$1102(Lcom/android/camera/actor/EffectsRecorder;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 938
    :cond_0
    return-void
.end method

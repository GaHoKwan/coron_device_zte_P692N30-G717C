.class Lcom/android/camera/actor/EffectsRecorder$6;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/EffectsRecorder;->sendMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/EffectsRecorder;

.field final synthetic val$effect:I

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/android/camera/actor/EffectsRecorder;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder$6;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    iput p2, p0, Lcom/android/camera/actor/EffectsRecorder$6;->val$effect:I

    iput p3, p0, Lcom/android/camera/actor/EffectsRecorder$6;->val$msg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$6;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mEffectsListener:Lcom/android/camera/actor/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/android/camera/actor/EffectsRecorder;->access$1200(Lcom/android/camera/actor/EffectsRecorder;)Lcom/android/camera/actor/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/actor/EffectsRecorder$6;->val$effect:I

    iget v2, p0, Lcom/android/camera/actor/EffectsRecorder$6;->val$msg:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/actor/EffectsRecorder$EffectsListener;->onEffectsUpdate(II)V

    .line 946
    return-void
.end method

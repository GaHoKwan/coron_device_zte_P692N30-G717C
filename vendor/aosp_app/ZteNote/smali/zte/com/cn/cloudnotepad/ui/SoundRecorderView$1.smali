.class Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$1;
.super Ljava/lang/Object;
.source "SoundRecorderView.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/ui/SoundRecorder$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$1;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 81
    const-string v0, "zhangxue"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError:error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$1;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->onCancel()V

    .line 84
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$1;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$0(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090075

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 75
    return-void
.end method

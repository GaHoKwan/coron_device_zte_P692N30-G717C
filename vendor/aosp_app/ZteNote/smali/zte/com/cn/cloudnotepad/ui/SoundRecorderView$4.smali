.class Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;
.super Ljava/lang/Object;
.source "SoundRecorderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->initLayoutView(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->val$context:Landroid/content/Context;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 352
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$4(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 353
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$5(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 354
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$2(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->pausereview()V

    .line 355
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #setter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I
    invoke-static {v0, v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$6(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;I)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$4(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 357
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$5(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 358
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$2(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->resumereview()V

    .line 359
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #setter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayState:I
    invoke-static {v0, v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$6(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;I)V

    .line 361
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$4;->val$context:Landroid/content/Context;

    #calls: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->updatePlayDisplay(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$7(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;Landroid/content/Context;)V

    goto :goto_0
.end method

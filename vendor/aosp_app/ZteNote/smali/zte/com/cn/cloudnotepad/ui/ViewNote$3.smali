.class Lzte/com/cn/cloudnotepad/ui/ViewNote$3;
.super Ljava/lang/Object;
.source "ViewNote.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/ViewNote;->displayRecordAttachment(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

.field private final synthetic val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

.field private final synthetic val$linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/ViewNote;Landroid/widget/LinearLayout;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->val$linearLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 214
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    #getter for: Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->access$1(Lzte/com/cn/cloudnotepad/ui/ViewNote;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    #getter for: Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPlayRecord:I
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->access$2(Lzte/com/cn/cloudnotepad/ui/ViewNote;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 220
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    #getter for: Lzte/com/cn/cloudnotepad/ui/ViewNote;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->access$1(Lzte/com/cn/cloudnotepad/ui/ViewNote;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    #setter for: Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurPlayRecord:I
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->access$3(Lzte/com/cn/cloudnotepad/ui/ViewNote;I)V

    .line 222
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mSoundRecordView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->val$linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$3;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playSoundRecord(Landroid/content/Context;Landroid/widget/LinearLayout;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    goto :goto_0
.end method

.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addResource(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

.field private final synthetic val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 877
    const-string v0, "record"

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 878
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 879
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurPlayRecord:I
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$21(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 890
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 882
    .restart local p1
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 885
    :cond_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    #setter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurPlayRecord:I
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$22(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;I)V

    .line 886
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mSoundRecorderView:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    invoke-virtual {v0, v1, p1, v2}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playSoundRecord(Landroid/content/Context;Landroid/widget/LinearLayout;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    goto :goto_0

    .line 887
    .restart local p1
    :cond_3
    const-string v0, "handwrite"

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$12;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->viewFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

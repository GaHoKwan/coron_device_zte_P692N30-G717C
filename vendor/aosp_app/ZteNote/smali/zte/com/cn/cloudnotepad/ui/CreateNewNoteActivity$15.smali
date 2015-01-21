.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->CreateDeleteObjectAlertDlg(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

.field private final synthetic val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;ILzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->val$index:I

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 948
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->val$index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 949
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    const/4 v1, 0x0

    #setter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addressString:Ljava/lang/String;
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$24(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    const-string v1, ""

    #setter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->locationMapFileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$25(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->updateLocationDisplay()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$26(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    .line 959
    :goto_0
    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->val$index:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 956
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->val$index:I

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->deleteObject(ILzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$27(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;ILzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    .line 957
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$15;->val$index:I

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->resolveEditText(I)V
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$28(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;I)V

    goto :goto_0
.end method

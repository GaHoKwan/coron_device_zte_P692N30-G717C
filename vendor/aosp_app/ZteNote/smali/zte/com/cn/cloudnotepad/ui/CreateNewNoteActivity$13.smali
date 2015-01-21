.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$13;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$13;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$13;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 895
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$13;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$13;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->onObjectClick(Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    invoke-static {v0, p1, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$23(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    .line 896
    const/4 v0, 0x1

    return v0
.end method

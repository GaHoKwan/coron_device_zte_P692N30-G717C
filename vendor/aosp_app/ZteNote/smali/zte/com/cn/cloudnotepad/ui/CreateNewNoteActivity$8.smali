.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$8;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addObject(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

.field private final synthetic val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$8;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$8;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iput p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$8;->val$pos:I

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 711
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$8;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$8;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$8;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$8;->val$pos:I

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addEditText(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)Landroid/widget/EditText;

    .line 712
    return-void
.end method

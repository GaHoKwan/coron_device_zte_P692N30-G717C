.class Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$5;
.super Ljava/lang/Object;
.source "CreateAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateRenameObjectAlertDlg(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

.field private final synthetic val$pos:I

.field private final synthetic val$renameEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$5;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$5;->val$renameEditText:Landroid/widget/EditText;

    iput p4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$5;->val$pos:I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 145
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$5;->val$context:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$5;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$5;->val$renameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$5;->val$pos:I

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->setRenameTitle(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Ljava/lang/String;I)V

    .line 146
    return-void
.end method

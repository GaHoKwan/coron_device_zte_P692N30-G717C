.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addEditText(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)Landroid/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforeLen:I

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

.field private final synthetic val$mEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;->val$mEditText:Landroid/widget/EditText;

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    .line 758
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;->val$mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 759
    .local v1, num:I
    const/16 v5, 0x1388

    if-le v1, v5, :cond_0

    .line 760
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;->val$mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 761
    .local v3, selectionStart:I
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;->val$mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 762
    .local v2, selectionEnd:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;->beforeLen:I

    sub-int v0, v5, v6

    .line 763
    .local v0, inputLen:I
    sub-int v5, v3, v0

    if-ltz v5, :cond_0

    sub-int v5, v3, v0

    if-le v5, v2, :cond_1

    .line 772
    .end local v0           #inputLen:I
    .end local v2           #selectionEnd:I
    .end local v3           #selectionStart:I
    :cond_0
    :goto_0
    return-void

    .line 766
    .restart local v0       #inputLen:I
    .restart local v2       #selectionEnd:I
    .restart local v3       #selectionStart:I
    :cond_1
    sub-int v5, v3, v0

    invoke-interface {p1, v5, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 767
    move v4, v3

    .line 768
    .local v4, tempSelection:I
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;->val$mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;->val$mEditText:Landroid/widget/EditText;

    sub-int v6, v4, v0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 770
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->playAudio()V
    invoke-static {v5}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$20(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 754
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$9;->beforeLen:I

    .line 755
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 751
    return-void
.end method

.class Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailInputConnectionWrapper;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "EmailAccountAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailInputConnectionWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .parameter
    .parameter "target"
    .parameter "mutable"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailInputConnectionWrapper;->this$0:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    .line 178
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 179
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 9
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, result:Z
    iget-object v5, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailInputConnectionWrapper;->this$0:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    .line 191
    .local v5, textView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 192
    .local v6, viewText:Landroid/text/Editable;
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 193
    .local v4, selectionStart:I
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 195
    .local v3, selectionEnd:I
    if-ge v4, v3, :cond_1

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v7

    if-ne v3, v7, :cond_1

    .line 196
    invoke-static {v6, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 197
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int v0, v4, v7

    .line 199
    .local v0, deleteEnd:I
    if-le v0, v3, :cond_0

    move v0, v3

    .line 200
    :cond_0
    invoke-interface {v6, v4, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 201
    iget-object v7, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailInputConnectionWrapper;->this$0:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    const/4 v8, 0x1

    #setter for: Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mCommitWrapperState:Z
    invoke-static {v7, v8}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->access$302(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;Z)Z

    .line 203
    .end local v0           #deleteEnd:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    .line 205
    iget-object v7, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailInputConnectionWrapper;->this$0:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    #getter for: Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mCommitWrapperState:Z
    invoke-static {v7}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->access$300(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 206
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int v1, v4, v7

    .line 207
    .local v1, newSelectionStart:I
    if-le v1, v3, :cond_2

    move v3, v1

    .end local v3           #selectionEnd:I
    :cond_2
    invoke-static {v6, v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 209
    iget-object v7, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailInputConnectionWrapper;->this$0:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    const/4 v8, 0x0

    #setter for: Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mCommitWrapperState:Z
    invoke-static {v7, v8}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->access$302(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;Z)Z

    .line 211
    .end local v1           #newSelectionStart:I
    :cond_3
    return v2
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$EmailInputConnectionWrapper;->this$0:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    #setter for: Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mIMEFullScreenMode:Z
    invoke-static {v0, p1}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->access$202(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;Z)Z

    .line 184
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

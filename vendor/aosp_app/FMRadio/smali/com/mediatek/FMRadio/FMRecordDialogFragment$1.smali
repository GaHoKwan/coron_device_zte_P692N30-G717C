.class Lcom/mediatek/FMRadio/FMRecordDialogFragment$1;
.super Ljava/lang/Object;
.source "FMRecordDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRecordDialogFragment;->setTextChangedCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRecordDialogFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRecordDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRecordDialogFragment$1;->this$0:Lcom/mediatek/FMRadio/FMRecordDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 240
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 244
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    .line 249
    const-string v1, "FmRx/RecordDlg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged() s:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", before:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecordDialogFragment$1;->this$0:Lcom/mediatek/FMRadio/FMRecordDialogFragment;

    #setter for: Lcom/mediatek/FMRadio/FMRecordDialogFragment;->mIsNeedCheckFilenameExist:Z
    invoke-static {v1, v4}, Lcom/mediatek/FMRadio/FMRecordDialogFragment;->access$002(Lcom/mediatek/FMRadio/FMRecordDialogFragment;Z)Z

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, recordName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".*[/\\\\:*?\"<>|\t].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecordDialogFragment$1;->this$0:Lcom/mediatek/FMRadio/FMRecordDialogFragment;

    #getter for: Lcom/mediatek/FMRadio/FMRecordDialogFragment;->mButtonSave:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRecordDialogFragment;->access$100(Lcom/mediatek/FMRadio/FMRecordDialogFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecordDialogFragment$1;->this$0:Lcom/mediatek/FMRadio/FMRecordDialogFragment;

    #getter for: Lcom/mediatek/FMRadio/FMRecordDialogFragment;->mButtonSave:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRecordDialogFragment;->access$100(Lcom/mediatek/FMRadio/FMRecordDialogFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

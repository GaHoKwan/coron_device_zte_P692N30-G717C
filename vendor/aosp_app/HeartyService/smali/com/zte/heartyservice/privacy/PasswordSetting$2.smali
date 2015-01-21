.class Lcom/zte/heartyservice/privacy/PasswordSetting$2;
.super Ljava/lang/Object;
.source "PasswordSetting.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$3000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$3000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$3000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1503
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$3000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$3000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2

    .line 1505
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1508
    :cond_2
    return-void

    .line 1500
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1490
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1484
    return-void
.end method

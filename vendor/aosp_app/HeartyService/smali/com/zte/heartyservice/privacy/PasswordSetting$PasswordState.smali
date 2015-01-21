.class abstract Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$State;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PasswordState"
.end annotation


# instance fields
.field protected mPasswordLableRes:I

.field private mSubmitBtnRes:I

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;II)V
    .locals 1
    .parameter
    .parameter "passwordLableRes"
    .parameter "submitBtnRes"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting$State;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    .line 197
    iput p2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->mPasswordLableRes:I

    .line 198
    iput p3, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->mSubmitBtnRes:I

    .line 199
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordLable:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1400(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->mPasswordLableRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->mSubmitBtnRes:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 205
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordSummary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1600(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordSummary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1600(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0435

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setInStealthMode(Z)V

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordSummary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1600(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a032b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

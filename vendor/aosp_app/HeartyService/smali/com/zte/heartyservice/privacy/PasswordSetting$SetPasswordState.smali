.class Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPasswordState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 2
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    .line 1159
    const/4 v0, 0x0

    const v1, 0x7f0a031e

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;II)V

    .line 1160
    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {p1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1161
    const v0, 0x7f0a042e

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->mPasswordLableRes:I

    .line 1165
    :goto_0
    return-void

    .line 1163
    :cond_0
    const v0, 0x7f0a0433

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->mPasswordLableRes:I

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1169
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->enter()V

    .line 1170
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1172
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v1, 0x7f0e02fe

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v1, 0x7f0e02fe

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPassword:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2702(Lcom/zte/heartyservice/privacy/PasswordSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 1183
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    return-object v0
.end method

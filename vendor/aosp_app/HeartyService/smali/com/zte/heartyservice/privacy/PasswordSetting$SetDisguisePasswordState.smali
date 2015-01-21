.class Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDisguisePasswordState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 2
    .parameter

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    .line 1230
    const/4 v0, 0x0

    const v1, 0x7f0a031e

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;II)V

    .line 1231
    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {p1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1232
    const v0, 0x7f0a042d

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->mPasswordLableRes:I

    .line 1236
    :goto_0
    return-void

    .line 1234
    :cond_0
    const v0, 0x7f0a03bd

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->mPasswordLableRes:I

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1240
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;->enter()V

    .line 1241
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1243
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 1245
    :cond_0
    return-void
.end method

.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1249
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkPrivacyPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0437

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1264
    .end local p0
    :goto_0
    return-object p0

    .line 1256
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a03ba

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1263
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #setter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPassword:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2702(Lcom/zte/heartyservice/privacy/PasswordSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 1264
    new-instance v1, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    move-object p0, v1

    goto :goto_0
.end method

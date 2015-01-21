.class Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmPasswordState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 2
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    .line 1190
    const/4 v0, 0x0

    const v1, 0x7f0a0050

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;II)V

    .line 1191
    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {p1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1192
    const v0, 0x7f0a0432

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->mPasswordLableRes:I

    .line 1196
    :goto_0
    return-void

    .line 1194
    :cond_0
    const v0, 0x7f0a0434

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->mPasswordLableRes:I

    goto :goto_0
.end method


# virtual methods
.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1200
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;

    move-result-object v0

    .line 1201
    .local v0, confirmPassword:Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPassword:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1202
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isRSAKeyPairExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1204
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPassword(Ljava/lang/String;)V

    .line 1205
    new-instance v1, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v1, v3, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    .line 1223
    :goto_0
    return-object v1

    .line 1206
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->changePassword(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 1208
    goto :goto_0

    .line 1210
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0320

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1223
    :goto_1
    new-instance v1, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    goto :goto_0

    .line 1214
    :cond_2
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1215
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0436

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1218
    :cond_3
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a031f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

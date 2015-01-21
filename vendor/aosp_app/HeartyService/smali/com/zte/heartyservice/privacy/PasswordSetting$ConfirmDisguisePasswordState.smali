.class Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmDisguisePasswordState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 2
    .parameter

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    .line 1271
    const/4 v0, 0x0

    const v1, 0x7f0a0050

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;II)V

    .line 1272
    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {p1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1273
    const v0, 0x7f0a0432

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;->mPasswordLableRes:I

    .line 1277
    :goto_0
    return-void

    .line 1275
    :cond_0
    const v0, 0x7f0a03be

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;->mPasswordLableRes:I

    goto :goto_0
.end method


# virtual methods
.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1281
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;

    move-result-object v0

    .line 1282
    .local v0, confirmPassword:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPassword:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPassword:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PrivacySetting;->setDisguisePassword(Ljava/lang/String;)V

    .line 1284
    const/4 v1, 0x0

    .line 1293
    :goto_0
    return-object v1

    .line 1286
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1287
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0436

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1293
    :goto_1
    new-instance v1, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    goto :goto_0

    .line 1290
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a031f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

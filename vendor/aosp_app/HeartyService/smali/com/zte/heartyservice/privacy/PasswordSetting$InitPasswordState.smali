.class Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$State;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitPasswordState"
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 164
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting$State;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    .line 165
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 170
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v2, 0x7f0a0343

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 172
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 173
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$CreateRSAKeyPairTask;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$CreateRSAKeyPairTask;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$CreateRSAKeyPairTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    return-void
.end method

.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 179
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mInitResult:Z
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1100(Lcom/zte/heartyservice/privacy/PasswordSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->startPrivacyTarget()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1200(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    .line 181
    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->startMonitor()V
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1300()V

    .line 187
    :goto_0
    return-object v3

    .line 183
    :cond_0
    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPassword(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0313

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.class Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;
.super Ljava/lang/Object;
.source "ZTEPrivacyAppLockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const-wide/16 v5, 0x12c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mAppLockPwd:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$000(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, mAppLockPassword:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkPrivacyPassword(Ljava/lang/String;)Z

    move-result v1

    if-ne v4, v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->packageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$400(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->addUnlockedPackage(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mPwdtip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$500(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0412

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 111
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$300(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mAppLockPwd:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$000(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 112
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$202(I)I

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mPwdtip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$500(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0325

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$3;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    invoke-static {}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$208()I

    goto :goto_0
.end method

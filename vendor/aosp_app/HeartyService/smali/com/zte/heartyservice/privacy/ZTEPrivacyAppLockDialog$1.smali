.class Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$1;
.super Landroid/os/Handler;
.source "ZTEPrivacyAppLockDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;
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
    .line 45
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$1;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$1;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->dismiss()V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$1;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mAppLockPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$000(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$1;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$100(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPattern()V

    .line 54
    invoke-static {}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$200()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$1;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$300(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$1;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mAppLockPwd:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$000(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 56
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setErrorLoginTime(Ljava/util/Date;)V

    .line 57
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$202(I)I

    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$1;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    const v1, 0x7f0e004f

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$1;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    const v1, 0x7f0e0047

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

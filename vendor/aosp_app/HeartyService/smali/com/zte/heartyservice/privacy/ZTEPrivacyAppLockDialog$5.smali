.class Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;
.super Ljava/lang/Object;
.source "ZTEPrivacyAppLockDialog.java"

# interfaces
.implements Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;


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
    .line 142
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    const-wide/16 v5, 0x12c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-static {p1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkPrivacyPassword(Ljava/lang/String;)Z

    move-result v1

    if-ne v4, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$100(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Correct:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setDisplayMode(Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;)V

    .line 166
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mPwdtip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$500(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0413

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->packageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$400(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->addUnlockedPackage(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$202(I)I

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$100(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Wrong:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setDisplayMode(Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;)V

    .line 172
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mPwdtip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$500(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0411

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    invoke-static {}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$208()I

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$200()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$5;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    :cond_0
    return-void
.end method

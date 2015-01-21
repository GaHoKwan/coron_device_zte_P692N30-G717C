.class Lcom/zte/heartyservice/privacy/PasswordSetting$3;
.super Ljava/lang/Object;
.source "PasswordSetting.java"

# interfaces
.implements Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;


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
    .line 1511
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

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
    .line 1529
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mChosenPattern:Ljava/util/List;

    .line 1522
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1523
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 1533
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$3000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$3000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$3000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;

    if-eqz v0, :cond_1

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mChosenPattern:Ljava/util/List;

    .line 1537
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->nextState()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$700(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    .line 1548
    :goto_0
    return-void

    .line 1538
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 1539
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Wrong:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setDisplayMode(Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;)V

    .line 1540
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1541
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a042c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1544
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1545
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Correct:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setDisplayMode(Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;)V

    .line 1546
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mChosenPattern:Ljava/util/List;

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mChosenPattern:Ljava/util/List;

    .line 1516
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2100(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1517
    return-void
.end method

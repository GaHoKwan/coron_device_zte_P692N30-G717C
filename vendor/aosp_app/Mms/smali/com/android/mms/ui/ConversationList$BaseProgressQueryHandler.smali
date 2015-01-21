.class public abstract Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseProgressQueryHandler"
.end annotation


# instance fields
.field private mDialog:Lcom/android/mms/ui/NewProgressDialog;

.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 2487
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2488
    return-void
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .locals 3

    .prologue
    .line 2537
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    if-nez v1, :cond_0

    .line 2538
    const-string v1, "ConversationList"

    const-string v2, "mDialog is null!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    :goto_0
    return-void

    .line 2542
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/NewProgressDialog;->setDismiss(Z)V

    .line 2544
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/NewProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2550
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    goto :goto_0

    .line 2545
    :catch_0
    move-exception v0

    .line 2548
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "ConversationList"

    const-string v2, "ignore IllegalArgumentException"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected progress()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2525
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v1, :cond_0

    .line 2526
    iget v1, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mProgress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mProgress:I

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getMax()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2528
    :cond_0
    return v0
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 2506
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v0, :cond_0

    .line 2507
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 2509
    :cond_0
    return-void
.end method

.method public setProgressDialog(Lcom/android/mms/ui/NewProgressDialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    if-nez v0, :cond_0

    .line 2497
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    .line 2499
    :cond_0
    return-void
.end method

.method public showProgressDialog()V
    .locals 1

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v0, :cond_0

    .line 2516
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2518
    :cond_0
    return-void
.end method

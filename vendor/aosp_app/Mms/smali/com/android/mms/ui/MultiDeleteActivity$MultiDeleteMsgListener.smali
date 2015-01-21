.class Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiDeleteMsgListener"
.end annotation


# instance fields
.field private mDeleteLockedMessages:Z

.field private mDeleteThread:Z

.field private mHasLockedMsg:Z

.field private mMaxMmsId:I

.field private mMaxSmsId:I

.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 756
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mDeleteLockedMessages:Z

    .line 751
    iput-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mDeleteThread:Z

    .line 752
    iput-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mHasLockedMsg:Z

    .line 757
    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 749
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mMaxSmsId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 749
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mMaxMmsId:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 777
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$400(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v2}, Lcom/android/mms/ui/DeleteProgressDialogUtil;->getProgressDialog(Landroid/content/Context;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->setProgressDialog(Lcom/android/mms/ui/NewProgressDialog;)V

    .line 779
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$400(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->showProgressDialog()V

    .line 781
    iget-boolean v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mDeleteThread:Z

    if-eqz v1, :cond_1

    .line 782
    iget-boolean v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mHasLockedMsg:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mDeleteLockedMessages:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mHasLockedMsg:Z

    if-eqz v1, :cond_1

    .line 783
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$1;-><init>(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 868
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mDeleteLockedMessages:Z

    .line 803
    .local v0, deleteLocked:Z
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;-><init>(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 773
    iput-boolean p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mDeleteLockedMessages:Z

    .line 774
    return-void
.end method

.method public setDeleteThread(Z)V
    .locals 0
    .parameter "deleteThread"

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mDeleteThread:Z

    .line 770
    return-void
.end method

.method public setHasLockedMsg(Z)V
    .locals 0
    .parameter "hasLockedMsg"

    .prologue
    .line 765
    iput-boolean p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mHasLockedMsg:Z

    .line 766
    return-void
.end method

.method public setMaxMsgId(II)V
    .locals 0
    .parameter "mmsId"
    .parameter "smsId"

    .prologue
    .line 760
    iput p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mMaxMmsId:I

    .line 761
    iput p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mMaxSmsId:I

    .line 762
    return-void
.end method

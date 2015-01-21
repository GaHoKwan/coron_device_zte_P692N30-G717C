.class final Lcom/android/mms/ui/FolderModeSmsViewer$1;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;->updateNotification(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 588
    iput p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$1;->val$type:I

    iput-object p2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x2

    .line 590
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$1;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 592
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 594
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$1;->val$type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 596
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/android/mms/transaction/WapPushMessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    goto :goto_0

    .line 598
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$1;->val$type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/CBMessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    goto :goto_0
.end method

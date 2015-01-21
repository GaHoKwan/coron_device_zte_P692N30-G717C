.class Lcom/android/mms/data/WorkingMessage$DraftInterface$1;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage$DraftInterface;->updateAfterSaveDraftFinished(Landroid/net/Uri;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/data/WorkingMessage$DraftInterface;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage$DraftInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface$1;->this$1:Lcom/android/mms/data/WorkingMessage$DraftInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface$1;->this$1:Lcom/android/mms/data/WorkingMessage$DraftInterface;

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface$1;->this$1:Lcom/android/mms/data/WorkingMessage$DraftInterface;

    iget-object v1, v1, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface$1;->this$1:Lcom/android/mms/data/WorkingMessage$DraftInterface;

    iget-object v2, v2, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0104

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface$1;->this$1:Lcom/android/mms/data/WorkingMessage$DraftInterface;

    iget-object v6, v6, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b00b9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method

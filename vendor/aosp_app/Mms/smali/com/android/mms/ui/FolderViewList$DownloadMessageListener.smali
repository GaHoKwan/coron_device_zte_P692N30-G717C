.class Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;
.super Ljava/lang/Object;
.source "FolderViewList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadMessageListener"
.end annotation


# instance fields
.field private final iMessageid:I

.field private final iSimid:I

.field private final mDownloadUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/FolderViewList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/FolderViewList;Landroid/net/Uri;II)V
    .locals 3
    .parameter
    .parameter "sDownloadUri"
    .parameter "simid"
    .parameter "msgid"

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p2, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->mDownloadUri:Landroid/net/Uri;

    .line 784
    const-string v0, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDownloadUri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->mDownloadUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iput p3, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->iSimid:I

    .line 786
    const-string v0, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iSimid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->iSimid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iput p4, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->iMessageid:I

    .line 788
    const-string v0, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iMessageid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->iMessageid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 792
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$1200()Landroid/net/Uri;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->iMessageid:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    #calls: Lcom/android/mms/ui/FolderViewList;->markMmsIndReaded(Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/FolderViewList;->access$1300(Lcom/android/mms/ui/FolderViewList;Landroid/net/Uri;)V

    .line 793
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    const-wide/16 v3, -0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 795
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    .line 796
    .local v1, sManager:Lcom/android/mms/util/DownloadManager;
    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$1200()Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->iMessageid:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/DownloadManager;->setState(Landroid/net/Uri;I)V

    .line 797
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/FolderViewList;->access$600(Lcom/android/mms/ui/FolderViewList;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 798
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "uri"

    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->mDownloadUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 802
    const-string v2, "simId"

    iget v3, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->iSimid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 803
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/FolderViewList;->access$600(Lcom/android/mms/ui/FolderViewList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 804
    return-void
.end method

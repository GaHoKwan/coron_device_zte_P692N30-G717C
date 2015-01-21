.class Lcom/android/mms/transaction/NotificationTransaction$1;
.super Ljava/lang/Thread;
.source "NotificationTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/NotificationTransaction;->processNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/NotificationTransaction;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/NotificationTransaction;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/mms/transaction/NotificationTransaction$1;->this$0:Lcom/android/mms/transaction/NotificationTransaction;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction$1;->this$0:Lcom/android/mms/transaction/NotificationTransaction;

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    #calls: Lcom/android/mms/transaction/NotificationTransaction;->notifyWithoutAutoDownload(Lcom/android/mms/util/DownloadManager;)V
    invoke-static {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->access$000(Lcom/android/mms/transaction/NotificationTransaction;Lcom/android/mms/util/DownloadManager;)V

    .line 181
    return-void
.end method

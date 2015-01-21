.class Lcom/android/soundrecorder/RecordingFileList$4;
.super Landroid/content/BroadcastReceiver;
.source "RecordingFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/RecordingFileList;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/RecordingFileList;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/RecordingFileList;)V
    .locals 0
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/soundrecorder/RecordingFileList$4;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 744
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList$4;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/soundrecorder/RecordingFileList;->access$100(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 748
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList$4;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #setter for: Lcom/android/soundrecorder/RecordingFileList;->mCheckedList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/soundrecorder/RecordingFileList;->access$902(Lcom/android/soundrecorder/RecordingFileList;Ljava/util/List;)Ljava/util/List;

    .line 749
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList$4;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/soundrecorder/ErrorHandle;->showErrorInfo(Landroid/app/Activity;I)V

    .line 751
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList$4;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v1}, Lcom/android/soundrecorder/RecordingFileList;->finishSelf()V

    .line 755
    :cond_1
    :goto_0
    return-void

    .line 752
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList$4;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList$4;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mCheckedList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/soundrecorder/RecordingFileList;->access$900(Lcom/android/soundrecorder/RecordingFileList;)Ljava/util/List;

    move-result-object v2

    #calls: Lcom/android/soundrecorder/RecordingFileList;->setListData(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/android/soundrecorder/RecordingFileList;->access$500(Lcom/android/soundrecorder/RecordingFileList;Ljava/util/List;)V

    goto :goto_0
.end method

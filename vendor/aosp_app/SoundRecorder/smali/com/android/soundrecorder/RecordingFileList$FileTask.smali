.class public Lcom/android/soundrecorder/RecordingFileList$FileTask;
.super Landroid/os/AsyncTask;
.source "RecordingFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/RecordingFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/RecordingFileList;


# direct methods
.method public constructor <init>(Lcom/android/soundrecorder/RecordingFileList;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .parameter "params"

    .prologue
    .line 604
    const-string v4, "SR/RecordingFileList"

    const-string v5, "<FileTask.doInBackground> begin"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v4, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v4}, Lcom/android/soundrecorder/RecordingFileList;->getSelectedFiles()Ljava/util/List;

    move-result-object v2

    .line 607
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 608
    .local v3, listSize:I
    const-string v4, "SR/RecordingFileList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<FileTask.doInBackground> the number of delete files: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 610
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 611
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 612
    const-string v4, "SR/RecordingFileList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<doInBackground>, the file to be delete is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 616
    const-string v5, "SR/RecordingFileList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<FileTask.doInBackground> delete file ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] fail"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_1
    iget-object v4, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/soundrecorder/SoundRecorderUtils;->deleteFileFromMediaDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 621
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 625
    .end local v0           #file:Ljava/io/File;
    :goto_1
    return-object v4

    .line 609
    .restart local v0       #file:Ljava/io/File;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    .end local v0           #file:Ljava/io/File;
    :cond_3
    const-string v4, "SR/RecordingFileList"

    const-string v5, "<FileTask.doInBackground> end"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 574
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/RecordingFileList$FileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 5

    .prologue
    .line 656
    const-string v2, "SR/RecordingFileList"

    const-string v3, "<FileTask.onCancelled>"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 658
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<FileTask.onCancelled> fragmentManager = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v2, "Progress"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 661
    .local v1, oldFragment:Landroid/app/DialogFragment;
    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 664
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 637
    const-string v0, "SR/RecordingFileList"

    const-string v1, "<FileTask.onPostExecute>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    const-string v1, "Progress"

    #calls: Lcom/android/soundrecorder/RecordingFileList;->removeOldFragmentByTag(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/soundrecorder/RecordingFileList;->access$300(Lcom/android/soundrecorder/RecordingFileList;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #setter for: Lcom/android/soundrecorder/RecordingFileList;->mNeedRemoveProgressDialog:Z
    invoke-static {v0, v2}, Lcom/android/soundrecorder/RecordingFileList;->access$402(Lcom/android/soundrecorder/RecordingFileList;Z)Z

    .line 640
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mActivityForeground:Z
    invoke-static {v0}, Lcom/android/soundrecorder/RecordingFileList;->access$200(Lcom/android/soundrecorder/RecordingFileList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #setter for: Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I
    invoke-static {v0, v2}, Lcom/android/soundrecorder/RecordingFileList;->access$002(Lcom/android/soundrecorder/RecordingFileList;I)I

    .line 642
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/soundrecorder/ErrorHandle;->showErrorInfo(Landroid/app/Activity;I)V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    const/4 v1, 0x0

    #calls: Lcom/android/soundrecorder/RecordingFileList;->setListData(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/soundrecorder/RecordingFileList;->access$500(Lcom/android/soundrecorder/RecordingFileList;Ljava/util/List;)V

    .line 648
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 574
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/RecordingFileList$FileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 581
    const-string v2, "SR/RecordingFileList"

    const-string v3, "<FileTask.onPreExecute>"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mActivityForeground:Z
    invoke-static {v2}, Lcom/android/soundrecorder/RecordingFileList;->access$200(Lcom/android/soundrecorder/RecordingFileList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    const-string v2, "SR/RecordingFileList"

    const-string v3, "<FileTask.onPreExecute> Activity is running in foreground"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList$FileTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 585
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "SR/RecordingFileList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<FileTask.onPreExecute> fragmentManager = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {}, Lcom/android/soundrecorder/ProgressDialogFragment;->newInstance()Lcom/android/soundrecorder/ProgressDialogFragment;

    move-result-object v1

    .line 587
    .local v1, newFragment:Landroid/app/DialogFragment;
    const-string v2, "Progress"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 592
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    .end local v1           #newFragment:Landroid/app/DialogFragment;
    :goto_0
    return-void

    .line 590
    :cond_0
    const-string v2, "SR/RecordingFileList"

    const-string v3, "<FileTask.onPreExecute> Activity is running in background"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

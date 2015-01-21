.class public Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;
.super Landroid/os/AsyncTask;
.source "RecordingFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/RecordingFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/soundrecorder/RecordingFileList;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/RecordingFileList;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 680
    iput-object p2, p0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->mList:Ljava/util/List;

    .line 681
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 670
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 691
    const-string v0, "SR/RecordingFileList"

    const-string v1, "<QueryDataTask.doInBackground>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordingFileList;->queryData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 670
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v0, "SR/RecordingFileList"

    const-string v1, "<QueryDataTask.onPostExecute>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mActivityForeground:Z
    invoke-static {v0}, Lcom/android/soundrecorder/RecordingFileList;->access$200(Lcom/android/soundrecorder/RecordingFileList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    if-nez p1, :cond_1

    .line 700
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    const-string v1, "Delete"

    #calls: Lcom/android/soundrecorder/RecordingFileList;->removeOldFragmentByTag(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/soundrecorder/RecordingFileList;->access$300(Lcom/android/soundrecorder/RecordingFileList;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/soundrecorder/RecordingFileList;->access$100(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/soundrecorder/RecordingFileList;->access$600(Lcom/android/soundrecorder/RecordingFileList;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 702
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mDeleteButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/soundrecorder/RecordingFileList;->access$700(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mRecordButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/soundrecorder/RecordingFileList;->access$800(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    iget-object v1, p0, Lcom/android/soundrecorder/RecordingFileList$QueryDataTask;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/RecordingFileList;->afterQuery(Ljava/util/List;)V

    goto :goto_0
.end method

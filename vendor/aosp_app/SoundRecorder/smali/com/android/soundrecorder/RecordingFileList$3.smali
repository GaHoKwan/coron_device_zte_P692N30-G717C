.class Lcom/android/soundrecorder/RecordingFileList$3;
.super Ljava/lang/Object;
.source "RecordingFileList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/RecordingFileList;->onCreate(Landroid/os/Bundle;)V
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
    .line 140
    iput-object p1, p0, Lcom/android/soundrecorder/RecordingFileList$3;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, id:I
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList$3;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I
    invoke-static {v2}, Lcom/android/soundrecorder/RecordingFileList;->access$000(Lcom/android/soundrecorder/RecordingFileList;)I

    move-result v2

    if-ne v5, v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList$3;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/soundrecorder/RecordingFileList;->access$100(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/soundrecorder/EditViewAdapter;

    invoke-virtual {v2, p3}, Lcom/android/soundrecorder/EditViewAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList$3;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I
    invoke-static {v2}, Lcom/android/soundrecorder/RecordingFileList;->access$000(Lcom/android/soundrecorder/RecordingFileList;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList$3;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v2}, Lcom/android/soundrecorder/RecordingFileList;->saveLastSelection()V

    .line 155
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList$3;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #setter for: Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I
    invoke-static {v2, v5}, Lcom/android/soundrecorder/RecordingFileList;->access$002(Lcom/android/soundrecorder/RecordingFileList;I)I

    .line 156
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList$3;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v2, v0}, Lcom/android/soundrecorder/RecordingFileList;->swicthAdapterView(I)V

    .line 158
    :cond_0
    return v4

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/android/soundrecorder/RecordingFileList$3;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/soundrecorder/RecordingFileList;->access$100(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 151
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "recordid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

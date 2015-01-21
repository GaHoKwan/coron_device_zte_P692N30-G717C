.class Lcom/android/soundrecorder/RecordingFileList$2;
.super Ljava/lang/Object;
.source "RecordingFileList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 95
    iput-object p1, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 98
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I
    invoke-static {v6}, Lcom/android/soundrecorder/RecordingFileList;->access$000(Lcom/android/soundrecorder/RecordingFileList;)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 99
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/soundrecorder/RecordingFileList;->access$100(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/soundrecorder/EditViewAdapter;

    invoke-virtual {v5, p3}, Lcom/android/soundrecorder/EditViewAdapter;->getItemId(I)J

    move-result-wide v5

    long-to-int v2, v5

    .line 101
    .local v2, id:I
    const/high16 v5, 0x7f0c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 102
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    invoke-virtual {v0, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 104
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/soundrecorder/RecordingFileList;->access$100(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/soundrecorder/EditViewAdapter;

    invoke-virtual {v5, v2, v9}, Lcom/android/soundrecorder/EditViewAdapter;->setCheckBox(IZ)V

    .line 106
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/soundrecorder/RecordingFileList;->access$100(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/soundrecorder/EditViewAdapter;

    invoke-virtual {v5}, Lcom/android/soundrecorder/EditViewAdapter;->getCheckedItemsCount()I

    move-result v1

    .line 108
    .local v1, count:I
    if-nez v1, :cond_0

    .line 109
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v5}, Lcom/android/soundrecorder/RecordingFileList;->saveLastSelection()V

    .line 110
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #setter for: Lcom/android/soundrecorder/RecordingFileList;->mCurrentAdapterMode:I
    invoke-static {v5, v7}, Lcom/android/soundrecorder/RecordingFileList;->access$002(Lcom/android/soundrecorder/RecordingFileList;I)I

    .line 111
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v5, v8}, Lcom/android/soundrecorder/RecordingFileList;->swicthAdapterView(I)V

    .line 136
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #count:I
    .end local v2           #id:I
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    .restart local v2       #id:I
    :cond_1
    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 115
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/soundrecorder/RecordingFileList;->access$100(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/soundrecorder/EditViewAdapter;

    invoke-virtual {v5, v2, v7}, Lcom/android/soundrecorder/EditViewAdapter;->setCheckBox(IZ)V

    goto :goto_0

    .line 119
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #id:I
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    #getter for: Lcom/android/soundrecorder/RecordingFileList;->mRecordingFileListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/soundrecorder/RecordingFileList;->access$100(Lcom/android/soundrecorder/RecordingFileList;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 122
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "dowhat"

    const-string v6, "play"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    if-eqz v4, :cond_4

    .line 124
    const-string v5, "path"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 125
    const-string v5, "path"

    const-string v6, "path"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :cond_3
    const-string v5, "duration"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 128
    const-string v5, "duration"

    const-string v6, "duration"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    :cond_4
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    const-class v6, Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v5, v8, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 134
    iget-object v5, p0, Lcom/android/soundrecorder/RecordingFileList$2;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

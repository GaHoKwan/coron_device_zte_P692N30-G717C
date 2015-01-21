.class public Lcom/zte/heartyservice/privacy/OtherFilesActivity;
.super Lcom/zte/heartyservice/privacy/FilesActivity;
.source "OtherFilesActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;
    }
.end annotation


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/OtherFilesActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->startFileExplorer()V

    return-void
.end method

.method private startFileExplorer()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v0, fileBrowserIntent:Landroid/content/Intent;
    const-string v1, "intent.action.startActivity.ROOT_SD_BROWSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method


# virtual methods
.method public varargs doInBackground(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "task"
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 180
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getRecords()Landroid/database/Cursor;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    :cond_0
    new-instance v2, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V

    .line 185
    .local v2, item:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->id:I

    .line 186
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->randomKeyStr:Ljava/lang/String;

    .line 187
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    .line 188
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->op:Ljava/lang/String;

    .line 189
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->nn:Ljava/lang/String;

    .line 190
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->ot:J

    .line 191
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->hs:I

    .line 192
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->tp:I

    .line 193
    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->decrypt()V

    .line 195
    invoke-virtual {p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 205
    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    const/4 v0, 0x0

    .line 211
    .end local v2           #item:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    :cond_1
    :goto_0
    return-object v3

    .line 198
    .restart local v2       #item:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    :cond_2
    :try_start_1
    invoke-virtual {p1, v2}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->publishItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 199
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    .end local v2           #item:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    :cond_3
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 205
    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    if-eqz v0, :cond_4

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    const/4 v0, 0x0

    .line 211
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_5

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    const/4 v0, 0x0

    :cond_5
    throw v3
.end method

.method protected loadData(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 163
    if-nez p1, :cond_1

    .line 164
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isNeedRefreshList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    .line 170
    :cond_1
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->loadData(Z)V

    .line 171
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->loadData(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;)V

    .line 172
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->refreshUI(J)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    new-instance v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/OtherFilesActivity$1;-><init>(Lcom/zte/heartyservice/privacy/OtherFilesActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mEmptyListOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 60
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mListView:Landroid/widget/ListView;

    .line 62
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 65
    const-string v0, "1"

    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setFolderUuid(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->loadData(Z)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 136
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 138
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 155
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 158
    :goto_0
    return v0

    .line 145
    :sswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->startFileExplorer()V

    .line 158
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :sswitch_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->startDecryptTask(Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 152
    :sswitch_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->doWhenDelete(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0403 -> :sswitch_0
        0x7f0e040c -> :sswitch_2
        0x7f0e0413 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->onResume()V

    .line 73
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 74
    return-void
.end method

.method public updateView(Z)V
    .locals 0
    .parameter "isEmpty"

    .prologue
    .line 222
    return-void
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, item:Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;
    if-nez p3, :cond_0

    .line 85
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030044

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 87
    new-instance v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;

    .end local v0           #item:Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;
    invoke-direct {v0, p0, v6}, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;-><init>(Lcom/zte/heartyservice/privacy/OtherFilesActivity;Lcom/zte/heartyservice/privacy/OtherFilesActivity$1;)V

    .line 88
    .restart local v0       #item:Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;
    const v2, 0x7f0e0029

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->text:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f0e00a0

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->imageView:Landroid/widget/ImageView;

    .line 90
    const v2, 0x7f0e0085

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->checkBox:Landroid/widget/CheckBox;

    .line 91
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object v1, p1

    .line 96
    check-cast v1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;

    .line 98
    .local v1, otherFilesItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->isEncryFileExist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->text:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_1
    iget v2, v1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->tp:I

    if-ne v2, v8, :cond_2

    .line 107
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f0200fb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :goto_2
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v3, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v2, v3, :cond_3

    .line 114
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 115
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->checkBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/zte/heartyservice/privacy/OtherFilesActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/zte/heartyservice/privacy/OtherFilesActivity$2;-><init>(Lcom/zte/heartyservice/privacy/OtherFilesActivity;Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    :goto_3
    return-object p3

    .line 93
    .end local v1           #otherFilesItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;
    check-cast v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;

    .restart local v0       #item:Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;
    goto :goto_0

    .line 101
    .restart local v1       #otherFilesItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    :cond_1
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->text:Landroid/widget/TextView;

    const v3, 0x7f0a0365

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 110
    :cond_2
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f02011b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 126
    :cond_3
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 127
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3
.end method

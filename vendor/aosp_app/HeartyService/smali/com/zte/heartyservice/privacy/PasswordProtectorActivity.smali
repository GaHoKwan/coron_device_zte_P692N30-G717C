.class public Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "PasswordProtectorActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$HeaderViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PasswordProtectorActivity"

.field private static sNeedRefresh:Z


# instance fields
.field private mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsEmpty:Z

.field private mListView:Landroid/widget/ListView;

.field private mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->sNeedRefresh:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mIsEmpty:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->onItemClickHandler(I)V

    return-void
.end method

.method private addPasswordRecord()V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/zte/heartyservice/privacy/PasswordRecordEditorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static notifyDBChange()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->sNeedRefresh:Z

    .line 44
    return-void
.end method

.method private onItemClickHandler(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 105
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v3, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getItem(I)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/privacy/PasswordRecord;

    .line 107
    .local v2, item:Lcom/zte/heartyservice/privacy/PasswordRecord;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "_id"

    iget-wide v4, v2, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private optionsItemSelectedHandler(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    const-string v0, "PasswordProtectorActivity"

    const-string v1, "optionsItemSelectedHandler unexpected!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 133
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->addPasswordRecord()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x7f0e0407
        :pswitch_0
    .end packed-switch
.end method

.method private reload()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->sNeedRefresh:Z

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->sNeedRefresh:Z

    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->loadData(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;)V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs doInBackground(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13
    .parameter "task"
    .parameter "params"

    .prologue
    .line 156
    const/4 v9, 0x0

    .line 158
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 160
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "passwordprotector"

    sget-object v2, Lcom/zte/heartyservice/privacy/PasswordRecord$Columns;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 164
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v11

    .line 169
    .local v11, keyData:[B
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v8

    .line 173
    .local v8, accountDescription:Ljava/lang/String;
    new-instance v12, Lcom/zte/heartyservice/privacy/PasswordRecord;

    const-wide/16 v1, -0x1

    invoke-direct {v12, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordRecord;-><init>(J)V

    .line 174
    .local v12, pwr:Lcom/zte/heartyservice/privacy/PasswordRecord;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J

    .line 176
    iput-object v8, v12, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountDescription:Ljava/lang/String;

    .line 177
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountType:I

    .line 180
    invoke-virtual {p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 190
    if-eqz v9, :cond_1

    .line 191
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 194
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #accountDescription:Ljava/lang/String;
    .end local v11           #keyData:[B
    .end local v12           #pwr:Lcom/zte/heartyservice/privacy/PasswordRecord;
    :cond_1
    :goto_0
    return-object v1

    .line 183
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #accountDescription:Ljava/lang/String;
    .restart local v11       #keyData:[B
    .restart local v12       #pwr:Lcom/zte/heartyservice/privacy/PasswordRecord;
    :cond_2
    :try_start_1
    invoke-virtual {p1, v12}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->publishItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 184
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 190
    if-eqz v9, :cond_1

    .line 191
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 190
    .end local v8           #accountDescription:Ljava/lang/String;
    .end local v11           #keyData:[B
    .end local v12           #pwr:Lcom/zte/heartyservice/privacy/PasswordRecord;
    :cond_3
    if-eqz v9, :cond_4

    .line 191
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 194
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :goto_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v10

    .line 188
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "PasswordProtectorActivity"

    const-string v2, "loadDataList failed"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    if-eqz v9, :cond_4

    .line 191
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 190
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_5

    .line 191
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public handleClickEvent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 85
    .local v0, viewId:I
    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->addPasswordRecord()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x7f0e00b2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v1, 0x7f03009c

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->setContentView(I)V

    .line 57
    iput-object p0, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mContext:Landroid/content/Context;

    .line 58
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    .line 62
    const v1, 0x7f0a0300

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 64
    const v1, 0x7f0e02b7

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mListView:Landroid/widget/ListView;

    .line 65
    new-instance v1, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 66
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;)V

    .line 67
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$1;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$1;-><init>(Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    const v1, 0x7f0e00b2

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    .local v0, addButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const/4 v1, 0x1

    sput-boolean v1, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->sNeedRefresh:Z

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mIsEmpty:Z

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "PasswordProtectorActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->cancelLoadData()V

    .line 152
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onDestroy()V

    .line 153
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->optionsItemSelectedHandler(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onResume()V

    .line 145
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->reload()V

    .line 146
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 147
    return-void
.end method

.method public updateView(Z)V
    .locals 2
    .parameter "isEmpty"

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mIsEmpty:Z

    if-eq v0, p1, :cond_0

    .line 202
    iput-boolean p1, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mIsEmpty:Z

    .line 203
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mIsEmpty:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->invalidateOptionsMenu()V

    .line 210
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 221
    if-nez p3, :cond_0

    .line 222
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300d7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 224
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$HeaderViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$HeaderViewHolder;-><init>(Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$1;)V

    .line 226
    .local v0, holder:Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$HeaderViewHolder;
    const v2, 0x7f0e031d

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 227
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object v1, p1

    .line 234
    check-cast v1, Lcom/zte/heartyservice/privacy/PasswordRecord;

    .line 237
    .local v1, pwr:Lcom/zte/heartyservice/privacy/PasswordRecord;
    iget-object v2, v0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-object p3

    .line 229
    .end local v0           #holder:Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$HeaderViewHolder;
    .end local v1           #pwr:Lcom/zte/heartyservice/privacy/PasswordRecord;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$HeaderViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$HeaderViewHolder;
    goto :goto_0
.end method

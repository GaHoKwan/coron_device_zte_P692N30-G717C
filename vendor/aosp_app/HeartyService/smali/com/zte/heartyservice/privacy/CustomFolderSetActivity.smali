.class public Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "CustomFolderSetActivity.java"


# instance fields
.field private cf_name_et:Landroid/widget/EditText;

.field private cf_submit_bt_del:Landroid/widget/Button;

.field private cf_submit_bt_submit:Landroid/widget/Button;

.field private folderId:I

.field private folderName:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->folderName:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->folderId:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->uuid:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->cf_submit_bt_submit:Landroid/widget/Button;

    .line 18
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->cf_submit_bt_del:Landroid/widget/Button;

    .line 19
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->cf_name_et:Landroid/widget/EditText;

    .line 20
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    .line 21
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method private closeDB()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 48
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mCursor:Landroid/database/Cursor;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->close()V

    .line 52
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->finish()V

    .line 97
    return-void

    .line 61
    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    .line 62
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->cf_name_et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->folderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    iget v2, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->folderId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->changeFolderById(ILjava/lang/String;Ljava/lang/String;)Z

    .line 65
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    .line 66
    const v1, 0x7f0a0324

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->closeDB()V

    goto :goto_0

    .line 70
    .end local v0           #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 73
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->closeDB()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->closeDB()V

    throw v1

    .line 79
    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    .line 80
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    iget v2, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->folderId:I

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteFolderById(I)Z

    .line 81
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->moveFile2Root(Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNeedRefreshList(Z)V

    .line 83
    const v1, 0x7f0a0323

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->closeDB()V

    goto :goto_0

    .line 84
    :catch_1
    move-exception v1

    .line 87
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->closeDB()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->closeDB()V

    throw v1

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00be -> :sswitch_0
        0x7f0e00f8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->setNeedCheckSD(Z)V

    .line 26
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->setContentView(I)V

    .line 29
    const v0, 0x7f0e00f7

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->cf_name_et:Landroid/widget/EditText;

    .line 31
    const v0, 0x7f0e00be

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->cf_submit_bt_submit:Landroid/widget/Button;

    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->cf_submit_bt_submit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->cf_submit_bt_del:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->cf_submit_bt_del:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->folderName:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->folderId:I

    .line 39
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->uuid:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->cf_name_et:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CustomFolderSetActivity;->folderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

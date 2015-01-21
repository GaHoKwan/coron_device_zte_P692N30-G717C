.class public Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;
.super Lcom/zte/heartyservice/common/ui/FragmentTabs;
.source "DisguiseCommunicationFragmentTabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$3;,
        Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;,
        Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;
    }
.end annotation


# static fields
.field private static final FROM_CALL_LOG:I = 0x2

.field private static final FROM_CONTACT:I = 0x1

.field private static final FROM_SMS:I = 0x3

.field private static final MANUAL:I


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mDisguiseSQLiteOpenHelper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

.field private mImportTask:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/FragmentTabs;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    .line 41
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mImportTask:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;

    .line 42
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->startImport(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;)Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mImportTask:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mDisguiseSQLiteOpenHelper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    return-object v0
.end method

.method public static selectPhoneFromContact(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 202
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :try_start_0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static selectPhonesFromContact(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 192
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.GET_MULTIPLE_PHONES_SINGLE_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->selectPhoneFromContact(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private startImport(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mImportTask:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;-><init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mImportTask:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;

    .line 275
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mImportTask:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ImportTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 223
    if-nez p3, :cond_0

    .line 269
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;>;"
    packed-switch p1, :pswitch_data_0

    .line 268
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->startImport(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 230
    :pswitch_0
    const-string v1, "numbers_array"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    const-string v1, "com.android.contacts.extra.PHONE_URIS"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, numbers:[Ljava/lang/String;
    if-eqz v15, :cond_1

    array-length v1, v15

    if-lez v1, :cond_1

    .line 234
    move-object v7, v15

    .local v7, arr$:[Ljava/lang/String;
    array-length v12, v7

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v12, :cond_1

    aget-object v14, v7, v10

    .line 235
    .local v14, num:Ljava/lang/String;
    new-instance v11, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14, v1}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;-><init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v11, item:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 240
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #item:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;
    .end local v12           #len$:I
    .end local v14           #num:Ljava/lang/String;
    .end local v15           #numbers:[Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 241
    .local v2, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 243
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 245
    if-eqz v8, :cond_3

    .line 246
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    new-instance v11, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;

    const-string v1, "data1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "display_name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v1, v3}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;-><init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .restart local v11       #item:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v11           #item:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;
    :cond_3
    if-eqz v8, :cond_1

    .line 259
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 255
    :catch_0
    move-exception v9

    .line 256
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    if-eqz v8, :cond_1

    .line 259
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 258
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 259
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f0a0306

    const v6, 0x7f0a0305

    const v8, 0x7f0a0303

    .line 46
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/ui/FragmentTabs;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mDisguiseSQLiteOpenHelper:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    .line 49
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    .line 51
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    new-instance v5, Lcom/zte/heartyservice/common/ui/FragmentTabs$TabListener;

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/zte/heartyservice/privacy/DisguiseContactFragment;

    invoke-direct {v5, p0, v6, v7}, Lcom/zte/heartyservice/common/ui/FragmentTabs$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 58
    .local v1, contactTab:Landroid/app/ActionBar$Tab;
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    new-instance v5, Lcom/zte/heartyservice/common/ui/FragmentTabs$TabListener;

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/zte/heartyservice/privacy/DisguiseSmsFragment;

    invoke-direct {v5, p0, v6, v7}, Lcom/zte/heartyservice/common/ui/FragmentTabs$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 65
    .local v2, smsTab:Landroid/app/ActionBar$Tab;
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    new-instance v5, Lcom/zte/heartyservice/common/ui/FragmentTabs$TabListener;

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/zte/heartyservice/privacy/DisguiseCalllogFragment;

    invoke-direct {v5, p0, v6, v7}, Lcom/zte/heartyservice/common/ui/FragmentTabs$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 73
    .local v0, callLogTab:Landroid/app/ActionBar$Tab;
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 74
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 75
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 77
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "select_tab"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactType;->valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/ContactType;

    move-result-object v3

    .line 79
    .local v3, tabType:Lcom/zte/heartyservice/privacy/ContactType;
    sget-object v4, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$3;->$SwitchMap$com$zte$heartyservice$privacy$ContactType:[I

    invoke-virtual {v3}, Lcom/zte/heartyservice/privacy/ContactType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 90
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 94
    :goto_0
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 95
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 96
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 97
    return-void

    .line 81
    :pswitch_0
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/ui/FragmentTabs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 108
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->showAddDialog()V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0400
        :pswitch_0
    .end packed-switch
.end method

.method public showAddDialog()V
    .locals 5

    .prologue
    .line 119
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070041

    const/4 v3, -0x1

    new-instance v4, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$1;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$1;-><init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0174

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 149
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 150
    return-void
.end method

.method public showManualDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 153
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300b9

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 156
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0e00a6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 158
    .local v3, tvPhoneNumber:Landroid/widget/EditText;
    const v5, 0x7f0e00a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 161
    .local v2, tvContactName:Landroid/widget/EditText;
    const v5, 0x7f0a01e0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0173

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0174

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 164
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 165
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;

    invoke-direct {v6, p0, v3, v2, v1}, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$2;-><init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method

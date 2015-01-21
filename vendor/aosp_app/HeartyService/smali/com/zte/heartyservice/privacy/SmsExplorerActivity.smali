.class public Lcom/zte/heartyservice/privacy/SmsExplorerActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "SmsExplorerActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$ListViewCallBacks;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

.field private currentUserNumber:Ljava/lang/String;

.field private listInflator:Landroid/view/LayoutInflater;

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInboxSmsInterceptReceiver:Landroid/content/BroadcastReceiver;

.field private mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

.field private mListView:Landroid/widget/ListView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private name:Ljava/lang/String;

.field private sendImageButton:Landroid/widget/ImageButton;

.field private singleSmsStrategy:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;

.field private smsEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->listItems:Ljava/util/List;

    .line 49
    const-string v0, "SmsExplorerActivity"

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->TAG:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->name:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->ac:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    .line 56
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 144
    new-instance v0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;-><init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mHandler:Landroid/os/Handler;

    .line 251
    new-instance v0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$4;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$4;-><init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mInboxSmsInterceptReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->ac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->listItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->currentUserNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->smsEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private eventInit()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    const v1, 0x7f0e0303

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->smsEditText:Landroid/widget/EditText;

    .line 167
    const v1, 0x7f0e0304

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->sendImageButton:Landroid/widget/ImageButton;

    .line 168
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->sendImageButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$2;-><init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance v1, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-direct {v1, p0, v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    .line 198
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$ListViewCallBacks;)V

    .line 200
    const v1, 0x7f0e0302

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListView:Landroid/widget/ListView;

    .line 201
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 202
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 203
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->setListView(Landroid/widget/ListView;)V

    .line 206
    new-instance v1, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    invoke-direct {v1, p0, v3}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;-><init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    .line 207
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 210
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 211
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0a034e

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 213
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 214
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$3;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$3;-><init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 226
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->INBOX_SMS_INTERCEPT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mInboxSmsInterceptReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 249
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v1, 0x7f0300ca

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "message_name_ac"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->name:Ljava/lang/String;

    .line 65
    const-string v1, "ac"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->ac:Ljava/lang/String;

    .line 66
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->currentUserNumber:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->currentUserNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->TAG:Ljava/lang/String;

    const-string v2, "SmsExplorerActivity start......... "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->listInflator:Landroid/view/LayoutInflater;

    .line 75
    new-instance v1, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->listInflator:Landroid/view/LayoutInflater;

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;-><init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->singleSmsStrategy:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;

    .line 76
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->eventInit()V

    .line 77
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->currentUserNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 273
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 274
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mInboxSmsInterceptReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onDestroy()V

    .line 235
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
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
    .line 291
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 292
    const/4 v1, 0x1

    .line 298
    :goto_0
    return v1

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->singleSmsStrategy:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->createAndShowDialog()V

    .line 295
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {v1, p3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    .line 296
    .local v0, tmpItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->setTag(Ljava/lang/Object;)V

    .line 297
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->singleSmsStrategy:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->setSelectItem(Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;)V

    .line 298
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 284
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->currentUserNumber:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->callNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0404
        :pswitch_0
    .end packed-switch
.end method

.method public removeItem(Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;)V
    .locals 2
    .parameter "selectSmsRecordListItem"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {p1}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->removeItem(I)V

    .line 305
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->singleSmsStrategy:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->updateAddViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

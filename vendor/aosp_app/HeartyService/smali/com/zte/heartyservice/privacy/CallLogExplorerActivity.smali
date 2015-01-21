.class public Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "CallLogExplorerActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;


# instance fields
.field private ac:Ljava/lang/String;

.field private adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

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

.field private mListView:Landroid/widget/ListView;

.field private name:Ljava/lang/String;

.field private singleClgStrategy:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->listItems:Ljava/util/List;

    return-void
.end method

.method private eventInit()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;)V

    .line 62
    const v0, 0x7f0e02e5

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->mListView:Landroid/widget/ListView;

    .line 63
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 64
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 65
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->listItems:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->listItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setItems(Ljava/util/List;)V

    .line 71
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->loadData(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;)V

    .line 72
    return-void
.end method


# virtual methods
.method public varargs doInBackground(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "task"
    .parameter "params"

    .prologue
    .line 131
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getCallInThread(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleClickEvent(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f0300bd

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->setContentView(I)V

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->listInflator:Landroid/view/LayoutInflater;

    .line 44
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "message_name_ac"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->name:Ljava/lang/String;

    .line 46
    const-string v1, "ac"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->ac:Ljava/lang/String;

    .line 47
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->currentUserNumber:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->currentUserNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 53
    :goto_0
    new-instance v1, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->listInflator:Landroid/view/LayoutInflater;

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;-><init>(Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->singleClgStrategy:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;

    .line 54
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->eventInit()V

    .line 55
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->currentUserNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 90
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 91
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->cancelLoadData()V

    .line 127
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onDestroy()V

    .line 128
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "arg1"
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
    .line 115
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->singleClgStrategy:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->createAndShowDialog()V

    .line 116
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->singleClgStrategy:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, p3}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getItem(I)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->setSelectItem(Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;)V

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 108
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 98
    :sswitch_0
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->currentUserNumber:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->callNumber(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "intent.action.startActivity.PRIVACY_MESSAGE_BROWER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, smsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "message_name_ac"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, smsBundle:Landroid/os/Bundle;
    const-string v3, "message_name_ac"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e02ec -> :sswitch_1
        0x7f0e0404 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public removeItem(Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;)V
    .locals 1
    .parameter "selectClgRecordListItem"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->remove(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 122
    return-void
.end method

.method public updateView(Z)V
    .locals 0
    .parameter "isEmpty"

    .prologue
    .line 139
    return-void
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->singleClgStrategy:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->updateAddViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

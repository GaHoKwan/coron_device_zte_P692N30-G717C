.class public Lcom/zte/heartyservice/privacy/FromCallLogStrategy;
.super Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
.source "FromCallLogStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;
    }
.end annotation


# instance fields
.field private callLogRadioG:Landroid/widget/RadioGroup;

.field private callLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

.field private mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

.field private mStrategyTask:Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/view/LayoutInflater;)V
    .locals 1
    .parameter "activity"
    .parameter "listInflator"

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;-><init>(Landroid/view/LayoutInflater;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;

    .line 26
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;)Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;

    return-object p1
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->cancel(Z)Z

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;

    .line 186
    :cond_0
    return-void
.end method

.method public createAndShowDialog()V
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f0300bb

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-super {p0, v0, v1}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->createAndShowDialog(ILandroid/app/Activity;)V

    .line 42
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->callLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0e02e1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->callLogRadioG:Landroid/widget/RadioGroup;

    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->callLogRadioG:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 45
    return-void
.end method

.method public varargs doInBackground(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "task"
    .parameter "params"

    .prologue
    .line 190
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getCallThreads(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Ljava/util/List;

    .line 191
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->setCalllogReadState()V

    .line 192
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleConfirmEvent()V
    .locals 8

    .prologue
    .line 58
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v5}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getListItems()Ljava/util/List;

    move-result-object v3

    .line 59
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, checked_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 61
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .local v2, item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    move-object v4, v2

    .line 62
    check-cast v4, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 63
    .local v4, localContactSmsCallLogItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->isChecked()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 64
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v4           #localContactSmsCallLogItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    :cond_1
    new-instance v5, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->callLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    invoke-direct {v5, p0, v6, v0}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;-><init>(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;Ljava/util/List;)V

    iput-object v5, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;

    .line 78
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$StrategyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method

.method public handleRadioEvent(I)V
    .locals 1
    .parameter "checkedId"

    .prologue
    .line 49
    const v0, 0x7f0e02e2

    if-ne p1, v0, :cond_1

    .line 50
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->callLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const v0, 0x7f0e02e3

    if-ne p1, v0, :cond_0

    .line 52
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->callLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    goto :goto_0
.end method

.method public listInit()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getCallThreads(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDivider(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .parameter "inflater"

    .prologue
    .line 35
    const v1, 0x7f0300e9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, ScrollItemView:Landroid/view/View;
    return-object v0
.end method

.method public updateAddViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 84
    const v1, 0x7f0300bf

    invoke-virtual {p0, p3, p4, v1}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p3

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    .line 86
    .local v0, conSmsCallLogItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 87
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->imageButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$1;

    invoke-direct {v2, p0, v0}, Lcom/zte/heartyservice/privacy/FromCallLogStrategy$1;-><init>(Lcom/zte/heartyservice/privacy/FromCallLogStrategy;Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 97
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    return-object p3

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateView(Z)V
    .locals 1
    .parameter "isEmpty"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updateView(Z)V

    .line 198
    return-void
.end method

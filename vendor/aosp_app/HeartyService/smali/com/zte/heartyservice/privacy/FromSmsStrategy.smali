.class public Lcom/zte/heartyservice/privacy/FromSmsStrategy;
.super Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
.source "FromSmsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

.field private mStrategyTask:Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;

.field private smsRadioG:Landroid/widget/RadioGroup;

.field private smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/view/LayoutInflater;)V
    .locals 1
    .parameter "activity"
    .parameter "listInflator"

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;-><init>(Landroid/view/LayoutInflater;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;

    .line 25
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/FromSmsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/privacy/FromSmsStrategy;Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;)Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;

    return-object p1
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->cancel(Z)Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;

    .line 164
    :cond_0
    return-void
.end method

.method public createAndShowDialog()V
    .locals 2

    .prologue
    .line 34
    const v0, 0x7f0300d1

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-super {p0, v0, v1}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->createAndShowDialog(ILandroid/app/Activity;)V

    .line 35
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0e0317

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->smsRadioG:Landroid/widget/RadioGroup;

    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->smsRadioG:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 38
    return-void
.end method

.method public varargs doInBackground(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "task"
    .parameter "params"

    .prologue
    .line 167
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getSmsThreads(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Ljava/util/List;

    .line 168
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->setSmsReadState()V

    .line 169
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleConfirmEvent()V
    .locals 8

    .prologue
    .line 51
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v5}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getListItems()Ljava/util/List;

    move-result-object v3

    .line 52
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, checked_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 54
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

    .line 55
    check-cast v4, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 56
    .local v4, localContactSmsCallLogItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->isChecked()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v4           #localContactSmsCallLogItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    :cond_1
    new-instance v5, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    invoke-direct {v5, p0, v6, v0}, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;-><init>(Lcom/zte/heartyservice/privacy/FromSmsStrategy;Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;Ljava/util/List;)V

    iput-object v5, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;

    .line 63
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/privacy/FromSmsStrategy$StrategyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method public handleRadioEvent(I)V
    .locals 1
    .parameter "checkedId"

    .prologue
    .line 42
    const v0, 0x7f0e0318

    if-ne p1, v0, :cond_1

    .line 43
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const v0, 0x7f0e0319

    if-ne p1, v0, :cond_0

    .line 45
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

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
    .line 30
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getSmsThreads(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateAddViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 69
    const v1, 0x7f0300d3

    invoke-virtual {p0, p3, p4, v1}, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p3

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    .line 71
    .local v0, conSmsCallLogItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 72
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 75
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    return-object p3

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateView(Z)V
    .locals 1
    .parameter "isEmpty"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updateView(Z)V

    .line 174
    return-void
.end method

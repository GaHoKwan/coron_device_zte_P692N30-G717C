.class public Lcom/zte/heartyservice/privacy/FromContactsStrategy;
.super Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
.source "FromContactsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;
    }
.end annotation


# instance fields
.field private contactType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

.field private mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

.field private mStrategyTask:Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;

.field private smsCallLogRadioG:Landroid/widget/RadioGroup;

.field private smsCallLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/view/LayoutInflater;)V
    .locals 1
    .parameter "activity"
    .parameter "listInflator"

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;-><init>(Landroid/view/LayoutInflater;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;

    .line 28
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/privacy/FromContactsStrategy;Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;)Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;

    return-object p1
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->cancel(Z)Z

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;

    .line 203
    :cond_0
    return-void
.end method

.method public createAndShowDialog()V
    .locals 2

    .prologue
    .line 65
    const v0, 0x7f0300c1

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-super {p0, v0, v1}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->createAndShowDialog(ILandroid/app/Activity;)V

    .line 66
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->smsCallLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 67
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->contactType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0e02ef

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->smsCallLogRadioG:Landroid/widget/RadioGroup;

    .line 69
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->smsCallLogRadioG:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 70
    return-void
.end method

.method public varargs doInBackground(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "task"
    .parameter "params"

    .prologue
    .line 207
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getContacts(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Ljava/util/List;

    .line 208
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleConfirmEvent()V
    .locals 8

    .prologue
    .line 86
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v5}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getListItems()Ljava/util/List;

    move-result-object v3

    .line 87
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, checked_list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 89
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

    .line 90
    check-cast v4, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 91
    .local v4, localContactSmsCallLogItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->isChecked()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 92
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v4           #localContactSmsCallLogItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    :cond_1
    new-instance v5, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->smsCallLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    invoke-direct {v5, p0, v6, v0}, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;-><init>(Lcom/zte/heartyservice/privacy/FromContactsStrategy;Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;Ljava/util/List;)V

    iput-object v5, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;

    .line 97
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mStrategyTask:Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/privacy/FromContactsStrategy$StrategyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    return-void
.end method

.method public handleRadioEvent(I)V
    .locals 1
    .parameter "checkedId"

    .prologue
    .line 74
    const v0, 0x7f0e02f0

    if-ne p1, v0, :cond_1

    .line 75
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->smsCallLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const v0, 0x7f0e02f2

    if-ne p1, v0, :cond_2

    .line 77
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->smsCallLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    goto :goto_0

    .line 78
    :cond_2
    const v0, 0x7f0e02f1

    if-ne p1, v0, :cond_0

    .line 79
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->RETAIN_PRIVACY:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->smsCallLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

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
    .line 102
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getContacts(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDivider(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .parameter "inflater"

    .prologue
    .line 32
    const v1, 0x7f0300e9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 33
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
    .line 38
    const v1, 0x7f0300bf

    invoke-virtual {p0, p3, p4, v1}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p3

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 40
    .local v0, conSmsCallLogItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 41
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 42
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getRefName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->imageButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/zte/heartyservice/privacy/FromContactsStrategy$1;

    invoke-direct {v2, p0, v0}, Lcom/zte/heartyservice/privacy/FromContactsStrategy$1;-><init>(Lcom/zte/heartyservice/privacy/FromContactsStrategy;Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    return-object p3

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateView(Z)V
    .locals 1
    .parameter "isEmpty"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updateView(Z)V

    .line 214
    return-void
.end method

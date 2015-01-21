.class public Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;
.super Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
.source "FromSingleSmsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$1;,
        Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

.field private mMessageListItem:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;

.field private receiveTimeTip:Ljava/lang/String;

.field private selectSmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

.field private sendTimeTip:Ljava/lang/String;

.field private smsRadioG:Landroid/widget/RadioGroup;

.field private smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

.field private spannableTextSize:I

.field private styleStr:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter "activity"
    .parameter "listInflator"

    .prologue
    .line 34
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;-><init>(Landroid/view/LayoutInflater;)V

    .line 31
    const/16 v0, 0x17

    iput v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->spannableTextSize:I

    .line 35
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    const v1, 0x7f0a0349

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->receiveTimeTip:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    const v1, 0x7f0a034a

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->sendTimeTip:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->spannableTextSize:I

    .line 39
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public createAndShowDialog()V
    .locals 2

    .prologue
    .line 48
    const v0, 0x7f0300d1

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    invoke-super {p0, v0, v1}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->createAndShowDialog(ILandroid/app/Activity;)V

    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0340

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 50
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0e0317

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->smsRadioG:Landroid/widget/RadioGroup;

    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->smsRadioG:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0e031a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    return-void
.end method

.method public handleConfirmEvent()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->selectSmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    sget-object v1, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    if-ne v0, v1, :cond_2

    .line 72
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->selectSmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->get_ID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->recoverSmsById(I)Z

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->selectSmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->removeItem(Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;)V

    .line 81
    :cond_1
    :goto_1
    return-void

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    sget-object v1, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    if-ne v0, v1, :cond_3

    .line 74
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->selectSmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->get_ID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteSmsById(I)Z

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    sget-object v1, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->FORWORD:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->selectSmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->forwardSms(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleRadioEvent(I)V
    .locals 1
    .parameter "checkedId"

    .prologue
    .line 58
    const v0, 0x7f0e0318

    if-ne p1, v0, :cond_1

    .line 59
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const v0, 0x7f0e0319

    if-ne p1, v0, :cond_2

    .line 61
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    goto :goto_0

    .line 62
    :cond_2
    const v0, 0x7f0e031a

    if-ne p1, v0, :cond_0

    .line 63
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->FORWORD:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->smsType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    goto :goto_0
.end method

.method public initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"
    .parameter "layoutId"

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, messageListItem:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->listInflator:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 120
    :cond_1
    new-instance v0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;

    .end local v0           #messageListItem:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;-><init>(Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$1;)V

    .line 121
    .restart local v0       #messageListItem:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;
    const v1, 0x7f0e0305

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;->contactTxt:Landroid/widget/TextView;

    .line 122
    const v1, 0x7f0e0306

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;->localTxt:Landroid/widget/TextView;

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    return-object p1
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
    .line 43
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getSmsThreads(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setSelectItem(Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->selectSmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    .line 140
    return-void
.end method

.method public updateAddViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/16 v4, 0x8

    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 85
    const v2, 0x7f0300cb

    invoke-virtual {p0, p3, v8, v2}, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p3

    move-object v1, p1

    .line 86
    check-cast v1, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    .line 87
    .local v1, smsListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mMessageListItem:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;

    .line 88
    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 89
    .local v0, bodyLength:I
    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 90
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mMessageListItem:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;

    iget-object v2, v2, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;->localTxt:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->receiveTimeTip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getLong2HourMinString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->styleStr:Landroid/text/Spannable;

    .line 93
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->styleStr:Landroid/text/Spannable;

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget v4, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->spannableTextSize:I

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v2, v3, v6, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 95
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->styleStr:Landroid/text/Spannable;

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget v4, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->spannableTextSize:I

    add-int/lit8 v4, v4, -0x5

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->styleStr:Landroid/text/Spannable;

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v2, v3, v4, v5, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 98
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mMessageListItem:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;

    iget-object v2, v2, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;->contactTxt:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mMessageListItem:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;

    iget-object v2, v2, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;->contactTxt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->styleStr:Landroid/text/Spannable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_0
    iput-object v8, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->styleStr:Landroid/text/Spannable;

    .line 111
    return-object p3

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mMessageListItem:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;

    iget-object v2, v2, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;->contactTxt:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->sendTimeTip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getLong2HourMinString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->styleStr:Landroid/text/Spannable;

    .line 104
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->styleStr:Landroid/text/Spannable;

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget v4, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->spannableTextSize:I

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v2, v3, v6, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 105
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->styleStr:Landroid/text/Spannable;

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget v4, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->spannableTextSize:I

    add-int/lit8 v4, v4, -0x5

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->styleStr:Landroid/text/Spannable;

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v2, v3, v4, v5, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 107
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mMessageListItem:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;

    iget-object v2, v2, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;->localTxt:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->mMessageListItem:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;

    iget-object v2, v2, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;->localTxt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;->styleStr:Landroid/text/Spannable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

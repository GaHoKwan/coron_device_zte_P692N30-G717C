.class public Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;
.super Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
.source "FromSingleCallLogStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$1;,
        Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;
    }
.end annotation


# instance fields
.field private callLogRadioG:Landroid/widget/RadioGroup;

.field private callLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

.field private callogSrcs:[Landroid/graphics/drawable/Drawable;

.field private mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

.field private mCalLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

.field private receiveTimeTip:Ljava/lang/String;

.field private selectClgRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

.field private sendTimeTip:Ljava/lang/String;

.field private timeFormat:Ljava/lang/String;

.field private unReceivedTip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "activity"
    .parameter "listInflator"

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;-><init>(Landroid/view/LayoutInflater;)V

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callogSrcs:[Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callogSrcs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callogSrcs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callogSrcs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

    const v1, 0x7f0a034b

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->receiveTimeTip:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

    const v1, 0x7f0a034c

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->sendTimeTip:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

    const v1, 0x7f0a034d

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->unReceivedTip:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

    const v1, 0x7f0a02d3

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->timeFormat:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private getCallDuration(I)Ljava/lang/String;
    .locals 8
    .parameter "timeInSecs"

    .prologue
    .line 106
    div-int/lit16 v0, p1, 0xe10

    .line 107
    .local v0, hours:I
    div-int/lit8 v1, p1, 0x3c

    .line 108
    .local v1, mins:I
    rem-int/lit8 v2, p1, 0x3c

    .line 109
    .local v2, secs:I
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

    const v4, 0x7f0a02d4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
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
    .line 55
    const v0, 0x7f0300bb

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

    invoke-super {p0, v0, v1}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->createAndShowDialog(ILandroid/app/Activity;)V

    .line 56
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 57
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0e02e1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callLogRadioG:Landroid/widget/RadioGroup;

    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callLogRadioG:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 59
    return-void
.end method

.method public handleConfirmEvent()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->selectClgRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    sget-object v1, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    if-ne v0, v1, :cond_2

    .line 75
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->selectClgRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->get_ID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->recoverCallById(I)Z

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mActivity:Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->selectClgRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/CallLogExplorerActivity;->removeItem(Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;)V

    .line 81
    :cond_1
    return-void

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    sget-object v1, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    if-ne v0, v1, :cond_0

    .line 77
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->selectClgRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->get_ID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteCallById(I)Z

    goto :goto_0
.end method

.method public handleRadioEvent(I)V
    .locals 1
    .parameter "checkedId"

    .prologue
    .line 63
    const v0, 0x7f0e02e2

    if-ne p1, v0, :cond_1

    .line 64
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->TO_LOCAL:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const v0, 0x7f0e02e3

    if-ne p1, v0, :cond_0

    .line 66
    sget-object v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;->REMOVE:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callLogType:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;

    goto :goto_0
.end method

.method public initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"
    .parameter "layoutId"

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, callLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->listInflator:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 117
    :cond_1
    new-instance v0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

    .end local v0           #callLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;-><init>(Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$1;)V

    .line 118
    .restart local v0       #callLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;
    const v1, 0x7f0e02e7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->fromOrToTxt:Landroid/widget/TextView;

    .line 119
    const v1, 0x7f0e02e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->callTime:Landroid/widget/TextView;

    .line 120
    const v1, 0x7f0e02e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->callLength:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0e02e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->fromOrToImg:Landroid/widget/ImageView;

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
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
    .line 45
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
    .line 49
    const v1, 0x7f0300e9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, ScrollItemView:Landroid/view/View;
    return-object v0
.end method

.method public setSelectItem(Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->selectClgRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    .line 140
    return-void
.end method

.method public updateAddViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 85
    const/4 v4, 0x0

    const v5, 0x7f0300be

    invoke-virtual {p0, p3, v4, v5}, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p3

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    .line 87
    .local v0, calLogListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

    iput-object v4, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mCalLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

    .line 88
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getDate()J

    move-result-wide v2

    .line 89
    .local v2, time:J
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getDuration()I

    move-result v1

    .line 90
    .local v1, duration:I
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mCalLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

    iget-object v4, v4, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->callLength:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->getCallDuration(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mCalLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

    iget-object v4, v4, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->callTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->timeFormat:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getDateForString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getType()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 93
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mCalLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

    iget-object v4, v4, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->fromOrToImg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callogSrcs:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mCalLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

    iget-object v4, v4, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->fromOrToTxt:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->receiveTimeTip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    :goto_0
    return-object p3

    .line 95
    :cond_1
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getType()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 96
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mCalLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

    iget-object v4, v4, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->fromOrToImg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callogSrcs:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mCalLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

    iget-object v4, v4, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->fromOrToTxt:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->sendTimeTip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 99
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mCalLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

    iget-object v4, v4, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->fromOrToImg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->callogSrcs:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->mCalLogListItem:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;

    iget-object v4, v4, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->fromOrToTxt:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;->unReceivedTip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

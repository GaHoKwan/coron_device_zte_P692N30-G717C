.class public Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;
.super Landroid/widget/BaseAdapter;
.source "IntercepterSMSLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;,
        Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationManager:Ltmsdk/bg/module/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, ListData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mListData:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;

    .line 46
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mListData:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    const-class v0, Ltmsdk/bg/module/location/LocationManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/location/LocationManager;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mLocationManager:Ltmsdk/bg/module/location/LocationManager;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;",
            "Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, ListData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mListData:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;

    .line 37
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mListData:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    const-class v0, Ltmsdk/bg/module/location/LocationManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/location/LocationManager;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mLocationManager:Ltmsdk/bg/module/location/LocationManager;

    .line 41
    iput-object p3, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;

    return-object v0
.end method

.method private getNumberInfoText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 133
    move-object v1, p1

    .line 134
    .local v1, title:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mLocationManager:Ltmsdk/bg/module/location/LocationManager;

    invoke-virtual {v2, p1}, Ltmsdk/bg/module/location/LocationManager;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, loc:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .end local v0           #loc:Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 78
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .line 80
    .local v3, smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    if-nez p2, :cond_5

    .line 81
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030068

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;

    invoke-direct {v0, v7}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;-><init>(Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$1;)V

    .line 83
    .local v0, holder:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;
    const v4, 0x7f0e007f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mTilte:Landroid/widget/TextView;

    .line 84
    const v4, 0x7f0e012f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mTime:Landroid/widget/TextView;

    .line 85
    const v4, 0x7f0e0130

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mSummary:Landroid/widget/TextView;

    .line 87
    const v4, 0x7f0e012d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mCheck:Landroid/widget/CheckBox;

    .line 89
    const v4, 0x7f0e0131

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :goto_0
    iget-object v1, v3, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    .line 96
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0239

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_1
    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mTilte:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->getNumberInfoText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mTime:Landroid/widget/TextView;

    iget-wide v5, v3, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    invoke-static {v5, v6}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->getRelativeTimeSpanString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    iget v2, v3, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    .line 106
    .local v2, simId:I
    if-ltz v2, :cond_2

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v4

    if-nez v4, :cond_6

    .line 107
    :cond_2
    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;

    if-eqz v4, :cond_4

    .line 117
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;

    iget-object v5, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-interface {v4, v5, p1}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;->onSetCheckBox(Landroid/widget/CheckBox;I)V

    .line 120
    :cond_4
    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mCheck:Landroid/widget/CheckBox;

    new-instance v5, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    return-object p2

    .line 93
    .end local v0           #holder:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #simId:I
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;
    goto :goto_0

    .line 108
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #simId:I
    :cond_6
    if-nez v2, :cond_7

    .line 109
    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    const v5, 0x7f02006f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 111
    :cond_7
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 112
    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    const v5, 0x7f020070

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setListData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, ListData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mListData:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.class public Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;
.super Landroid/widget/BaseAdapter;
.source "IntercepterCallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;,
        Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
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
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, ListData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mListData:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;

    .line 45
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mListData:Ljava/util/ArrayList;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    const-class v0, Ltmsdk/bg/module/location/LocationManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/location/LocationManager;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mLocationManager:Ltmsdk/bg/module/location/LocationManager;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;)V
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
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;",
            "Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, ListData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mListData:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;

    .line 36
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mListData:Ljava/util/ArrayList;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    const-class v0, Ltmsdk/bg/module/location/LocationManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/location/LocationManager;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mLocationManager:Ltmsdk/bg/module/location/LocationManager;

    .line 40
    iput-object p3, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;

    return-object v0
.end method

.method private getNumberInfoText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 135
    move-object v1, p1

    .line 136
    .local v1, title:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 137
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mLocationManager:Ltmsdk/bg/module/location/LocationManager;

    invoke-virtual {v2, p1}, Ltmsdk/bg/module/location/LocationManager;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, loc:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 139
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

    .line 142
    .end local v0           #loc:Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mListData:Ljava/util/ArrayList;

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
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 79
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    .line 81
    .local v0, callogx:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    if-nez p2, :cond_5

    .line 82
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030068

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;

    invoke-direct {v1, v8}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;-><init>(Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$1;)V

    .line 84
    .local v1, holder:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;
    const v5, 0x7f0e007f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mTilte:Landroid/widget/TextView;

    .line 85
    const v5, 0x7f0e012f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mTime:Landroid/widget/TextView;

    .line 86
    const v5, 0x7f0e0130

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mSummary:Landroid/widget/TextView;

    .line 88
    const v5, 0x7f0e012d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mCheck:Landroid/widget/CheckBox;

    .line 90
    const v5, 0x7f0e0131

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_0
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->name:Ljava/lang/String;

    .line 97
    .local v2, name:Ljava/lang/String;
    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    .line 98
    .local v3, num:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    :cond_0
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0239

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    :cond_1
    iget-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mTilte:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mTime:Landroid/widget/TextView;

    iget-wide v6, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->date:J

    invoke-static {v6, v7}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->getRelativeTimeSpanString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->getNumberInfoText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    iget v4, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    .line 108
    .local v4, simId:I
    if-ltz v4, :cond_2

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v5

    if-nez v5, :cond_6

    .line 109
    :cond_2
    iget-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;

    if-eqz v5, :cond_4

    .line 119
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;

    iget-object v6, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-interface {v5, v6, p1}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;->onSetCheckBox(Landroid/widget/CheckBox;I)V

    .line 122
    :cond_4
    iget-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mCheck:Landroid/widget/CheckBox;

    new-instance v6, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$1;

    invoke-direct {v6, p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    return-object p2

    .line 94
    .end local v1           #holder:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #num:Ljava/lang/String;
    .end local v4           #simId:I
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;

    .restart local v1       #holder:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;
    goto :goto_0

    .line 110
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #num:Ljava/lang/String;
    .restart local v4       #simId:I
    :cond_6
    if-nez v4, :cond_7

    .line 111
    iget-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    const v6, 0x7f02006f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 113
    :cond_7
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 114
    iget-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v5, v1, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$BodyViewHolder;->mSim:Landroid/widget/ImageView;

    const v6, 0x7f020070

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

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
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, ListData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mListData:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

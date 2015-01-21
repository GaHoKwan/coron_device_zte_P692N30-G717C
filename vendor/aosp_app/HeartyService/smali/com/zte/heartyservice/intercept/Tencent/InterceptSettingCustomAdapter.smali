.class public Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;
.super Landroid/widget/BaseAdapter;
.source "InterceptSettingCustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$SettingCustomCheckCallback;,
        Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$SettingCustomCheckCallback;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$SettingCustomCheckCallback;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "callBack"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$SettingCustomCheckCallback;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, ListData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 33
    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mListData:Ljava/util/ArrayList;

    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mCallBack:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$SettingCustomCheckCallback;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;)Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$SettingCustomCheckCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mCallBack:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$SettingCustomCheckCallback;

    return-object v0
.end method

.method private setCheckBox(Landroid/widget/CheckBox;I)V
    .locals 1
    .parameter "checkbox"
    .parameter "position"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->getChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setId(I)V

    .line 94
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 67
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;

    .end local v0           #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;)V

    .line 69
    .restart local v0       #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300f3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 70
    const v1, 0x7f0e0356

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f0e0357

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f0e0358

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-direct {p0, v1, p1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->setCheckBox(Landroid/widget/CheckBox;I)V

    .line 82
    return-object p2

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;
    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, ListData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/PreferenceAdapterModel;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mListData:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

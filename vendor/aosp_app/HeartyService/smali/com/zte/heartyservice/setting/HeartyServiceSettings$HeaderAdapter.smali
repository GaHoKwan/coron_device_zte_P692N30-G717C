.class Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HeartyServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# static fields
.field static final BG_TYPE_CATEGORY:I = 0x3

.field static final BG_TYPE_ERROR:I = -0x1

.field static final BG_TYPE_HEAD:I = 0x0

.field static final BG_TYPE_HEAD_TAIL:I = 0x4

.field static final BG_TYPE_MIDDLE:I = 0x2

.field static final BG_TYPE_TAIL:I = 0x1

.field static final HEADER_TYPE_CATEGORY:I = 0x0

.field private static final HEADER_TYPE_COUNT:I = 0x2

.field static final HEADER_TYPE_SWITCH:I = 0x1


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 74
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    return-void
.end method

.method private getBgType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 184
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 185
    :cond_0
    const/4 v0, -0x1

    .line 196
    :goto_0
    return v0

    .line 186
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 187
    const/4 v0, 0x3

    goto :goto_0

    .line 188
    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 190
    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    .line 192
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :cond_6
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_7

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_8

    .line 194
    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    :cond_8
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter "header"

    .prologue
    .line 84
    const-wide/16 v0, -0x1

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setBackground(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "position"

    .prologue
    .line 201
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getBgType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    :pswitch_0
    return-void

    .line 205
    :pswitch_1
    const v0, 0x7f020293

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 208
    :pswitch_2
    const v0, 0x7f02028c

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 211
    :pswitch_3
    const v0, 0x7f020289

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 214
    :pswitch_4
    const v0, 0x7f020286

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 94
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 102
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 103
    .local v1, headerType:I
    const/4 v4, 0x0

    .line 105
    .local v4, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 106
    new-instance v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;

    invoke-direct {v2, v7}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings$1;)V

    .line 107
    .local v2, holder:Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;
    packed-switch v1, :pswitch_data_0

    .line 127
    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 165
    :goto_2
    return-object v4

    .line 109
    :pswitch_0
    new-instance v4, Landroid/widget/TextView;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1010208

    invoke-direct {v4, v5, v7, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v4       #view:Landroid/view/View;
    move-object v5, v4

    .line 111
    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0300f7

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 118
    const v5, 0x7f0e0148

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 120
    const v5, 0x7f0e0359

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 122
    const v5, 0x7f0e032a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    goto :goto_0

    .line 130
    .end local v2           #holder:Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;
    :cond_0
    move-object v4, p2

    .line 131
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;

    .restart local v2       #holder:Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;
    goto :goto_1

    .line 136
    :pswitch_2
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 141
    :pswitch_3
    invoke-direct {p0, v4, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->setBackground(Landroid/view/View;I)V

    .line 142
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-wide v7, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v7, v7

    iget-object v8, v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setSwitch(Landroid/content/Context;ILcom/zte/heartyservice/common/datatype/P3Switch;)V
    invoke-static {v5, v6, v7, v8}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$100(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Landroid/content/Context;ILcom/zte/heartyservice/common/datatype/P3Switch;)V

    .line 144
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getSummary(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$200(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, summary:Ljava/lang/CharSequence;
    if-nez v3, :cond_1

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 154
    :cond_1
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 159
    :cond_2
    iget-object v5, v2, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 150
    :catch_0
    move-exception v5

    goto :goto_3

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 134
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

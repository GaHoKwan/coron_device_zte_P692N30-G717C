.class public Lcom/mediatek/contacts/widget/SimPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/widget/SimPickerAdapter$1;,
        Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;,
        Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_ACCOUNT:I = 0x3

.field public static final ITEM_TYPE_INTERNET:I = 0x1

.field public static final ITEM_TYPE_SIM:I = 0x0

.field public static final ITEM_TYPE_TEXT:I = 0x2

.field public static final ITEM_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SimPickerAdapter"


# instance fields
.field mContext:Landroid/content/Context;

.field mIsDarkBackGround:Z

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field mSingleChoice:Z

.field mSingleChoiceIndex:I

.field mSuggestedSimId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "suggestedSimId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mIsDarkBackGround:Z

    .line 48
    iput-object p1, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-wide p3, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSuggestedSimId:J

    .line 50
    iput-object p2, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSingleChoice:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSingleChoiceIndex:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;JZ)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "suggestedSimId"
    .parameter "isDark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mIsDarkBackGround:Z

    .line 59
    iput-object p1, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mContext:Landroid/content/Context;

    .line 60
    iput-wide p3, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSuggestedSimId:J

    .line 61
    iput-object p2, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSingleChoice:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSingleChoiceIndex:I

    .line 64
    iput-boolean p5, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mIsDarkBackGround:Z

    .line 65
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;

    .line 102
    .local v0, itemHolder:Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
    iget v1, v0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->type:I

    if-nez v1, :cond_0

    .line 103
    iget-object v1, v0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 104
    :cond_0
    iget v1, v0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 105
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_1
    iget v1, v0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 107
    :cond_2
    iget-object v1, v0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;

    .line 85
    .local v0, itemHolder:Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;
    iget v1, v0, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->type:I

    return v1
.end method

.method protected getSimStatusIcon(I)I
    .locals 5
    .parameter "slot"

    .prologue
    .line 244
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getSimIndicatorState(I)I

    move-result v1

    .line 245
    .local v1, state:I
    const-string v2, "SimPickerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSimStatusIcon] sim state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, resourceId:I
    packed-switch v1, :pswitch_data_0

    .line 274
    :goto_0
    :pswitch_0
    return v0

    .line 250
    :pswitch_1
    const v0, 0x202010a

    .line 251
    goto :goto_0

    .line 253
    :pswitch_2
    const v0, 0x202011d

    .line 254
    goto :goto_0

    .line 256
    :pswitch_3
    const v0, 0x2020122

    .line 257
    goto :goto_0

    .line 259
    :pswitch_4
    const v0, 0x2020124

    .line 260
    goto :goto_0

    .line 262
    :pswitch_5
    const v0, 0x2020103

    .line 263
    goto :goto_0

    .line 265
    :pswitch_6
    const v0, 0x20200fa

    .line 266
    goto :goto_0

    .line 268
    :pswitch_7
    const v0, 0x2020123

    .line 269
    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getSingleChoice()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSingleChoice:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 118
    move-object v7, p2

    .line 119
    .local v7, view:Landroid/view/View;
    const/4 v2, 0x0

    .line 120
    .local v2, holder:Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/widget/SimPickerAdapter;->getItemViewType(I)I

    move-result v8

    .line 121
    .local v8, viewType:I
    if-nez v7, :cond_1

    .line 122
    iget-object v9, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 123
    .local v3, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;

    .end local v2           #holder:Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;
    const/4 v9, 0x0

    invoke-direct {v2, p0, v9}, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;-><init>(Lcom/mediatek/contacts/widget/SimPickerAdapter;Lcom/mediatek/contacts/widget/SimPickerAdapter$1;)V

    .line 125
    .restart local v2       #holder:Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;
    if-nez v8, :cond_4

    .line 126
    const v9, 0x7f0400bf

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 127
    const v9, 0x7f0701b5

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    .line 128
    const v9, 0x7f0701b4

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mSimStatus:Landroid/widget/ImageView;

    .line 129
    const v9, 0x7f0701b6

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    .line 130
    const v9, 0x7f0701b8

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    .line 131
    const v9, 0x7f0701b9

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    .line 132
    const v9, 0x7f0701b3

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    .line 133
    const v9, 0x7f0701b7

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    .line 134
    const v9, 0x7f070167

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    .line 144
    :cond_0
    :goto_0
    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #holder:Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;
    check-cast v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;

    .line 149
    .restart local v2       #holder:Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;
    iget-boolean v9, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSingleChoice:Z

    if-eqz v9, :cond_7

    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v9, :cond_7

    .line 150
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :goto_1
    if-nez v8, :cond_e

    .line 156
    iget-object v9, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;

    iget-object v5, v9, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 157
    .local v5, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    iget-object v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-boolean v9, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mIsDarkBackGround:Z

    if-eqz v9, :cond_8

    .line 159
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    sget-object v10, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    iget v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 165
    :goto_2
    iget-wide v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iget-wide v11, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSuggestedSimId:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_9

    .line 166
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    :goto_3
    :try_start_0
    const-string v4, ""

    .line 173
    .local v4, shortNumber:Ljava/lang/String;
    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 174
    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    packed-switch v9, :pswitch_data_0

    .line 196
    :goto_4
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :goto_5
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v9, :cond_2

    .line 204
    iget v9, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSingleChoiceIndex:I

    int-to-long v9, v9

    iget-wide v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_d

    .line 205
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v4           #shortNumber:Ljava/lang/String;
    :cond_2
    :goto_6
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mSimStatus:Landroid/widget/ImageView;

    iget v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {p0, v10}, Lcom/mediatek/contacts/widget/SimPickerAdapter;->getSimStatusIcon(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    .end local v5           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    :goto_7
    return-object v7

    .line 135
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    :cond_4
    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 136
    const v9, 0x7f0400c0

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 137
    const v9, 0x7f0701ba

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mInternetIcon:Landroid/widget/ImageView;

    .line 138
    const v9, 0x7f070167

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    goto/16 :goto_0

    .line 139
    :cond_5
    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 140
    :cond_6
    const v9, 0x7f0400c1

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 141
    const v9, 0x7f0700e4

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    .line 142
    const v9, 0x7f070167

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    goto/16 :goto_0

    .line 152
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_7
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 161
    .restart local v5       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_8
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    sget-object v10, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    iget v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 168
    :cond_9
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 176
    .restart local v4       #shortNumber:Ljava/lang/String;
    :pswitch_0
    :try_start_1
    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-gt v9, v10, :cond_a

    .line 177
    iget-object v4, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 179
    :cond_a
    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 181
    goto/16 :goto_4

    .line 183
    :pswitch_1
    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-gt v9, v10, :cond_b

    .line 184
    iget-object v4, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 186
    :cond_b
    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    iget-object v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    iget-object v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 189
    goto/16 :goto_4

    .line 191
    :pswitch_2
    const-string v4, ""

    .line 192
    goto/16 :goto_4

    .line 199
    :cond_c
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 210
    .end local v4           #shortNumber:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 211
    .local v1, e:Ljava/lang/Exception;
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 207
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #shortNumber:Ljava/lang/String;
    :cond_d
    :try_start_2
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 214
    .end local v4           #shortNumber:Ljava/lang/String;
    .end local v5           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_e
    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    .line 215
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mInternetIcon:Landroid/widget/ImageView;

    const v10, 0x20200f1

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 217
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v9, :cond_3

    .line 218
    iget v9, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSingleChoiceIndex:I

    const/16 v10, 0x4e24

    if-ne v9, v10, :cond_f

    .line 219
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 221
    :cond_f
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 224
    :cond_10
    const/4 v9, 0x2

    if-ne v8, v9, :cond_12

    .line 225
    iget-object v9, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;

    iget-object v6, v9, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 226
    .local v6, text:Ljava/lang/String;
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v9, :cond_3

    .line 229
    iget v9, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSingleChoiceIndex:I

    const/16 v10, 0x4e25

    if-ne v9, v10, :cond_11

    .line 230
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 232
    :cond_11
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 235
    .end local v6           #text:Ljava/lang/String;
    :cond_12
    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 236
    iget-object v9, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;

    iget-object v0, v9, Lcom/mediatek/contacts/widget/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/Account;

    .line 237
    .local v0, account:Landroid/accounts/Account;
    iget-object v9, v2, Lcom/mediatek/contacts/widget/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x4

    return v0
.end method

.method public setSingleChoice(Z)V
    .locals 0
    .parameter "singleChoice"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSingleChoice:Z

    .line 90
    return-void
.end method

.method public setSingleChoiceIndex(I)V
    .locals 0
    .parameter "singleChoiceIndex"

    .prologue
    .line 97
    iput p1, p0, Lcom/mediatek/contacts/widget/SimPickerAdapter;->mSingleChoiceIndex:I

    .line 98
    return-void
.end method

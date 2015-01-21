.class public Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;
.super Lcom/mediatek/calloption/SimPickerAdapter;
.source "OP09SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_NO_SIM:I = 0x4

.field private static final SIM_BACKGROUND_COLOR_INDEX_BLUE:I = 0x1

.field private static final SIM_BACKGROUND_COLOR_INDEX_ORANGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OP09SimPickerAdapter"

.field private static final VIEW_TYPE_COUNT:I = 0x5


# instance fields
.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;JZ)V
    .locals 0
    .parameter "pluginContext"
    .parameter "hostContext"
    .parameter "suggestedSimId"
    .parameter "isMultiSim"

    .prologue
    .line 48
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mediatek/calloption/SimPickerAdapter;-><init>(Landroid/content/Context;JZ)V

    .line 49
    iput-object p1, p0, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->mPluginContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 118
    const-string v0, "OP09SimPickerAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method


# virtual methods
.method protected createView(Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;I)Landroid/view/View;
    .locals 4
    .parameter "holder"
    .parameter "viewType"

    .prologue
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createView(), holder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", viewType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->log(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->mPluginContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 103
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 104
    .local v1, view:Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    if-ne v2, p2, :cond_1

    .line 105
    :cond_0
    const v2, 0x7f03002e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 106
    const v2, 0x7f0b00b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    .line 107
    const v2, 0x7f0b00b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSimStatus:Landroid/widget/ImageView;

    .line 108
    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    .line 109
    const v2, 0x7f0b00b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    .line 110
    const v2, 0x7f0b00ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    .line 111
    const v2, 0x7f0b00b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    .line 112
    const v2, 0x7f0b00b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    .line 114
    :cond_1
    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem(), position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->log(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .line 60
    .local v0, itemHolder:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    iget v1, v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 61
    iget-object v1, v0, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;

    iget v1, v1, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;->mSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/calloption/SimPickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView(), position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", convertView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", parent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->log(Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/calloption/SimPickerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;

    .line 72
    .local v0, holder:Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;
    const/4 v3, 0x4

    invoke-virtual {p0, p1}, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->getItemViewType(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 73
    iget-object v3, p0, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    iget-object v1, v3, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;

    .line 74
    .local v1, noSimItemInfo:Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;
    iget v3, v1, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;->mPhoneType:I

    if-ne v6, v3, :cond_2

    .line 75
    iget-object v3, v0, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090116

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v3, v0, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090118

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    iget v3, v1, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;->mSlot:I

    if-ltz v3, :cond_0

    .line 84
    iget v3, v1, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;->mSlot:I

    if-nez v3, :cond_4

    .line 85
    iget-object v3, v0, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    sget-object v4, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    :cond_0
    :goto_1
    iget-object v3, v0, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    .end local v1           #noSimItemInfo:Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;
    :cond_1
    return-object v2

    .line 77
    .restart local v1       #noSimItemInfo:Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;
    :cond_2
    const/4 v3, 0x2

    iget v4, v1, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;->mPhoneType:I

    if-ne v3, v4, :cond_3

    .line 78
    iget-object v3, v0, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090117

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v3, v0, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090119

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_3
    const-string v3, "phone is neither GSM nor CDMA for no insert sim card slot"

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_4
    iget v3, v1, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;->mSlot:I

    if-ne v6, v3, :cond_5

    .line 88
    iget-object v3, v0, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    sget-object v4, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 91
    :cond_5
    const-string v3, "slot is neither GEMINI_SIM_1 or GEMINI_SIM_2"

    invoke-static {v3}, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x5

    return v0
.end method

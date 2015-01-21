.class public Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;
.super Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;
.source "OP09SettingsMiscExtImp.java"


# static fields
.field private static final COLORNUM:I = 0x2

.field private static final CUSTOMIZE_ITEM_NAME:Ljava/lang/String; = "customize_item_name"

.field private static final DATA_CONNECTION_ACTIVITY_INTENT:Ljava/lang/String; = "com.mediatek.OP09.DATA_CONNECTION_SETTING"

.field private static final DATA_CONNECTION_ITEM_NAME:Ljava/lang/String; = "data_connection"

.field private static final INTERNATIONAL_ROAMING:Ljava/lang/String; = "com.mediatek.OP09.INTERNATIONAL_ROAMING"

.field private static final INTERNATIONAL_ROAMING_ITEM_NAME:Ljava/lang/String; = "international_roaming"

.field private static final TAB_MOBILE:Ljava/lang/String; = "mobile"

.field private static final TAB_SIM_1:Ljava/lang/String; = "sim1"

.field private static final TAB_SIM_1_INDEX:Ljava/lang/String; = "1"

.field private static final TAB_SIM_2:Ljava/lang/String; = "sim2"

.field private static final TAB_SIM_2_INDEX:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "SettingsMiscExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataConnecitonEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;-><init>(Landroid/content/Context;)V

    .line 84
    iput-object p1, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mContext:Landroid/content/Context;

    .line 85
    const-string v0, "SettingsMiscExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsMiscExt this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method private createDataConnectionHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 4

    .prologue
    .line 198
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 199
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mContext:Landroid/content/Context;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 201
    const v1, 0x7f0200b2

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 202
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.OP09.DATA_CONNECTION_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 203
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 204
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 206
    :cond_0
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v2, "customize_item_name"

    const-string v3, "data_connection"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-object v0
.end method

.method private createIRHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 4

    .prologue
    .line 184
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 185
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mContext:Landroid/content/Context;

    const v2, 0x7f09014d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 187
    const v1, 0x7f0200bf

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 188
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.OP09.INTERNATIONAL_ROAMING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 189
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 192
    :cond_0
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v2, "customize_item_name"

    const-string v3, "international_roaming"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v0
.end method

.method private static getSimColorResource(I)I
    .locals 1
    .parameter "color"

    .prologue
    .line 165
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 166
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkSmallRes:[I

    aget v0, v0, p0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static replaceSimBySlotInner(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "simString"

    .prologue
    .line 282
    const-string v0, "SIM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "SIM"

    const-string v1, "UIM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 286
    :cond_0
    const-string v0, "sim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    const-string v0, "sim"

    const-string v1, "uim"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 289
    :cond_1
    return-object p0
.end method

.method private replaceSimToSimUim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "simString"

    .prologue
    .line 293
    const-string v0, "SIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "SIM"

    const-string v1, "UIM"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 297
    :cond_0
    const-string v0, "sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    const-string v0, "sim"

    const-string v1, "uim"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    :cond_1
    const-string v0, "SettingsMiscExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op09 replace string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-object p1
.end method


# virtual methods
.method public DataUsageUpdateTabInfo(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabWidget;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 7
    .parameter "activity"
    .parameter "tag"
    .parameter "tab"
    .parameter "tabWidget"
    .parameter "title"

    .prologue
    .line 90
    const-string v5, "sim1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "sim2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    :cond_0
    iget-object v5, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 93
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 96
    .local v2, layout:Landroid/widget/RelativeLayout;
    const v5, 0x1020016

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 98
    .local v4, simTitle:Landroid/widget/TextView;
    invoke-virtual {v4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v5, 0x7f0b003e

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 101
    .local v3, numberIndicator:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 102
    .local v0, indicatorText:Ljava/lang/String;
    const-string v5, "sim1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    const-string v0, "1"

    .line 107
    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p3, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 110
    .end local v0           #indicatorText:Ljava/lang/String;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/widget/RelativeLayout;
    .end local v3           #numberIndicator:Landroid/widget/TextView;
    .end local v4           #simTitle:Landroid/widget/TextView;
    :cond_2
    return-object p3

    .line 104
    .restart local v0       #indicatorText:Ljava/lang/String;
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #layout:Landroid/widget/RelativeLayout;
    .restart local v3       #numberIndicator:Landroid/widget/TextView;
    .restart local v4       #simTitle:Landroid/widget/TextView;
    :cond_3
    const-string v5, "sim2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    const-string v0, "1"

    goto :goto_0
.end method

.method public addCustomizedItem(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->createIRHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 179
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, index:I
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->createDataConnectionHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 180
    return-void
.end method

.method public customizeHeaderIcon(Landroid/widget/ImageView;Landroid/preference/PreferenceActivity$Header;)V
    .locals 4
    .parameter "iconView"
    .parameter "header"

    .prologue
    .line 252
    iget-object v1, p2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v2, "customize_item_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, customizeItemName:Ljava/lang/String;
    const-string v1, "SettingsMiscExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizedItemIcon: customizeItemName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v1, "international_roaming"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v1, "data_connection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "simString"
    .parameter "slotId"

    .prologue
    .line 272
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 273
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->replaceSimToSimUim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 275
    .restart local p1
    :cond_1
    if-nez p2, :cond_0

    .line 276
    invoke-static {p1}, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->replaceSimBySlotInner(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "context"

    .prologue
    .line 118
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public initSwitherControlers()V
    .locals 4

    .prologue
    .line 212
    new-instance v0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mDataConnecitonEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    .line 213
    const-string v0, "SettingsMiscExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSwitherControlers mDataConnecitonEnabler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mDataConnecitonEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public insertSimIndicatorInMobileDataSummaryItem(Landroid/view/View;Landroid/view/View;I)V
    .locals 11
    .parameter "container"
    .parameter "titleView"
    .parameter "slotId"

    .prologue
    const v10, 0x7f0b0010

    const/16 v9, 0x9

    const/4 v7, -0x2

    const/4 v8, 0x0

    .line 136
    instance-of v6, p1, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    move-object v5, p1

    .line 137
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 138
    .local v5, viewContainer:Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 139
    .local v2, simIndicator:Landroid/widget/ImageView;
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 140
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v3, simIndicatorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    iget-object v6, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 147
    .local v0, marginRight:I
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 148
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v6, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 151
    .local v1, paddingLeft:I
    invoke-virtual {v2, v1, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 152
    if-nez p3, :cond_1

    const v6, 0x7f0200b3

    :goto_0
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    invoke-virtual {v5, v2, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 156
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 158
    .local v4, titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 159
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    .end local v0           #marginRight:I
    .end local v1           #paddingLeft:I
    .end local v2           #simIndicator:Landroid/widget/ImageView;
    .end local v3           #simIndicatorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #viewContainer:Landroid/widget/RelativeLayout;
    :cond_0
    return-void

    .line 152
    .restart local v0       #marginRight:I
    .restart local v1       #paddingLeft:I
    .restart local v2       #simIndicator:Landroid/widget/ImageView;
    .restart local v3       #simIndicatorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5       #viewContainer:Landroid/widget/RelativeLayout;
    :cond_1
    const v6, 0x7f0200b4

    goto :goto_0
.end method

.method public isSwitcherHeaderType(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 2
    .parameter "header"

    .prologue
    .line 225
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    const v1, 0x7f0200b2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needCustomizeHeaderIcon(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 2
    .parameter "header"

    .prologue
    .line 247
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "customize_item_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseEnabler()V
    .locals 3

    .prologue
    .line 239
    const-string v0, "SettingsMiscExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseEnabler mDataConnecitonEnabler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mDataConnecitonEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mDataConnecitonEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mDataConnecitonEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->pause()V

    .line 243
    :cond_0
    return-void
.end method

.method public resumeEnabler()V
    .locals 3

    .prologue
    .line 231
    const-string v0, "SettingsMiscExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeEnabler mDataConnecitonEnabler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mDataConnecitonEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mDataConnecitonEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mDataConnecitonEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->resume()V

    .line 235
    :cond_0
    return-void
.end method

.method public setEnablerSwitch(Landroid/preference/PreferenceActivity$Header;Landroid/widget/Switch;)V
    .locals 2
    .parameter "header"
    .parameter "switch_"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    const v1, 0x7f0200b2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mDataConnecitonEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->mDataConnecitonEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-virtual {v0, p2}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 221
    :cond_0
    return-void
.end method

.method public updateDefaultSimPreferenceLayout(Landroid/preference/Preference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 114
    const v0, 0x7f030011

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 115
    return-void
.end method

.method public updateDefaultSimPreferenceSimIndicator(Landroid/view/View;I)V
    .locals 2
    .parameter "viewContainer"
    .parameter "color"

    .prologue
    .line 124
    const v1, 0x7f0b003f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 126
    .local v0, simIndicatorView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 127
    invoke-static {p2}, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->getSimColorResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

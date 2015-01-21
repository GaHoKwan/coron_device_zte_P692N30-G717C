.class public Lcom/mediatek/settings/plugin/OP09SimSelectDialogPreferenceExtImp;
.super Lcom/mediatek/gemini/simui/ext/DefaultSimSelectDialogPreferenceExt;
.source "OP09SimSelectDialogPreferenceExtImp.java"


# static fields
.field private static final COLORNUM:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "baseContext"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/simui/ext/DefaultSimSelectDialogPreferenceExt;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/mediatek/settings/plugin/OP09SimSelectDialogPreferenceExtImp;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static getSimColorResource(I)I
    .locals 1
    .parameter "color"

    .prologue
    .line 71
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 72
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkSmallRes:[I

    aget v0, v0, p0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/preference/Preference;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "pref"
    .parameter "parent"

    .prologue
    .line 36
    iget-object v3, p0, Lcom/mediatek/settings/plugin/OP09SimSelectDialogPreferenceExtImp;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 37
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, layout:Landroid/view/View;
    const v3, 0x1020018

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 40
    .local v2, widgetFrame:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {p1}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateDefaultSimPreferenceLayout(Landroid/preference/Preference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 31
    const v0, 0x7f030011

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 32
    return-void
.end method

.method public updateDefaultSimPreferenceSimIndicator(Landroid/view/View;Ljava/util/List;I)V
    .locals 4
    .parameter "viewContainer"
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/4 v0, -0x1

    .line 53
    .local v0, color:I
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    if-ltz p3, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_0

    .line 55
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 56
    .local v2, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v2, :cond_0

    .line 57
    iget v0, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 61
    .end local v2           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    const v3, 0x7f0b003f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 62
    .local v1, simIndicatorView:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 63
    invoke-static {v0}, Lcom/mediatek/settings/plugin/OP09SimSelectDialogPreferenceExtImp;->getSimColorResource(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.class public Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;
.super Ljava/lang/Object;
.source "TwoLineCheckboxElement.java"

# interfaces
.implements Lcn/com/zte/yp/activityZD/ListElementInterface;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private bChecked:Z

.field private context:Landroid/content/Context;

.field private info:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcn/com/zte/yp/utils/CommDefine$SettingsType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementType()Lcn/com/zte/yp/utils/CommDefine$SettingsType;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->type:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f030010

    return v0
.end method

.method public getViewForListElement(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "layoutInflater"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->getLayoutId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 71
    .local v1, layout:Landroid/widget/LinearLayout;
    const v4, 0x7f0a000c

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    .local v2, textView:Landroid/widget/TextView;
    iget-object v4, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v4, 0x7f0a002c

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 75
    .local v3, textView_info:Landroid/widget/TextView;
    iget-object v4, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->info:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v4, 0x7f0a002d

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 78
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-boolean v4, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->bChecked:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    return-object v1
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 109
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->type:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    sget-object v1, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->UPDATE_CITY_WIFI_ONLY:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcn/com/zte/yp/utils/SettingsPrefs;->setUpdateCityOnlyWifiFlag(Landroid/content/Context;Z)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->type:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    sget-object v1, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->SEARCH_YELLOW_PAGE_WIFI_ONLY:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcn/com/zte/yp/utils/SettingsPrefs;->setSearchYellowPageOnlyWifi(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public setElementType(Lcn/com/zte/yp/utils/CommDefine$SettingsType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 89
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->type:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    .line 90
    return-void
.end method

.method public setTitle(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0
    .parameter "title"
    .parameter "info"
    .parameter "bChecked"
    .parameter "context"

    .prologue
    .line 36
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->title:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->info:Ljava/lang/String;

    .line 38
    iput-boolean p3, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->bChecked:Z

    .line 39
    iput-object p4, p0, Lcn/com/zte/yp/activityZD/TwoLineCheckboxElement;->context:Landroid/content/Context;

    .line 40
    return-void
.end method

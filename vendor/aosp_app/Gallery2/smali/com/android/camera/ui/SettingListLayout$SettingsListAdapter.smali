.class Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SettingListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/camera/ListPreference;",
        ">;"
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/ui/SettingListLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SettingListLayout;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->this$0:Lcom/android/camera/ui/SettingListLayout;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    #getter for: Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/camera/ui/SettingListLayout;->access$000(Lcom/android/camera/ui/SettingListLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 70
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method

.method private getSettingLayoutId(Lcom/android/camera/ListPreference;)I
    .locals 1
    .parameter "pref"

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const v0, 0x7f04001e

    .line 87
    :goto_0
    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->this$0:Lcom/android/camera/ui/SettingListLayout;

    #calls: Lcom/android/camera/ui/SettingListLayout;->isSwitchSettingItem(Lcom/android/camera/ListPreference;)Z
    invoke-static {v0, p1}, Lcom/android/camera/ui/SettingListLayout;->access$100(Lcom/android/camera/ui/SettingListLayout;Lcom/android/camera/ListPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const v0, 0x7f040020

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->this$0:Lcom/android/camera/ui/SettingListLayout;

    #calls: Lcom/android/camera/ui/SettingListLayout;->isVirtualSettingItem(Lcom/android/camera/ListPreference;)Z
    invoke-static {v0, p1}, Lcom/android/camera/ui/SettingListLayout;->access$200(Lcom/android/camera/ui/SettingListLayout;Lcom/android/camera/ListPreference;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const v0, 0x7f040021

    goto :goto_0

    .line 87
    :cond_2
    const v0, 0x7f04001f

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    .line 92
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->this$0:Lcom/android/camera/ui/SettingListLayout;

    #getter for: Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/ui/SettingListLayout;->access$000(Lcom/android/camera/ui/SettingListLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ListPreference;

    .line 93
    .local v0, pref:Lcom/android/camera/ListPreference;
    if-eqz p2, :cond_5

    .line 94
    if-nez v0, :cond_1

    .line 95
    instance-of v3, p2, Lcom/android/camera/ui/InLineSettingRestore;

    if-nez v3, :cond_0

    .line 96
    const/4 p2, 0x0

    .line 111
    :cond_0
    :goto_0
    if-eqz p2, :cond_5

    move-object v3, p2

    .line 112
    check-cast v3, Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 113
    if-nez v0, :cond_4

    move v3, v4

    :goto_1
    invoke-static {p2, v3}, Lcom/android/camera/SettingUtils;->setEnabledState(Landroid/view/View;Z)V

    move-object v1, p2

    .line 128
    :goto_2
    return-object v1

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->this$0:Lcom/android/camera/ui/SettingListLayout;

    #calls: Lcom/android/camera/ui/SettingListLayout;->isSwitchSettingItem(Lcom/android/camera/ListPreference;)Z
    invoke-static {v3, v0}, Lcom/android/camera/ui/SettingListLayout;->access$100(Lcom/android/camera/ui/SettingListLayout;Lcom/android/camera/ListPreference;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    instance-of v3, p2, Lcom/android/camera/ui/InLineSettingSwitch;

    if-nez v3, :cond_0

    .line 100
    const/4 p2, 0x0

    goto :goto_0

    .line 102
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->this$0:Lcom/android/camera/ui/SettingListLayout;

    #calls: Lcom/android/camera/ui/SettingListLayout;->isVirtualSettingItem(Lcom/android/camera/ListPreference;)Z
    invoke-static {v3, v0}, Lcom/android/camera/ui/SettingListLayout;->access$200(Lcom/android/camera/ui/SettingListLayout;Lcom/android/camera/ListPreference;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    instance-of v3, p2, Lcom/android/camera/ui/InLineSettingVirtual;

    if-nez v3, :cond_0

    .line 104
    const/4 p2, 0x0

    goto :goto_0

    .line 107
    :cond_3
    instance-of v3, p2, Lcom/android/camera/ui/InLineSettingSublist;

    if-nez v3, :cond_0

    .line 108
    const/4 p2, 0x0

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v3

    goto :goto_1

    .line 118
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->getSettingLayoutId(Lcom/android/camera/ListPreference;)I

    move-result v2

    .line 119
    .local v2, viewLayoutId:I
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/InLineSettingItem;

    .line 121
    .local v1, view:Lcom/android/camera/ui/InLineSettingItem;
    const v3, 0x7f04001e

    if-ne v2, v3, :cond_6

    .line 122
    const/high16 v3, 0x7f0b

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 125
    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 126
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->this$0:Lcom/android/camera/ui/SettingListLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/InLineSettingItem;->setSettingChangedListener(Lcom/android/camera/ui/InLineSettingItem$Listener;)V

    .line 127
    if-nez v0, :cond_7

    :goto_3
    invoke-static {p2, v4}, Lcom/android/camera/SettingUtils;->setEnabledState(Landroid/view/View;Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v4

    goto :goto_3
.end method

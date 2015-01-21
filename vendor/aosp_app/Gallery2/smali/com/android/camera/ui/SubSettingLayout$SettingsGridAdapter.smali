.class Lcom/android/camera/ui/SubSettingLayout$SettingsGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SubSettingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SubSettingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsGridAdapter"
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

.field final synthetic this$0:Lcom/android/camera/ui/SubSettingLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SubSettingLayout;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/ui/SubSettingLayout$SettingsGridAdapter;->this$0:Lcom/android/camera/ui/SubSettingLayout;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    #getter for: Lcom/android/camera/ui/SubSettingLayout;->mListItem:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/camera/ui/SubSettingLayout;->access$000(Lcom/android/camera/ui/SubSettingLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 61
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubSettingLayout$SettingsGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    return-void
.end method

.method private getSettingLayoutId(Lcom/android/camera/ListPreference;)I
    .locals 1
    .parameter "pref"

    .prologue
    .line 65
    const v0, 0x7f040022

    return v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    .line 70
    iget-object v3, p0, Lcom/android/camera/ui/SubSettingLayout$SettingsGridAdapter;->this$0:Lcom/android/camera/ui/SubSettingLayout;

    #getter for: Lcom/android/camera/ui/SubSettingLayout;->mListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/ui/SubSettingLayout;->access$000(Lcom/android/camera/ui/SubSettingLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ListPreference;

    .line 71
    .local v0, pref:Lcom/android/camera/ListPreference;
    const-string v3, "SettingGridLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getview pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz p2, :cond_2

    .line 73
    if-nez v0, :cond_0

    .line 75
    instance-of v3, p2, Lcom/android/camera/ui/InLineSubSettingSublist;

    if-nez v3, :cond_0

    .line 76
    const/4 p2, 0x0

    .line 79
    :cond_0
    if-eqz p2, :cond_2

    move-object v3, p2

    .line 80
    check-cast v3, Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 81
    if-nez v0, :cond_1

    move v3, v4

    :goto_0
    invoke-static {p2, v3}, Lcom/android/camera/SettingUtils;->setEnabledState(Landroid/view/View;Z)V

    move-object v1, p2

    .line 93
    :goto_1
    return-object v1

    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v3

    goto :goto_0

    .line 86
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/ui/SubSettingLayout$SettingsGridAdapter;->getSettingLayoutId(Lcom/android/camera/ListPreference;)I

    move-result v2

    .line 87
    .local v2, viewLayoutId:I
    iget-object v3, p0, Lcom/android/camera/ui/SubSettingLayout$SettingsGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/InLineSettingItem;

    .line 90
    .local v1, view:Lcom/android/camera/ui/InLineSettingItem;
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 91
    iget-object v3, p0, Lcom/android/camera/ui/SubSettingLayout$SettingsGridAdapter;->this$0:Lcom/android/camera/ui/SubSettingLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/InLineSettingItem;->setSettingChangedListener(Lcom/android/camera/ui/InLineSettingItem$Listener;)V

    .line 92
    if-nez v0, :cond_3

    :goto_2
    invoke-static {p2, v4}, Lcom/android/camera/SettingUtils;->setEnabledState(Landroid/view/View;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v4

    goto :goto_2
.end method

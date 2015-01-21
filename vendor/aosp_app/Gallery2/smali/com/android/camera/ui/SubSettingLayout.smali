.class public Lcom/android/camera/ui/SubSettingLayout;
.super Lcom/android/camera/ui/SettingListLayout;
.source "SubSettingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SubSettingLayout$SettingsGridAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SettingGridLayout"


# instance fields
.field private mLastItem:Lcom/android/camera/ui/InLineSettingItem;

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

.field private mSubSettingList:Landroid/widget/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/SubSettingLayout;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SettingListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SubSettingLayout;->mListItem:Ljava/util/ArrayList;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SubSettingLayout;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/SubSettingLayout;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public initialize([Ljava/lang/String;Z)V
    .locals 5
    .parameter "keys"
    .parameter "addrestore"

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    .line 104
    .local v0, context:Lcom/android/camera/Camera;
    iget-object v3, p0, Lcom/android/camera/ui/SubSettingLayout;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 107
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->getListPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 108
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/camera/ui/SubSettingLayout;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    new-instance v3, Lcom/android/camera/ui/SubSettingLayout$SettingsGridAdapter;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/SubSettingLayout$SettingsGridAdapter;-><init>(Lcom/android/camera/ui/SubSettingLayout;)V

    iput-object v3, p0, Lcom/android/camera/ui/SubSettingLayout;->mListItemAdapter:Landroid/widget/ArrayAdapter;

    .line 114
    iget-object v3, p0, Lcom/android/camera/ui/SubSettingLayout;->mSubSettingList:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/android/camera/ui/SubSettingLayout;->mListItemAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v3, p0, Lcom/android/camera/ui/SubSettingLayout;->mSubSettingList:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    iget-object v3, p0, Lcom/android/camera/ui/SubSettingLayout;->mSubSettingList:Landroid/widget/GridView;

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 117
    iget-object v3, p0, Lcom/android/camera/ui/SubSettingLayout;->mSubSettingList:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 118
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/camera/ui/SettingListLayout;->onFinishInflate()V

    .line 54
    const v0, 0x7f0b0151

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/SubSettingLayout;->mSubSettingList:Landroid/widget/GridView;

    .line 55
    return-void
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 121
    iget-object v4, p0, Lcom/android/camera/ui/SubSettingLayout;->mSubSettingList:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 122
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 123
    iget-object v4, p0, Lcom/android/camera/ui/SubSettingLayout;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 124
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/camera/ui/SubSettingLayout;->mSubSettingList:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/InLineSettingItem;

    .line 127
    .local v3, settingItem:Lcom/android/camera/ui/InLineSettingItem;
    invoke-virtual {v3}, Lcom/android/camera/ui/InLineSettingItem;->reloadPreference()V

    .line 122
    .end local v3           #settingItem:Lcom/android/camera/ui/InLineSettingItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    return-void
.end method

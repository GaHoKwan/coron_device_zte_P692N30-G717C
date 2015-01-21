.class public Lcom/android/camera/ui/SettingListLayout;
.super Landroid/widget/FrameLayout;
.source "SettingListLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/InLineSettingItem$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;,
        Lcom/android/camera/ui/SettingListLayout$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingListLayout"


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

.field private mSettingList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SettingListLayout;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SettingListLayout;Lcom/android/camera/ListPreference;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingListLayout;->isSwitchSettingItem(Lcom/android/camera/ListPreference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/SettingListLayout;Lcom/android/camera/ListPreference;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingListLayout;->isVirtualSettingItem(Lcom/android/camera/ListPreference;)Z

    move-result v0

    return v0
.end method

.method private isSwitchSettingItem(Lcom/android/camera/ListPreference;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 133
    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_recordaudio_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_video_eis_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_zsd_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_voice_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_face_detect_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_hdr_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_smile_shot_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_asd_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVirtualSettingItem(Lcom/android/camera/ListPreference;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 145
    const-string v0, "pref_camera_image_properties_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_facebeauty_properties_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public collapseChild()Z
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, collapse:Z
    iget-object v1, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v1}, Lcom/android/camera/ui/InLineSettingItem;->collapseChild()Z

    move-result v0

    .line 235
    :cond_0
    const-string v1, "SettingListLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapseChild() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v0
.end method

.method public initialize([Ljava/lang/String;Z)V
    .locals 5
    .parameter "keys"
    .parameter "addrestore"

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    .line 159
    .local v0, context:Lcom/android/camera/Camera;
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 161
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 162
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->getListPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 163
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 164
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    if-eqz p2, :cond_2

    .line 169
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_2
    new-instance v3, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;-><init>(Lcom/android/camera/ui/SettingListLayout;)V

    iput-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mListItemAdapter:Landroid/widget/ArrayAdapter;

    .line 173
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/camera/ui/SettingListLayout;->mListItemAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 176
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 177
    return-void
.end method

.method public onDismiss(Lcom/android/camera/ui/InLineSettingItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 210
    const-string v0, "SettingListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mLastItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    .line 212
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 62
    const v0, 0x7f0b0144

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    .line 63
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/SettingListLayout$Listener;->onRestorePreferencesClicked()V

    .line 194
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 242
    const-string v0, "SettingListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 248
    const-string v0, "SettingListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingListLayout;->collapseChild()Z

    .line 252
    :cond_0
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ui/InLineSettingItem;Lcom/android/camera/ListPreference;)V
    .locals 1
    .parameter "item"
    .parameter "preference"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    if-eq v0, p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/InLineSettingItem;->collapseChild()Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    invoke-interface {v0, p0, p2}, Lcom/android/camera/ui/SettingListLayout$Listener;->onSettingChanged(Lcom/android/camera/ui/SettingListLayout;Lcom/android/camera/ListPreference;)V

    .line 187
    :cond_1
    return-void
.end method

.method public onShow(Lcom/android/camera/ui/InLineSettingItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 216
    const-string v0, "SettingListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mLastItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    if-eq v0, p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/InLineSettingItem;->collapseChild()Z

    .line 220
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    .line 221
    return-void
.end method

.method public onVoiceCommandChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/SettingListLayout$Listener;->onVoiceCommandChanged(I)V

    .line 228
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 197
    iget-object v4, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 198
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 199
    iget-object v4, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 200
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 201
    iget-object v4, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/InLineSettingItem;

    .line 203
    .local v3, settingItem:Lcom/android/camera/ui/InLineSettingItem;
    invoke-virtual {v3}, Lcom/android/camera/ui/InLineSettingItem;->reloadPreference()V

    .line 198
    .end local v3           #settingItem:Lcom/android/camera/ui/InLineSettingItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/SettingListLayout$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    .line 151
    return-void
.end method

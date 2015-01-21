.class public Lcom/mediatek/security/ui/PermissionsFragment;
.super Landroid/app/Fragment;
.source "PermissionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;,
        Lcom/mediatek/security/ui/PermissionsFragment$AppViewHolder;,
        Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;,
        Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;
    }
.end annotation


# instance fields
.field private mApdater:Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;

.field private mContentView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field mPermLabelArray:[Ljava/lang/String;

.field private final mPkgChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 96
    new-instance v0, Lcom/mediatek/security/ui/PermissionsFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/security/ui/PermissionsFragment$1;-><init>(Lcom/mediatek/security/ui/PermissionsFragment;)V

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/security/ui/PermissionsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionsFragment;->load()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/security/ui/PermissionsFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/security/ui/PermissionsFragment;)Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mApdater:Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;

    return-object v0
.end method

.method private load()V
    .locals 2

    .prologue
    .line 297
    new-instance v0, Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/security/ui/PermissionsFragment$PermListsyncLoader;-><init>(Lcom/mediatek/security/ui/PermissionsFragment;Lcom/mediatek/security/ui/PermissionsFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 298
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 153
    const-string v0, "PermissionsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",result Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 157
    const-string v0, "PermissionsFragment"

    const-string v1, "finish PermissionFragment activity"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 161
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mPermLabelArray:[Ljava/lang/String;

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 117
    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mContentView:Landroid/view/View;

    .line 118
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mContentView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    .local v0, emptyView:Landroid/widget/TextView;
    const v2, 0x7f07000b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mContentView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 121
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 124
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    invoke-virtual {v1, v4}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 126
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 127
    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 128
    iput-object v1, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mListView:Landroid/widget/ListView;

    .line 129
    new-instance v2, Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;

    invoke-direct {v2, p0}, Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;-><init>(Lcom/mediatek/security/ui/PermissionsFragment;)V

    iput-object v2, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mApdater:Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;

    .line 130
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mApdater:Lcom/mediatek/security/ui/PermissionsFragment$PermMatchAppAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mContentView:Landroid/view/View;

    return-object v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 166
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v3, p1

    check-cast v3, Landroid/widget/ListView;

    .line 167
    .local v3, l:Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;

    .line 168
    .local v1, info:Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;
    #getter for: Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->mPermName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;->access$100(Lcom/mediatek/security/ui/PermissionsFragment$PermInfo;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, permName:Ljava/lang/String;
    const-string v5, "PermissionsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onItemClick ,permName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.mediatek.security.EACH_APP_CONTROL"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v5, "permName"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "PermissionsFragment"

    const-string v6, "ActivityNotFoundException"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "PermissionsFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 148
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 136
    const-string v1, "PermissionsFragment"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionsFragment;->load()V

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.security.action.DATA_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionsFragment;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

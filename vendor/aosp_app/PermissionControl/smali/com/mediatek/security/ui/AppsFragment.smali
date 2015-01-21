.class public Lcom/mediatek/security/ui/AppsFragment;
.super Landroid/app/Fragment;
.source "AppsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/security/ui/AppsFragment$AppInfo;,
        Lcom/mediatek/security/ui/AppsFragment$AppViewHolder;,
        Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;,
        Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mediatek/security/ui/AppsFragment$AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApdater:Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;

.field private mContentView:Landroid/view/View;

.field private mCxt:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private final mPkgChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lcom/mediatek/security/ui/AppsFragment$2;

    invoke-direct {v0}, Lcom/mediatek/security/ui/AppsFragment$2;-><init>()V

    sput-object v0, Lcom/mediatek/security/ui/AppsFragment;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 102
    new-instance v0, Lcom/mediatek/security/ui/AppsFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/security/ui/AppsFragment$1;-><init>(Lcom/mediatek/security/ui/AppsFragment;)V

    iput-object v0, p0, Lcom/mediatek/security/ui/AppsFragment;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/security/ui/AppsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/mediatek/security/ui/AppsFragment;->load()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/security/ui/AppsFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/security/ui/AppsFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment;->mCxt:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/security/ui/AppsFragment;)Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment;->mApdater:Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;

    return-object v0
.end method

.method private load()V
    .locals 2

    .prologue
    .line 317
    new-instance v0, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/security/ui/AppsFragment$DataAsyncLoader;-><init>(Lcom/mediatek/security/ui/AppsFragment;Lcom/mediatek/security/ui/AppsFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 159
    const-string v0, "AppsFragment"

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

    .line 161
    if-nez p1, :cond_0

    .line 162
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 163
    const-string v0, "AppsFragment"

    const-string v1, "finish AppsFragment activity"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 167
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/security/ui/AppsFragment;->mCxt:Landroid/content/Context;

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 122
    iput-object p1, p0, Lcom/mediatek/security/ui/AppsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 123
    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/security/ui/AppsFragment;->mContentView:Landroid/view/View;

    .line 124
    iget-object v2, p0, Lcom/mediatek/security/ui/AppsFragment;->mContentView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, emptyView:Landroid/view/View;
    iget-object v2, p0, Lcom/mediatek/security/ui/AppsFragment;->mContentView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 127
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 130
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    invoke-virtual {v1, v4}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 132
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 133
    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 134
    iput-object v1, p0, Lcom/mediatek/security/ui/AppsFragment;->mListView:Landroid/widget/ListView;

    .line 135
    new-instance v2, Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;

    invoke-direct {v2, p0}, Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;-><init>(Lcom/mediatek/security/ui/AppsFragment;)V

    iput-object v2, p0, Lcom/mediatek/security/ui/AppsFragment;->mApdater:Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;

    .line 136
    iget-object v2, p0, Lcom/mediatek/security/ui/AppsFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/mediatek/security/ui/AppsFragment;->mApdater:Lcom/mediatek/security/ui/AppsFragment$AppMatchPermAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v2, p0, Lcom/mediatek/security/ui/AppsFragment;->mContentView:Landroid/view/View;

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
    .line 172
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v3, p1

    check-cast v3, Landroid/widget/ListView;

    .line 173
    .local v3, l:Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/security/ui/AppsFragment$AppInfo;

    .line 175
    .local v0, app:Lcom/mediatek/security/ui/AppsFragment$AppInfo;
    #getter for: Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mPkgName:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->access$100(Lcom/mediatek/security/ui/AppsFragment$AppInfo;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, pkgName:Ljava/lang/String;
    const-string v5, "AppsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onItemClick ,pkgName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.mediatek.security.EACH_PERMISSION_CONTROL"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v5, "pkgName"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "AppsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityNotFoundException for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "AppsFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/security/ui/AppsFragment;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 142
    const-string v1, "AppsFragment"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 144
    invoke-direct {p0}, Lcom/mediatek/security/ui/AppsFragment;->load()V

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.security.action.DATA_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/security/ui/AppsFragment;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method

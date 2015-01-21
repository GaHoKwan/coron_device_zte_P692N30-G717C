.class public Lcom/mediatek/filemanager/FileManagerSearchActivity;
.super Lcom/mediatek/filemanager/AbsBaseActivity;
.source "FileManagerSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;
    }
.end annotation


# static fields
.field public static final CURRENT_PATH:Ljava/lang/String; = "current_path"

.field public static final SEARCH_TEXT:Ljava/lang/String; = "search_text"

.field public static final SEARCH_TOTAL:Ljava/lang/String; = "search_total"

.field private static final TAG:Ljava/lang/String; = "FileManagerSearchActivity"


# instance fields
.field private mResultView:Landroid/widget/TextView;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchPath:Ljava/lang/String;

.field private mSearchText:Ljava/lang/String;

.field private mSearchView:Landroid/widget/SearchView;

.field private mTotal:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;-><init>()V

    .line 63
    iput-object v2, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mResultView:Landroid/widget/TextView;

    .line 64
    iput-object v2, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchPath:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchView:Landroid/widget/SearchView;

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mTotal:J

    .line 68
    iput-object v2, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/filemanager/FileManagerSearchActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/filemanager/FileManagerSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/filemanager/FileManagerSearchActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mResultView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/filemanager/FileManagerSearchActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mTotal:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/mediatek/filemanager/FileManagerSearchActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mTotal:J

    return-wide p1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 129
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    const-string v2, "FileManagerSearchActivity"

    const-string v3, "handleIntent intent uri path == null"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v0           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 138
    .restart local v0       #path:Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/mediatek/filemanager/FileInfo;

    invoke-direct {v2, v0}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->onItemClick(Lcom/mediatek/filemanager/FileInfo;)V

    goto :goto_0

    .line 139
    .end local v0           #path:Ljava/lang/String;
    :cond_3
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, query:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->requestSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onItemClick(Lcom/mediatek/filemanager/FileInfo;)V
    .locals 9
    .parameter "selectedFileInfo"

    .prologue
    const v8, 0x7f080033

    .line 297
    iget-object v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v5, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 300
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "select_path"

    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 333
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 335
    :cond_1
    return-void

    .line 308
    :cond_2
    const/4 v0, 0x1

    .line 309
    .local v0, canOpen:Z
    iget-object v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p1, v5}, Lcom/mediatek/filemanager/FileInfo;->getFileMimeType(Lcom/mediatek/filemanager/service/FileManagerService;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, mimeType:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->isDrmFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 312
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 313
    const/4 v0, 0x0

    .line 314
    iget-object v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    invoke-virtual {v5, v8}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    .line 318
    :cond_3
    if-eqz v0, :cond_0

    .line 319
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 321
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "FileManagerSearchActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Open uri file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    invoke-virtual {v5, v8}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    .line 328
    const-string v5, "FileManagerSearchActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot open file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "query"

    .prologue
    .line 153
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchPath:Ljava/lang/String;

    new-instance v3, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/filemanager/FileManagerSearchActivity$SearchListener;-><init>(Lcom/mediatek/filemanager/FileManagerSearchActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/mediatek/filemanager/service/FileManagerService;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 159
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initCurrentFileInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v4, 0x7f0c0020

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 225
    .local v0, inflater:Landroid/view/MenuInflater;
    const v3, 0x7f0b0002

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 226
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchItem:Landroid/view/MenuItem;

    .line 227
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchView:Landroid/widget/SearchView;

    .line 229
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    const-string v3, "search"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 234
    .local v2, searchManager:Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 235
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->expandActionView()Z

    .line 239
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchItem:Landroid/view/MenuItem;

    new-instance v4, Lcom/mediatek/filemanager/FileManagerSearchActivity$1;

    invoke-direct {v4, p0}, Lcom/mediatek/filemanager/FileManagerSearchActivity$1;-><init>(Lcom/mediatek/filemanager/FileManagerSearchActivity;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 252
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 254
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 256
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->cancel(Ljava/lang/String;)V

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->onDestroy()V

    .line 79
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
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
    .line 279
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "FileManagerSearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    if-gez p3, :cond_1

    .line 282
    :cond_0
    const-string v1, "FileManagerSearchActivity"

    const-string v2, "click events error"

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "FileManagerSearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFileInfoList.size(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v3}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1, p3}, Lcom/mediatek/filemanager/FileInfoAdapter;->getItem(I)Lcom/mediatek/filemanager/FileInfo;

    move-result-object v0

    .line 287
    .local v0, selectedFileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->onItemClick(Lcom/mediatek/filemanager/FileInfo;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "search_text"

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "search_total"

    iget-wide v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mTotal:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method protected serviceConnected()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 98
    invoke-super {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->serviceConnected()V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "current_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchPath:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/MountPointManager;->getRootPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchPath:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchPath:Ljava/lang/String;

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mResultView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "search_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "search_total"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mTotal:J

    .line 112
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mResultView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mResultView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080037

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mSearchText:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mTotal:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 120
    return-void

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1, v4}, Lcom/mediatek/filemanager/FileInfoAdapter;->changeMode(I)V

    goto :goto_0
.end method

.method protected setMainContentView()V
    .locals 2

    .prologue
    .line 266
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/filemanager/FileManagerSearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    const/high16 v0, 0x7f0a

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 272
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 273
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/filemanager/FileManagerSearchActivity;->mResultView:Landroid/widget/TextView;

    goto :goto_0
.end method

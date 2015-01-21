.class public Lcom/android/providers/applications/ApplicationLauncher;
.super Landroid/app/ListActivity;
.source "ApplicationLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationLauncher"


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private launchApplication(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    .line 105
    invoke-static {p1}, Landroid/provider/Applications;->uriToComponentName(Landroid/net/Uri;)Landroid/content/ComponentName;

    move-result-object v0

    .line 106
    .local v0, componentName:Landroid/content/ComponentName;
    const-string v3, "ApplicationLauncher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eqz v0, :cond_0

    .line 108
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, launchIntent:Landroid/content/Intent;
    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 113
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v2           #launchIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v2       #launchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 115
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "ApplicationLauncher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showSearchResults(Ljava/lang/String;)V
    .locals 5
    .parameter "query"

    .prologue
    const/4 v4, -0x1

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Applications;->search(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    .line 68
    iget-object v3, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 70
    new-instance v0, Lcom/android/providers/applications/ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v3}, Lcom/android/providers/applications/ApplicationsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 71
    .local v0, adapter:Lcom/android/providers/applications/ApplicationsAdapter;
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v3, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 75
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v2, tvEmpty:Landroid/widget/TextView;
    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 77
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 79
    .local v1, layoutPrarams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .end local v1           #layoutPrarams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #tvEmpty:Landroid/widget/TextView;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 49
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 56
    .local v1, contentUri:Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/android/providers/applications/ApplicationLauncher;->launchApplication(Landroid/net/Uri;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 58
    .end local v1           #contentUri:Landroid/net/Uri;
    :cond_2
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    const-string v4, "query"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, query:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/providers/applications/ApplicationLauncher;->showSearchResults(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 89
    const-string v1, "ApplicationLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got click on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but there is no cursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const-string v1, "ApplicationLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got click on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but the cursor is closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    const-string v1, "ApplicationLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationLauncher;->mCursor:Landroid/database/Cursor;

    const-string v2, "uri"

    invoke-static {v1, v2}, Lcom/android/providers/applications/ApplicationsAdapter;->getColumnUri(Landroid/database/Cursor;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    .local v0, uri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/providers/applications/ApplicationLauncher;->launchApplication(Landroid/net/Uri;)V

    goto :goto_0
.end method

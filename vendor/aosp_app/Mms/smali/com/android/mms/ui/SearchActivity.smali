.class public Lcom/android/mms/ui/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;,
        Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SearchActivity"

.field private static final TIME_WAIT_QUERY:I = 0xc8

.field private static final WP_TAG:Ljava/lang/String; = "Mms/WapPush"

.field private static sNeedRequery:Z


# instance fields
.field private mAdapter:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

.field mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

.field private mContactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/mms/data/Contact;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAdvancedQuery:Z

.field private mIsQueryComplete:Z

.field private mMmsAdvanceSearchPlugin:Lcom/mediatek/mms/ext/IMmsAdvanceSearch;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mRunStartQuery:Ljava/lang/Runnable;

.field private mTvEmpty:Landroid/widget/TextView;

.field private searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;

.field private searchString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SearchActivity;->sNeedRequery:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SearchActivity;->mIsQueryComplete:Z

    .line 120
    new-instance v0, Lcom/android/mms/ui/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$1;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mRunStartQuery:Ljava/lang/Runnable;

    .line 291
    new-instance v0, Lcom/android/mms/ui/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$2;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    .line 602
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/mms/ui/SearchActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SearchActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SearchActivity;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/NewProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SearchActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/mms/ui/SearchActivity;->mIsQueryComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SearchActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/mms/ui/SearchActivity;->mIsAdvancedQuery:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SearchActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mTvEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mAdapter:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/SearchActivity;Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;)Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity;->mAdapter:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SearchActivity;JJ)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SearchActivity;->getThreadId(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mRunStartQuery:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getSearchString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 553
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, searchStringParameter:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent_extra_data_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .end local v0           #searchStringParameter:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getThreadId(JJ)J
    .locals 9
    .parameter "sourceId"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 308
    const-string v0, "content://mms-sms/messageIdToThread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 309
    .local v6, b:Landroid/net/Uri$Builder;
    const-string v0, "row_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 310
    const-string v0, "table_to_use"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 311
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, s:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 319
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 321
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 328
    :goto_0
    return-wide v0

    .line 325
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private gotoComposeMessageActivity(Landroid/net/Uri;)V
    .locals 3
    .parameter "u"

    .prologue
    .line 529
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SearchActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/SearchActivity$4;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/net/Uri;)V

    const-string v2, "Search thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 549
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 550
    return-void
.end method

.method private initPlugin(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 591
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsAdvanceSearch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsAdvanceSearch;

    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mMmsAdvanceSearchPlugin:Lcom/mediatek/mms/ext/IMmsAdvanceSearch;

    .line 592
    const-string v1, "Mms/SearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsAdvanceSearchPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mMmsAdvanceSearchPlugin:Lcom/mediatek/mms/ext/IMmsAdvanceSearch;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mMmsAdvanceSearchPlugin:Lcom/mediatek/mms/ext/IMmsAdvanceSearch;

    invoke-interface {v1, p2}, Lcom/mediatek/mms/ext/IMmsAdvanceSearch;->initAdvancedData(Landroid/content/Intent;)V

    .line 598
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsAdvanceSearchImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsAdvanceSearchImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mMmsAdvanceSearchPlugin:Lcom/mediatek/mms/ext/IMmsAdvanceSearch;

    .line 595
    const-string v1, "Mms/SearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsAdvanceSearchPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mMmsAdvanceSearchPlugin:Lcom/mediatek/mms/ext/IMmsAdvanceSearch;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setNeedRequery()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/SearchActivity;->sNeedRequery:Z

    .line 523
    return-void
.end method

.method private startQuery()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 126
    const-string v0, "Mms/SearchActivity"

    const-string v1, "startQuery"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v8

    .line 129
    .local v8, dirMode:Z
    const/4 v3, 0x0

    .line 130
    .local v3, uri:Landroid/net/Uri;
    if-nez v8, :cond_2

    .line 131
    sget-object v0, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pattern"

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 138
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SearchActivity;->mIsAdvancedQuery:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mMmsAdvanceSearchPlugin:Lcom/mediatek/mms/ext/IMmsAdvanceSearch;

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsAdvanceSearch;->buildAdvanceSearchUri()Landroid/net/Uri;

    move-result-object v3

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mTvEmpty:Landroid/widget/TextView;

    const v1, 0x7f0b0238

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 134
    :cond_2
    const-string v0, "content://mms-sms/searchFolder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pattern"

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    .line 333
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 334
    const-string v4, "Mms/SearchActivity"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, p0, v4}, Lcom/android/mms/ui/SearchActivity;->initPlugin(Landroid/content/Context;Landroid/content/Intent;)V

    .line 341
    sput-boolean v7, Lcom/android/mms/ui/SearchActivity;->sNeedRequery:Z

    .line 342
    invoke-direct {p0}, Lcom/android/mms/ui/SearchActivity;->getSearchString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 349
    .local v3, u:Landroid/net/Uri;
    if-eqz v3, :cond_0

    const-string v4, "source_id"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 353
    invoke-direct {p0, v3}, Lcom/android/mms/ui/SearchActivity;->gotoComposeMessageActivity(Landroid/net/Uri;)V

    .line 469
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "advanced_query"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/SearchActivity;->mIsAdvancedQuery:Z

    .line 363
    :cond_1
    const v4, 0x7f04005b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 364
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 366
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 367
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 368
    invoke-virtual {v2, v7}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 369
    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 370
    const v4, 0x1020004

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mTvEmpty:Landroid/widget/TextView;

    .line 376
    const-string v4, ""

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v4}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 381
    new-instance v4, Lcom/android/mms/ui/SearchActivity$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/mms/ui/SearchActivity$3;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V

    iput-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 466
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 467
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 468
    invoke-static {p0}, Lcom/android/mms/ui/SearchProgressDialogUtil;->getProgressDialog(Landroid/content/Context;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 822
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 823
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mAdapter:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mAdapter:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mRunStartQuery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 827
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewProgressDialog;->dismiss()V

    .line 830
    :cond_1
    iput-object v2, p0, Lcom/android/mms/ui/SearchActivity;->searchProgressDialog:Lcom/android/mms/ui/NewProgressDialog;

    .line 831
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 490
    invoke-direct {p0}, Lcom/android/mms/ui/SearchActivity;->getSearchString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    .line 495
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 496
    .local v0, u:Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string v1, "source_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SearchActivity;->gotoComposeMessageActivity(Landroid/net/Uri;)V

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/ui/SearchActivity;->sNeedRequery:Z

    .line 502
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 473
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 480
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 477
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 478
    const/4 v0, 0x1

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 508
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 509
    const-string v0, "Mms/SearchActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-boolean v0, p0, Lcom/android/mms/ui/SearchActivity;->mIsQueryComplete:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/SearchActivity;->sNeedRequery:Z

    if-eqz v0, :cond_0

    .line 512
    sput-boolean v2, Lcom/android/mms/ui/SearchActivity;->sNeedRequery:Z

    .line 513
    iput-boolean v2, p0, Lcom/android/mms/ui/SearchActivity;->mIsQueryComplete:Z

    .line 515
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mRunStartQuery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 516
    invoke-direct {p0}, Lcom/android/mms/ui/SearchActivity;->startQuery()V

    .line 519
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 563
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 565
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 566
    .local v0, adapter:Landroid/widget/CursorAdapter;
    if-eqz v0, :cond_2

    .line 567
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 568
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 569
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 571
    :cond_0
    const-string v4, "address"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, address:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 573
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    .line 574
    .local v3, contact:Lcom/android/mms/data/Contact;
    if-eqz v3, :cond_1

    .line 575
    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->reload()V

    .line 578
    .end local v3           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 579
    invoke-static {}, Lcom/android/mms/ui/SearchActivity;->setNeedRequery()V

    .line 582
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #c:Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 303
    const-string v0, "Mms/SearchActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 305
    return-void
.end method

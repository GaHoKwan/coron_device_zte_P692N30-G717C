.class Lcom/android/mms/widget/MmsWidgetService$MmsFactory;
.super Ljava/lang/Object;
.source "MmsWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/MmsWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsFactory"
.end annotation


# static fields
.field private static final MAX_CONVERSATIONS_COUNT:I = 0x19

.field private static SENDERS_TEXT_COLOR_READ:I

.field private static SENDERS_TEXT_COLOR_UNREAD:I

.field private static SUBJECT_TEXT_COLOR_READ:I

.field private static SUBJECT_TEXT_COLOR_UNREAD:I

.field private static sConversationCursor:Landroid/database/Cursor;


# instance fields
.field private final mAppWidgetId:I

.field private final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mShouldShowViewMore:Z

.field private mUnreadConvCount:I

.field private mUpdateFromContactRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mHandler:Landroid/os/Handler;

    .line 427
    new-instance v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;

    invoke-direct {v1, p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory$1;-><init>(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;)V

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUpdateFromContactRunnable:Ljava/lang/Runnable;

    .line 117
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    .line 118
    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    .line 120
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 121
    const-string v1, "MmsWidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsFactory intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "widget id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_READ:I

    .line 125
    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_UNREAD:I

    .line 126
    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_READ:I

    .line 127
    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/widget/MmsWidgetService$MmsFactory;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method private addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;
    .locals 5
    .parameter "text"
    .parameter "color"

    .prologue
    .line 227
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 228
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    if-eqz p2, :cond_0

    .line 229
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 232
    :cond_0
    return-object v0
.end method

.method private getConversationCount()I
    .locals 3

    .prologue
    .line 215
    const-string v0, "Mms:widget"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "MmsWidgetService"

    const-string v1, "getConversationCount"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 219
    :try_start_0
    sget-object v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v2, 0x19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getViewMoreConversationsView()Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    const/16 v5, 0x258

    .line 367
    const-string v2, "Mms:widget"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    const-string v2, "MmsWidgetService"

    const-string v3, "getViewMoreConversationsView"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04007c

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 371
    .local v1, view:Landroid/widget/RemoteViews;
    const v2, 0x7f0f01b1

    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0347

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, clickIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getFolderModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    new-instance v0, Landroid/content/Intent;

    .end local v0           #clickIntent:Landroid/content/Intent;
    const-string v2, "com android.mms.widget.ACTION_FOLDER_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .restart local v0       #clickIntent:Landroid/content/Intent;
    const-string v2, "folder_type"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    :goto_0
    const v2, 0x7f0f01b0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 384
    return-object v1

    .line 378
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #clickIntent:Landroid/content/Intent;
    const-string v2, "com android.mms.widget.ACTION_CONVERSATION_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .restart local v0       #clickIntent:Landroid/content/Intent;
    const-string v2, "conversation_type"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private onLoadComplete()V
    .locals 5

    .prologue
    const/16 v4, 0x63

    const v3, 0x7f0f01aa

    .line 411
    const-string v1, "Mms:widget"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const-string v1, "MmsWidgetService"

    const-string v2, "onLoadComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04007a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 416
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 418
    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    if-gt v1, v4, :cond_3

    .line 419
    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 425
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 426
    return-void

    .line 416
    :cond_2
    const/16 v1, 0x8

    goto :goto_0

    .line 421
    :cond_3
    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    if-le v1, v4, :cond_1

    .line 422
    const-string v1, "99+"

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private queryAllConversations()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUriExtend:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION_EXTEND:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryUnreadCount()I
    .locals 8

    .prologue
    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 173
    .local v7, unreadCount:I
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllUnreadMessagesUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 179
    :cond_0
    if-eqz v6, :cond_1

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_1
    const-string v0, "MmsWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryUnreadCount unreadCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v7

    .line 179
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_2
    throw v0
.end method


# virtual methods
.method public getCount()I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    const-string v3, "Mms:widget"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const-string v3, "MmsWidgetService"

    const-string v4, "getCount"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 197
    :try_start_0
    sget-object v3, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 198
    monitor-exit v4

    .line 205
    :goto_0
    return v1

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v0

    .line 201
    .local v0, count:I
    sget-object v3, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    .line 202
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->queryUnreadCount()I

    move-result v3

    iput v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    .line 203
    const-string v3, "MmsWidgetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUnreadConvCount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->onLoadComplete()V

    .line 205
    iget-boolean v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v1, v0

    monitor-exit v4

    goto :goto_0

    .line 206
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #count:I
    :cond_3
    move v3, v1

    .line 201
    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 402
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 389
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04007c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 390
    .local v0, view:Landroid/widget/RemoteViews;
    const v1, 0x7f0f01b1

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0225

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 392
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 14
    .parameter "position"

    .prologue
    .line 240
    const-string v9, "Mms:widget"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 241
    const-string v9, "MmsWidgetService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getViewAt position: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 245
    :try_start_0
    sget-object v9, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v9

    if-lt p1, v9, :cond_2

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v7

    monitor-exit v10

    .line 358
    :goto_0
    return-object v7

    .line 250
    :cond_2
    sget-object v9, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    invoke-interface {v9, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 253
    const-string v9, "MmsWidgetService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to move to position: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v7

    monitor-exit v10

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 257
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    invoke-static {v9, v11}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 260
    .local v2, conv:Lcom/android/mms/data/Conversation;
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v11, 0x7f04007b

    invoke-direct {v7, v9, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 263
    .local v7, remoteViews:Landroid/widget/RemoteViews;
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 264
    const v9, 0x7f0f01ae

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 265
    const v9, 0x7f0f01af

    const/16 v11, 0x8

    invoke-virtual {v7, v9, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 270
    :goto_1
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v5

    .line 271
    .local v5, hasAttachment:Z
    const v11, 0x7f0f0075

    if-eqz v5, :cond_6

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v7, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 275
    const v11, 0x7f0f0076

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isMute()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v7, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 278
    const v11, 0x7f0f007a

    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v12

    invoke-static {v9, v12, v13}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringExtend(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v9

    if-eqz v9, :cond_8

    sget v9, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_UNREAD:I

    :goto_4
    invoke-direct {p0, v12, v9}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v7, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 284
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v9

    if-eqz v9, :cond_9

    sget v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_UNREAD:I

    .line 286
    .local v1, color:I
    :goto_5
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v1}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 304
    .local v4, from:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 305
    sget-object v9, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    const/4 v11, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x11

    invoke-virtual {v4, v9, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 310
    :cond_4
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v9

    const/16 v11, 0xa

    if-ne v9, v11, :cond_a

    .line 311
    iget-object v9, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v9

    const/16 v11, 0x88

    invoke-virtual {v9, v11}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, title:Ljava/lang/String;
    const v9, 0x7f0f0078

    invoke-virtual {v7, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 321
    .end local v8           #title:Ljava/lang/String;
    :goto_6
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v6

    .line 322
    .local v6, parser:Lcom/android/mms/util/SmileyParser2;
    const v11, 0x7f0f0035

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v9

    if-eqz v9, :cond_b

    sget v9, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_UNREAD:I

    :goto_7
    invoke-direct {p0, v12, v9}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v7, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, clickIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v3

    .line 334
    .local v3, dirMode:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getFolderModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_11

    if-eqz v3, :cond_11

    .line 335
    new-instance v0, Landroid/content/Intent;

    .end local v0           #clickIntent:Landroid/content/Intent;
    const-string v9, "com android.mms.widget.ACTION_FOLDER_MODE"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .restart local v0       #clickIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 337
    const-string v9, "folder_type"

    const/4 v11, 0x1

    invoke-virtual {v0, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v9, "thread_id"

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v0, v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 356
    :goto_8
    const v9, 0x7f0f01ad

    invoke-virtual {v7, v9, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 358
    monitor-exit v10

    goto/16 :goto_0

    .line 267
    .end local v0           #clickIntent:Landroid/content/Intent;
    .end local v1           #color:I
    .end local v3           #dirMode:Z
    .end local v4           #from:Landroid/text/SpannableStringBuilder;
    .end local v5           #hasAttachment:Z
    .end local v6           #parser:Lcom/android/mms/util/SmileyParser2;
    :cond_5
    const v9, 0x7f0f01ae

    const/16 v11, 0x8

    invoke-virtual {v7, v9, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 268
    const v9, 0x7f0f01af

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 271
    .restart local v5       #hasAttachment:Z
    :cond_6
    const/16 v9, 0x8

    goto/16 :goto_2

    .line 275
    :cond_7
    const/16 v9, 0x8

    goto/16 :goto_3

    .line 278
    :cond_8
    sget v9, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_READ:I

    goto/16 :goto_4

    .line 284
    :cond_9
    sget v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_READ:I

    goto/16 :goto_5

    .line 315
    .restart local v1       #color:I
    .restart local v4       #from:Landroid/text/SpannableStringBuilder;
    :cond_a
    const v9, 0x7f0f0078

    invoke-virtual {v7, v9, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_6

    .line 322
    .restart local v6       #parser:Lcom/android/mms/util/SmileyParser2;
    :cond_b
    sget v9, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_READ:I

    goto :goto_7

    .line 339
    .restart local v0       #clickIntent:Landroid/content/Intent;
    .restart local v3       #dirMode:Z
    :cond_c
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 340
    const-string v9, "folder_type"

    const/4 v11, 0x3

    invoke-virtual {v0, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8

    .line 341
    :cond_d
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 342
    const-string v9, "folder_type"

    const/4 v11, 0x4

    invoke-virtual {v0, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8

    .line 343
    :cond_e
    const/4 v9, 0x2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v11

    if-eq v9, v11, :cond_f

    const/4 v9, 0x3

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v11

    if-ne v9, v11, :cond_10

    .line 345
    :cond_f
    const-string v9, "folder_type"

    const/4 v11, 0x2

    invoke-virtual {v0, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8

    .line 347
    :cond_10
    const-string v9, "folder_type"

    const/4 v11, 0x5

    invoke-virtual {v0, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const-string v9, "thread_id"

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v0, v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_8

    .line 351
    :cond_11
    new-instance v0, Landroid/content/Intent;

    .end local v0           #clickIntent:Landroid/content/Intent;
    const-string v9, "com android.mms.widget.ACTION_CONVERSATION_MODE"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .restart local v0       #clickIntent:Landroid/content/Intent;
    const-string v9, "conversation_type"

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v11

    invoke-virtual {v0, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    const-string v9, "thread_id"

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v0, v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "MmsWidgetService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 134
    return-void
.end method

.method public onDataSetChanged()V
    .locals 4

    .prologue
    .line 150
    const-string v0, "MmsWidgetService"

    const-string v1, "onDataSetChanged is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 152
    :try_start_0
    sget-object v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->queryAllConversations()Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    .line 157
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->queryUnreadCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    .line 158
    const-string v0, "MmsWidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUnreadConvCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->onLoadComplete()V

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "MmsWidgetService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->sConversationCursor:Landroid/database/Cursor;

    .line 144
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 145
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 4
    .parameter "updated"

    .prologue
    .line 436
    const-string v0, "Mms:widget"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "MmsWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate from Contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    const-string v0, "MmsWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate from Contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUpdateFromContactRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 442
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUpdateFromContactRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    return-void
.end method

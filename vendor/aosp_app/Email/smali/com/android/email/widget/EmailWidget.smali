.class public Lcom/android/email/widget/EmailWidget;
.super Ljava/lang/Object;
.source "EmailWidget.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMAND_NAME_VIEW_MESSAGE:Ljava/lang/String; = "view_message"

.field private static final COMMAND_URI:Landroid/net/Uri; = null

.field private static final COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri; = null

.field private static final MAX_MESSAGE_LIST_COUNT:I = 0x19

.field public static final TAG:Ljava/lang/String; = "EmailWidget"

.field private static final WIDGET_DATA_MIME_TYPE:Ljava/lang/String; = "com.android.email/widget_data"


# instance fields
.field private mAccountId:J

.field private mAccountName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

.field private final mLoader:Lcom/android/email/widget/EmailWidgetLoader;

.field private mMailboxName:Ljava/lang/String;

.field private final mResource:Landroid/content/res/Resources;

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private final mWidgetId:I

.field private final mWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "widget://command"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    .line 91
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "view_message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "_widgetId"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    .line 125
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating EmailWidget with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    .line 129
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 131
    iput p2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    .line 135
    new-instance v0, Lcom/android/email/widget/EmailWidgetLoader;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-direct {v0, v1, v2}, Lcom/android/email/widget/EmailWidgetLoader;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    .line 136
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mResource:Landroid/content/res/Resources;

    .line 138
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 139
    return-void
.end method

.method private addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "size"
    .parameter "color"

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 331
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 332
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 335
    if-eqz p3, :cond_0

    .line 336
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 339
    :cond_0
    return-object v0
.end method

.method private getOpenMessageIntent(Landroid/content/Context;JJ)Landroid/content/Intent;
    .locals 8
    .parameter "context"
    .parameter "messageId"
    .parameter "mailboxId"

    .prologue
    .line 238
    invoke-static {p1, p4, p5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    .line 239
    .local v7, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v7, :cond_0

    .line 240
    iget-wide v1, v7, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-object v0, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/Welcome;->createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStyledSubjectSnippet(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 8
    .parameter "subject"
    .parameter "snippet"
    .parameter "read"

    .prologue
    const/16 v7, 0x21

    const/4 v4, 0x0

    .line 351
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 352
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 353
    .local v0, hasSubject:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 354
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 355
    .local v1, ss:Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/StyleSpan;

    if-eqz p3, :cond_3

    move v3, v4

    :goto_0
    invoke-direct {v5, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v5, v4, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 357
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mResource:Landroid/content/res/Resources;

    const v6, 0x7f09001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 360
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 361
    const/4 v0, 0x1

    .line 363
    .end local v1           #ss:Landroid/text/SpannableString;
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 364
    if-eqz v0, :cond_1

    .line 365
    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f080120

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 367
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 368
    .restart local v1       #ss:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mResource:Landroid/content/res/Resources;

    const v6, 0x7f09001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 371
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 373
    .end local v1           #ss:Landroid/text/SpannableString;
    :cond_2
    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0a0012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 355
    .restart local v1       #ss:Landroid/text/SpannableString;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isCursorValid()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-virtual {v0}, Landroid/database/CursorWrapper;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 4
    .parameter "views"
    .parameter "buttonId"
    .parameter "intent"

    .prologue
    .line 208
    const/high16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    long-to-int v2, v2

    const/high16 v3, 0x800

    invoke-static {v1, v2, p3, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 212
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 213
    return-void
.end method

.method private setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "views"
    .parameter "viewId"
    .parameter "baseUri"
    .parameter "messageId"
    .parameter "mailboxId"

    .prologue
    .line 225
    const/4 v7, 0x0

    .line 227
    .local v7, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/widget/EmailWidget;->getOpenMessageIntent(Landroid/content/Context;JJ)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 234
    :goto_0
    invoke-virtual {p1, p2, v7}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 235
    return-void

    .line 228
    :catch_0
    move-exception v6

    .line 230
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#setFillInIntent(); invalid messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTextViewTextAndDesc(Landroid/widget/RemoteViews;ILjava/lang/String;)V
    .locals 0
    .parameter "views"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 247
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 250
    return-void
.end method

.method private setupTitleAndCount(Landroid/widget/RemoteViews;)V
    .locals 5
    .parameter "views"

    .prologue
    const v4, 0x7f0f0116

    const/4 v3, 0x0

    .line 254
    const v1, 0x7f0f0115

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mMailboxName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/email/widget/EmailWidget;->setTextViewTextAndDesc(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    .line 255
    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 256
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v1}, Lcom/android/email/widget/EmailWidget;->setTextViewTextAndDesc(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    .line 257
    const-string v0, ""

    .line 258
    .local v0, count:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-virtual {v2}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getMessageCount()I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UiUtilities;->getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_0
    const v1, 0x7f0f0117

    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/widget/EmailWidget;->setTextViewTextAndDesc(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    .line 262
    return-void
.end method

.method private updateHeader()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const v10, 0x7f0f011a

    const v9, 0x7f0f0119

    const v8, 0x7f0f0118

    const/4 v7, 0x0

    .line 269
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 270
    const-string v3, "EmailWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#updateHeader(); widgetId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f04005d

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 278
    .local v2, views:Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "appWidgetId"

    iget v4, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 281
    invoke-virtual {v2, v9, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 283
    invoke-direct {p0, v2}, Lcom/android/email/widget/EmailWidget;->setupTitleAndCount(Landroid/widget/RemoteViews;)V

    .line 285
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    iget-wide v3, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    const-wide/high16 v5, 0x1000

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 289
    invoke-virtual {v2, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 293
    :goto_0
    invoke-virtual {v2, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 294
    const/16 v3, 0x8

    invoke-virtual {v2, v10, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 296
    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->getWidgetIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 297
    invoke-direct {p0, v2, v8, v0}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 299
    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 300
    const v3, 0x7f0f0113

    invoke-direct {p0, v2, v3, v0}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 313
    :goto_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/email/activity/Welcome;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, v7, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 316
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, v9, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 319
    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v4, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v3, v4, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 320
    return-void

    .line 291
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    invoke-virtual {v2, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {v2, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 305
    const/16 v3, 0x8

    invoke-virtual {v2, v9, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 306
    invoke-virtual {v2, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 308
    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 309
    invoke-direct {p0, v2, v10, v0}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 470
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 475
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04005f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 476
    .local v0, view:Landroid/widget/RemoteViews;
    const v1, 0x7f0f0122

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f0801fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 477
    return-object v0
.end method

.method public declared-synchronized getViewAt(I)Landroid/widget/RemoteViews;
    .locals 29
    .parameter "position"

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/widget/EmailWidget;->getLoadingView()Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 457
    :goto_0
    monitor-exit p0

    return-object v4

    .line 382
    :cond_1
    :try_start_1
    new-instance v4, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f04005e

    invoke-direct {v4, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 384
    .local v4, views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/16 v17, 0x1

    .line 385
    .local v17, isUnread:Z
    :goto_1
    const v13, 0x7f020012

    .line 386
    .local v13, drawableId:I
    if-eqz v17, :cond_3

    .line 387
    const v3, 0x7f0f011c

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 388
    const v13, 0x7f020013

    .line 392
    :goto_2
    const v3, 0x7f0f011b

    const-string v5, "setBackgroundResource"

    invoke-virtual {v4, v3, v5, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v19, ""

    .line 398
    .local v19, rawSender:Ljava/lang/String;
    :goto_3
    new-instance v14, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 399
    .local v14, from:Landroid/text/SpannableStringBuilder;
    if-eqz v17, :cond_5

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_4
    const/4 v5, 0x0

    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v27, 0x21

    move/from16 v0, v27

    invoke-virtual {v14, v3, v5, v6, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0a0011

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/widget/EmailWidget;->mResource:Landroid/content/res/Resources;

    const v6, 0x7f09001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3, v5}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v22

    .line 405
    .local v22, styledFrom:Ljava/lang/CharSequence;
    const v3, 0x7f0f011d

    move-object/from16 v0, v22

    invoke-virtual {v4, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v25

    .line 411
    .local v25, timestamp:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v25

    invoke-static {v3, v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 413
    .local v12, date:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0a0013

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/widget/EmailWidget;->mResource:Landroid/content/res/Resources;

    const v6, 0x7f09001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v5}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v21

    .line 416
    .local v21, styledDate:Ljava/lang/CharSequence;
    const v3, 0x7f0f0120

    move-object/from16 v0, v21

    invoke-virtual {v4, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 422
    .local v23, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 423
    .local v20, snippet:Ljava/lang/String;
    if-nez v17, :cond_6

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/widget/EmailWidget;->getStyledSubjectSnippet(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v24

    .line 424
    .local v24, subjectAndSnippet:Ljava/lang/CharSequence;
    const v3, 0x7f0f0121

    move-object/from16 v0, v24

    invoke-virtual {v4, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v18

    .line 429
    .local v18, messageFlags:I
    and-int/lit8 v3, v18, 0x4

    if-eqz v3, :cond_7

    const/16 v16, 0x1

    .line 430
    .local v16, hasInvite:Z
    :goto_6
    const v5, 0x7f0f011e

    if-eqz v16, :cond_8

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v15, 0x1

    .line 434
    .local v15, hasAttachment:Z
    :goto_8
    const v5, 0x7f0f011f

    if-eqz v15, :cond_a

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 437
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    const-wide/high16 v27, 0x1000

    cmp-long v3, v5, v27

    if-eqz v3, :cond_b

    .line 438
    const v3, 0x7f0f0067

    const/4 v5, 0x4

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 453
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 454
    .local v7, messageId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, mailboxId:Ljava/lang/String;
    const v5, 0x7f0f011b

    sget-object v6, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/email/widget/EmailWidget;->setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 379
    .end local v4           #views:Landroid/widget/RemoteViews;
    .end local v7           #messageId:Ljava/lang/String;
    .end local v8           #mailboxId:Ljava/lang/String;
    .end local v12           #date:Ljava/lang/String;
    .end local v13           #drawableId:I
    .end local v14           #from:Landroid/text/SpannableStringBuilder;
    .end local v15           #hasAttachment:Z
    .end local v16           #hasInvite:Z
    .end local v17           #isUnread:Z
    .end local v18           #messageFlags:I
    .end local v19           #rawSender:Ljava/lang/String;
    .end local v20           #snippet:Ljava/lang/String;
    .end local v21           #styledDate:Ljava/lang/CharSequence;
    .end local v22           #styledFrom:Ljava/lang/CharSequence;
    .end local v23           #subject:Ljava/lang/String;
    .end local v24           #subjectAndSnippet:Ljava/lang/CharSequence;
    .end local v25           #timestamp:J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 384
    .restart local v4       #views:Landroid/widget/RemoteViews;
    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 390
    .restart local v13       #drawableId:I
    .restart local v17       #isUnread:Z
    :cond_3
    const v3, 0x7f0f011c

    const/4 v5, 0x4

    :try_start_2
    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 394
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_3

    .line 399
    .restart local v14       #from:Landroid/text/SpannableStringBuilder;
    .restart local v19       #rawSender:Ljava/lang/String;
    :cond_5
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_4

    .line 423
    .restart local v12       #date:Ljava/lang/String;
    .restart local v20       #snippet:Ljava/lang/String;
    .restart local v21       #styledDate:Ljava/lang/CharSequence;
    .restart local v22       #styledFrom:Ljava/lang/CharSequence;
    .restart local v23       #subject:Ljava/lang/String;
    .restart local v25       #timestamp:J
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 429
    .restart local v18       #messageFlags:I
    .restart local v24       #subjectAndSnippet:Ljava/lang/CharSequence;
    :cond_7
    const/16 v16, 0x0

    goto :goto_6

    .line 430
    .restart local v16       #hasInvite:Z
    :cond_8
    const/16 v3, 0x8

    goto :goto_7

    .line 432
    :cond_9
    const/4 v15, 0x0

    goto :goto_8

    .line 434
    .restart local v15       #hasAttachment:Z
    :cond_a
    const/16 v3, 0x8

    goto :goto_9

    .line 440
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v9

    .line 441
    .local v9, accountId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/widget/EmailWidget;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v3, v9, v10}, Lcom/android/email/ResourceHelper;->getAccountColorId(J)I

    move-result v11

    .line 442
    .local v11, colorId:I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_c

    .line 444
    const v3, 0x7f0f0067

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 445
    const v3, 0x7f0f0067

    invoke-virtual {v4, v3, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_a

    .line 448
    :cond_c
    const v3, 0x7f0f0067

    const/4 v5, 0x4

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_a
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 523
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onCreate(); widgetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 497
    return-void
.end method

.method public onDeleted()V
    .locals 3

    .prologue
    .line 501
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onDeleted(); widgetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    .line 507
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 512
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onDestroy(); widgetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    .line 518
    :cond_0
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "EmailWidget"

    const-string v1, "EmailWidget onLoadComplete()"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    check-cast p2, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    .end local p2
    iput-object p2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    .line 183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getNeedReload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/email/widget/WidgetManager;->getOrCreateWidget(Landroid/content/Context;I)Lcom/android/email/widget/EmailWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidget;->start()V

    .line 197
    :goto_0
    return-void

    .line 183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mAccountName:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getMailboxName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mMailboxName:Ljava/lang/String;

    .line 195
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->updateHeader()V

    .line 196
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    const v2, 0x7f0f0119

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/widget/EmailWidget;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 167
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#reset(); widgetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidget;->start()V

    .line 169
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    .line 146
    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-static {v4, v5}, Lcom/android/email/widget/WidgetManager;->loadAccountIdPref(Landroid/content/Context;I)J

    move-result-wide v0

    .line 147
    .local v0, accountId:J
    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-static {v4, v5}, Lcom/android/email/widget/WidgetManager;->loadMailboxIdPref(Landroid/content/Context;I)J

    move-result-wide v2

    .line 150
    .local v2, mailboxId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 151
    const-wide/high16 v0, 0x1000

    .line 152
    const-wide/16 v2, -0x2

    .line 154
    :cond_0
    iput-wide v0, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    .line 155
    const-string v4, "EmailWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EmailWidget start() mAccountId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mWidgetId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v4}, Lcom/android/email/widget/EmailWidgetLoader;->init()V

    .line 159
    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    iget-wide v5, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/android/email/widget/EmailWidgetLoader;->load(JJ)V

    .line 160
    monitor-exit p0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

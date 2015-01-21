.class public Lcom/mediatek/email/provider/EmailSuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "EmailSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;
    }
.end annotation


# static fields
.field public static final ACTION_SEARCH_SUGGESTION_CLICKED:Ljava/lang/String; = "com.mediatek.email.action.SEARCH_SUGGESTION_CLICKED"

.field public static final COLUMN_ACCOUNT_KEY:I = 0x2

.field public static final COLUMN_ATTACHMENTS:I = 0x8

.field public static final COLUMN_DATE:I = 0x5

.field public static final COLUMN_DISPLAY_NAME:I = 0x3

.field public static final COLUMN_FAVORITE:I = 0x7

.field public static final COLUMN_FLAGS:I = 0x9

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_MAILBOX_KEY:I = 0x1

.field public static final COLUMN_READ:I = 0x6

.field public static final COLUMN_SNIPPET:I = 0xa

.field public static final COLUMN_SUBJECT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "EmailSuggestionsProvider"

.field static final MESSAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final VIEW_MAILBOX_INTENT_URL_PATH:Ljava/lang/String; = "/view/mailbox"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/email/provider/EmailSuggestionsProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, query:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x2

    const-string v6, "ALL"

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->buildLocalSearchSelection(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, emailSelection:Ljava/lang/String;
    const/4 v12, 0x0

    .line 103
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/mediatek/email/provider/EmailSuggestionsProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "timeStamp DESC"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 110
    if-nez v12, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v13

    .line 107
    .local v13, ex:Landroid/database/sqlite/SQLiteException;
    const-string v0, "EmailSuggestionsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    .end local v13           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_0
    new-instance v0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;

    invoke-direct {v0, p0, v12, v5}, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;-><init>(Lcom/mediatek/email/provider/EmailSuggestionsProvider;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

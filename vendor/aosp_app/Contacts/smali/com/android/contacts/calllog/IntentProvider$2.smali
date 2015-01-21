.class final Lcom/android/contacts/calllog/IntentProvider$2;
.super Lcom/android/contacts/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/contacts/calllog/CallLogAdapter;IJI)Lcom/android/contacts/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/android/contacts/calllog/CallLogAdapter;

.field final synthetic val$groupSize:I

.field final synthetic val$id:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogAdapter;IIJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/contacts/calllog/IntentProvider$2;->val$adapter:Lcom/android/contacts/calllog/CallLogAdapter;

    iput p2, p0, Lcom/android/contacts/calllog/IntentProvider$2;->val$position:I

    iput p3, p0, Lcom/android/contacts/calllog/IntentProvider$2;->val$groupSize:I

    iput-wide p4, p0, Lcom/android/contacts/calllog/IntentProvider$2;->val$id:J

    invoke-direct {p0}, Lcom/android/contacts/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 75
    iget-object v6, p0, Lcom/android/contacts/calllog/IntentProvider$2;->val$adapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v6}, Lcom/android/common/widget/GroupingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 76
    .local v0, cursor:Landroid/database/Cursor;
    iget v6, p0, Lcom/android/contacts/calllog/IntentProvider$2;->val$position:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 83
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/android/contacts/CallDetailActivity;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "voicemail_uri"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, voicemailUri:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 87
    const-string v6, "EXTRA_VOICEMAIL_URI"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    :cond_0
    const-string v6, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 96
    .local v4, tagId:I
    iget v6, p0, Lcom/android/contacts/calllog/IntentProvider$2;->val$groupSize:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 98
    iget v6, p0, Lcom/android/contacts/calllog/IntentProvider$2;->val$groupSize:I

    new-array v1, v6, [J

    .line 100
    .local v1, ids:[J
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    iget v6, p0, Lcom/android/contacts/calllog/IntentProvider$2;->val$groupSize:I

    if-ge v2, v6, :cond_1

    .line 101
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const-string v6, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 112
    .end local v1           #ids:[J
    .end local v2           #index:I
    :goto_1
    const-string v6, "TAGID"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    return-object v3

    .line 107
    :cond_2
    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/android/contacts/calllog/IntentProvider$2;->val$id:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

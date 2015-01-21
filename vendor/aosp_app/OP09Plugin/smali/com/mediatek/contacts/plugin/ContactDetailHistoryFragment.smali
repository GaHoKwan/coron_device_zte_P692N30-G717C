.class public Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;
.super Landroid/app/Fragment;
.source "ContactDetailHistoryFragment.java"

# interfaces
.implements Lcom/android/contacts/ext/FragmentKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$1;,
        Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;,
        Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
    }
.end annotation


# static fields
.field private static final HISTORY_CALLLOG:I = 0x1

.field private static final HISTORY_EMPTY:I = 0x3

.field private static final HISTORY_LIST_SEPERATOR:I = 0x2

.field private static final HISTORY_MMS:I = 0x0

.field private static final HISTORY_VIEW_COUNT:I = 0x4

.field public static final MMS_BODY:I = 0x4

.field public static final MMS_DATE:I = 0x3

.field public static final MMS_MMS_SMS:I = 0x6

.field public static final MMS_NUMBER:I = 0x2

.field public static final MMS_SEND_RECEIVE_TYPE:I = 0x5

.field public static final MMS_THREAD_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContactDetailHistoryFragment"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mContactId:J

.field private mEmptyView:Landroid/widget/TextView;

.field private mHistoryDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryListAdapter:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;

.field private mHistoryListView:Landroid/widget/ListView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLookupUri:Landroid/net/Uri;

.field private mPhoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginContext:Landroid/content/Context;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "pluginContext"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPhoneNumbers:Ljava/util/List;

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mCalendar:Ljava/util/Calendar;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPhoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 11
    .parameter "elapsedSeconds"

    .prologue
    const-wide/16 v9, 0xa

    const-wide/16 v7, 0x3c

    .line 170
    const-wide/16 v1, 0x0

    .line 171
    .local v1, minutes:J
    const-wide/16 v4, 0x0

    .line 173
    .local v4, seconds:J
    cmp-long v6, p1, v7

    if-ltz v6, :cond_0

    .line 174
    div-long v1, p1, v7

    .line 175
    mul-long v6, v1, v7

    sub-long/2addr p1, v6

    .line 177
    :cond_0
    move-wide v4, p1

    .line 178
    const-string v0, ""

    .line 179
    .local v0, minute:Ljava/lang/String;
    const-string v3, ""

    .line 180
    .local v3, second:Ljava/lang/String;
    cmp-long v6, v4, v9

    if-gez v6, :cond_1

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    :goto_0
    cmp-long v6, v1, v9

    if-gez v6, :cond_2

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09010f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 183
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getCalllogHistroyList(Ljava/util/List;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, historyList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;>;"
    new-instance v10, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;

    const/4 v0, 0x0

    invoke-direct {v10, p0, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;-><init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$1;)V

    .line 117
    .local v10, seperator:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setFromApp(I)V

    .line 118
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09010d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setAppName(Ljava/lang/String;)V

    .line 121
    const-string v0, "content://call_log/callsjoindataview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 122
    .local v1, queryUri:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "number"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "date"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "duration"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "simid"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 128
    .local v7, callCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 130
    const-string v0, "ContactDetailHistoryFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCalllogHistroyList ==> callCursor.getCount(): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 132
    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    .line 135
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, number:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 137
    .local v12, time:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 138
    .local v8, callType:I
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 139
    .local v11, simId:I
    new-instance v6, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;-><init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$1;)V

    .line 140
    .local v6, call:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setFromApp(I)V

    .line 141
    invoke-virtual {v6, v12}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setCallLogDate(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v6, v9}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setCallLogPhoneNumber(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setCallDuration(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v6, v8}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setCallLogPhoneIcon(I)V

    .line 145
    invoke-virtual {v6, v11}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setCallLogSimIcon(I)V

    .line 146
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    .end local v6           #call:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
    .end local v8           #callType:I
    .end local v9           #number:Ljava/lang/String;
    .end local v11           #simId:I
    .end local v12           #time:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 159
    return-void
.end method

.method private getHistoryDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, historyList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;>;"
    invoke-direct {p0, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->getMmsHistoryList(Ljava/util/List;)V

    .line 110
    invoke-direct {p0, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->getCalllogHistroyList(Ljava/util/List;)V

    .line 112
    return-object v0
.end method

.method private getMmsHistoryList(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, historyList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;>;"
    new-instance v12, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;

    const/4 v0, 0x0

    invoke-direct {v12, p0, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;-><init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$1;)V

    .line 196
    .local v12, seperator:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setFromApp(I)V

    .line 197
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setAppName(Ljava/lang/String;)V

    .line 200
    const-string v0, "content://mms-sms/conversations/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 201
    .local v11, queryUri:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->getMmsSelection()Ljava/lang/StringBuilder;

    move-result-object v10

    .line 202
    .local v10, numbers:Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "numbers"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 204
    .local v6, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 207
    .local v7, callCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 209
    const-string v0, "ContactDetailHistoryFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMmsHistoryList ==> callCursor.getCount(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 211
    invoke-interface {p1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, number:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, time:Ljava/lang/String;
    new-instance v8, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;-><init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$1;)V

    .line 220
    .local v8, historyMMS:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setMmsThreadId(I)V

    .line 221
    invoke-virtual {v8, v13}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setMmsDate(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v8, v9}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setMmsPhoneNumber(Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setMmsContent(Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setMmsSentReceive(I)V

    .line 225
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setMmsMMSsms(I)V

    .line 226
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->setFromApp(I)V

    .line 227
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    .end local v8           #historyMMS:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
    .end local v9           #number:Ljava/lang/String;
    .end local v13           #time:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 239
    return-void
.end method

.method private getMmsSelection()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, numbers:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPhoneNumbers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 244
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPhoneNumbers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->removeAllSimbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPhoneNumbers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 248
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v2           #phoneNumber:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private getSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPhoneNumbers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeAllSimbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 257
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 258
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public handleKeyDown(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mView:Landroid/view/View;

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListView:Landroid/widget/ListView;

    .line 98
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mView:Landroid/view/View;

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mEmptyView:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f090113

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    new-instance v0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;-><init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$1;)V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListAdapter:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;

    .line 103
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 296
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 305
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 300
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 301
    const/4 v0, 0x1

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 267
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 268
    const-string v0, "ContactDetailHistoryFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " == onResume() == mPluginContext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPluginContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->getHistoryDataList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;

    .line 273
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :goto_1
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListAdapter:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListAdapter:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 292
    return-void
.end method

.method public setData(Landroid/net/Uri;JLjava/util/List;)V
    .locals 5
    .parameter "lookupUri"
    .parameter "contactId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, mPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 309
    const-string v0, "ContactDetailHistoryFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lookupUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | contactId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mPhoneNumbers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iput-object p4, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mPhoneNumbers:Ljava/util/List;

    .line 311
    iput-wide p2, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mContactId:J

    .line 312
    if-nez p4, :cond_0

    .line 332
    :goto_0
    return-void

    .line 315
    :cond_0
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mLookupUri:Landroid/net/Uri;

    .line 317
    invoke-direct {p0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->getHistoryDataList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;

    .line 319
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListAdapter:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mHistoryListAdapter:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

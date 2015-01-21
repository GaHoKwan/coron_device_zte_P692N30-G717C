.class public Lcom/mediatek/apst/target/data/provider/calendar/CalendarContent;
.super Ljava/lang/Object;
.source "CalendarContent.java"


# static fields
.field public static final ACCESS_LEVEL:Ljava/lang/String; = "access_level"

.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "calendar_displayName"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_OWNER_ACCOUNT:Ljava/lang/String; = "ownerAccount"

.field public static final COLUMN_SYNC_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final COLUMN_SYNC_EVENTS:Ljava/lang/String; = "sync_events"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTRIBUTOR_ACCESS:I = 0x1f4

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "displayName"

.field public static final EDITOR_ACCESS:I = 0x258

.field public static final FREEBUSY_ACCESS:I = 0x64

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NO_ACCESS:I = 0x0

.field public static final ORGANIZER_CAN_RESPOND:Ljava/lang/String; = "organizerCanRespond"

.field public static final OVERRIDE_ACCESS:I = 0x190

.field public static final OWNER_ACCESS:I = 0x2bc

.field public static final READ_ACCESS:I = 0xc8

.field public static final RESPOND_ACCESS:I = 0x12c

.field public static final ROOT_ACCESS:I = 0x320

.field public static final SELECTED:Ljava/lang/String; = "selected"

.field public static final SYNC_ACCOUNT:Ljava/lang/String; = "_sync_account"

.field public static final SYNC_DATA:Ljava/lang/String; = "_sync_local_id"

.field public static final SYNC_DIRTY:Ljava/lang/String; = "_sync_dirty"

.field public static final SYNC_ID:Ljava/lang/String; = "_sync_id"

.field public static final SYNC_MARK:Ljava/lang/String; = "_sync_mark"

.field public static final SYNC_TIME:Ljava/lang/String; = "_sync_time"

.field public static final SYNC_VERSION:Ljava/lang/String; = "_sync_version"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/calendar/CalendarContent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursorToCalendar(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/calendar/Calendar;
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 278
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_2

    :cond_0
    move-object v0, v3

    .line 310
    :cond_1
    :goto_0
    return-object v0

    .line 282
    :cond_2
    new-instance v0, Lcom/mediatek/apst/util/entity/calendar/Calendar;

    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/calendar/Calendar;-><init>()V

    .line 286
    .local v0, calendar:Lcom/mediatek/apst/util/entity/calendar/Calendar;
    :try_start_0
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 287
    .local v1, colId:I
    if-eq v6, v1, :cond_3

    .line 288
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 291
    :cond_3
    const-string v4, "name"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 292
    if-eq v6, v1, :cond_4

    .line 293
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/entity/calendar/Calendar;->setName(Ljava/lang/String;)V

    .line 296
    :cond_4
    const-string v4, "calendar_displayName"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 297
    if-eq v6, v1, :cond_5

    .line 298
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/entity/calendar/Calendar;->setDisplayName(Ljava/lang/String;)V

    .line 301
    :cond_5
    const-string v4, "ownerAccount"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 302
    if-eq v6, v1, :cond_1

    .line 303
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/entity/calendar/Calendar;->setOwnerAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    .end local v1           #colId:I
    :catch_0
    move-exception v2

    .line 307
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 9
    .parameter "cursor"
    .parameter "buffer"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 321
    if-nez p0, :cond_0

    .line 322
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v3, "Cursor is null."

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    :goto_0
    return v2

    .line 324
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-eq v5, v7, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 326
    :cond_1
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v3, "Cursor has moved to the end."

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    if-nez p1, :cond_3

    .line 330
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v3, "Buffer is null."

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 339
    :try_start_0
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 340
    .local v0, colId:I
    if-eq v7, v0, :cond_4

    .line 341
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 346
    :goto_1
    const-string v5, "name"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 347
    if-eq v7, v0, :cond_5

    .line 348
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 353
    :goto_2
    const-string v5, "calendar_displayName"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 354
    if-eq v7, v0, :cond_6

    .line 355
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 360
    :goto_3
    const-string v5, "ownerAccount"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 361
    if-eq v7, v0, :cond_7

    .line 362
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 367
    :goto_4
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v2, v3

    .line 380
    goto :goto_0

    .line 343
    :cond_4
    const-wide/16 v5, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 368
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 369
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    invoke-static {v4, v8, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 350
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_5
    const/4 v5, 0x0

    :try_start_1
    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 372
    .end local v0           #colId:I
    :catch_1
    move-exception v1

    .line 377
    .local v1, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move v2, v4

    .line 378
    goto/16 :goto_0

    .line 357
    .end local v1           #e:Ljava/nio/BufferOverflowException;
    .restart local v0       #colId:I
    :cond_6
    const/4 v5, 0x0

    :try_start_2
    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_3

    .line 364
    :cond_7
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

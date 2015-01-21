.class public Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;
.super Ljava/lang/Object;
.source "AttendeeContent.java"


# static fields
.field public static final ATTENDEE_STATUS_ACCEPTED:I = 0x1

.field public static final ATTENDEE_STATUS_DECLINED:I = 0x2

.field public static final ATTENDEE_STATUS_INVITED:I = 0x3

.field public static final ATTENDEE_STATUS_NONE:I = 0x0

.field public static final ATTENDEE_STATUS_TENTATIVE:I = 0x4

.field public static final COLUMN_ATTENDEE_EMAIL:Ljava/lang/String; = "attendeeEmail"

.field public static final COLUMN_ATTENDEE_NAME:Ljava/lang/String; = "attendeeName"

.field public static final COLUMN_ATTENDEE_RELATIONSHIP:Ljava/lang/String; = "attendeeRelationship"

.field public static final COLUMN_ATTENDEE_STATUS:Ljava/lang/String; = "attendeeStatus"

.field public static final COLUMN_ATTENDEE_TYPE:Ljava/lang/String; = "attendeeType"

.field public static final COLUMN_EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final RELATIONSHIP_ATTENDEE:I = 0x1

.field public static final RELATIONSHIP_NONE:I = 0x0

.field public static final RELATIONSHIP_ORGANIZER:I = 0x2

.field public static final RELATIONSHIP_PERFORMER:I = 0x3

.field public static final RELATIONSHIP_SPEAKER:I = 0x4

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_OPTIONAL:I = 0x2

.field public static final TYPE_REQUIRED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "content://com.android.calendar/attendees"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursorToAttendee(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/calendar/Attendee;
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 131
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

    .line 177
    :cond_1
    :goto_0
    return-object v0

    .line 136
    :cond_2
    new-instance v0, Lcom/mediatek/apst/util/entity/calendar/Attendee;

    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/calendar/Attendee;-><init>()V

    .line 140
    .local v0, attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    :try_start_0
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, colId:I
    if-eq v6, v1, :cond_3

    .line 142
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 145
    :cond_3
    const-string v4, "event_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 146
    if-eq v6, v1, :cond_4

    .line 147
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->setEventId(J)V

    .line 150
    :cond_4
    const-string v4, "attendeeName"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 151
    if-eq v6, v1, :cond_5

    .line 152
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->setAttendeeName(Ljava/lang/String;)V

    .line 155
    :cond_5
    const-string v4, "attendeeEmail"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 156
    if-eq v6, v1, :cond_6

    .line 157
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->setAttendeeEmail(Ljava/lang/String;)V

    .line 160
    :cond_6
    const-string v4, "attendeeStatus"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 161
    if-eq v6, v1, :cond_7

    .line 162
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->setAttendeeStatus(I)V

    .line 165
    :cond_7
    const-string v4, "attendeeRelationship"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 166
    if-eq v6, v1, :cond_8

    .line 167
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->setAttendeeRelationShip(I)V

    .line 170
    :cond_8
    const-string v4, "attendeeType"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 171
    if-eq v6, v1, :cond_1

    .line 172
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->setAttendeeType(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v1           #colId:I
    :catch_0
    move-exception v2

    .line 175
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v4, v3, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 11
    .parameter "cursor"
    .parameter "buffer"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    if-nez p0, :cond_0

    .line 189
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v3, "Cursor is null."

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    :goto_0
    return v2

    .line 191
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-eq v5, v9, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 193
    :cond_1
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v3, "Cursor has moved to the end."

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    if-nez p1, :cond_3

    .line 197
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    const-string v3, "Buffer is null."

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 206
    :try_start_0
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, colId:I
    if-eq v9, v0, :cond_4

    .line 208
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 209
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Attendee: _id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    :goto_1
    const-string v5, "event_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 216
    if-eq v9, v0, :cond_5

    .line 217
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 218
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Attendee: event_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    :goto_2
    const-string v5, "attendeeName"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 225
    if-eq v9, v0, :cond_6

    .line 226
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 227
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Attendee: name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    :goto_3
    const-string v5, "attendeeEmail"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 234
    if-eq v9, v0, :cond_7

    .line 235
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 236
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Attendee: email = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    :goto_4
    const-string v5, "attendeeStatus"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 243
    if-eq v9, v0, :cond_8

    .line 244
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 245
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Attendee: statue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    :goto_5
    const-string v5, "attendeeRelationship"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 252
    if-eq v9, v0, :cond_9

    .line 253
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 254
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Attendee: relationship = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    :goto_6
    const-string v5, "attendeeType"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 263
    if-eq v9, v0, :cond_a

    .line 264
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 265
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Attendee: type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    move v2, v3

    .line 282
    goto/16 :goto_0

    .line 212
    :cond_4
    const-wide/16 v5, 0x0

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 270
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 271
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v3

    invoke-static {v4, v10, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 221
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_5
    const-wide/16 v5, 0x0

    :try_start_1
    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 274
    .end local v0           #colId:I
    :catch_1
    move-exception v1

    .line 279
    .local v1, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move v2, v4

    .line 280
    goto/16 :goto_0

    .line 230
    .end local v1           #e:Ljava/nio/BufferOverflowException;
    .restart local v0       #colId:I
    :cond_6
    const/4 v5, 0x0

    :try_start_2
    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 239
    :cond_7
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 248
    :cond_8
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_5

    .line 259
    :cond_9
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 268
    :cond_a
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7
.end method

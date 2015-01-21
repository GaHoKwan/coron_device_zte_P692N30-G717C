.class public Lcom/android/calendar/GoogleCalendarUriIntentFilter;
.super Landroid/app/Activity;
.source "GoogleCalendarUriIntentFilter.java"


# static fields
.field private static final EVENT_INDEX_DURATION:I = 0x3

.field private static final EVENT_INDEX_END:I = 0x2

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_START:I = 0x1

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "GoogleCalendarUriIntentFilter"

.field static final debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private extractEidAndEmail(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 73
    :try_start_0
    const-string v9, "eid"

    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, eidParam:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 135
    .end local v4           #eidParam:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 79
    .restart local v4       #eidParam:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 82
    .local v0, decodedBytes:[B
    const/4 v7, 0x0

    .local v7, spacePosn:I
    :goto_1
    array-length v9, v0

    if-ge v7, v9, :cond_0

    .line 83
    aget-byte v9, v0, v7

    const/16 v10, 0x20

    if-ne v9, v10, :cond_4

    .line 84
    array-length v9, v0

    sub-int/2addr v9, v7

    add-int/lit8 v6, v9, -0x1

    .line 85
    .local v6, emailLen:I
    if-eqz v7, :cond_0

    const/4 v9, 0x3

    if-lt v6, v9, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, domain:Ljava/lang/String;
    array-length v9, v0

    add-int/lit8 v9, v9, -0x2

    aget-byte v9, v0, v9

    const/16 v10, 0x40

    if-ne v9, v10, :cond_2

    .line 92
    add-int/lit8 v6, v6, -0x1

    .line 94
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v0, v9

    sparse-switch v9, :sswitch_data_0

    .line 111
    const-string v9, "GoogleCalendarUriIntentFilter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected one letter domain: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v1, "%"

    .line 120
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v3, v0, v9, v7}, Ljava/lang/String;-><init>([BII)V

    .line 121
    .local v3, eid:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    invoke-direct {v5, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V

    .line 125
    .local v5, email:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    :cond_3
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    move-object v8, v9

    goto :goto_0

    .line 96
    .end local v3           #eid:Ljava/lang/String;
    .end local v5           #email:Ljava/lang/String;
    :sswitch_0
    const-string v1, "gmail.com"

    .line 97
    goto :goto_2

    .line 99
    :sswitch_1
    const-string v1, "group.calendar.google.com"

    .line 100
    goto :goto_2

    .line 102
    :sswitch_2
    const-string v1, "holiday.calendar.google.com"

    .line 103
    goto :goto_2

    .line 105
    :sswitch_3
    const-string v1, "import.calendar.google.com"

    .line 106
    goto :goto_2

    .line 108
    :sswitch_4
    const-string v1, "group.v.calendar.google.com"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_2

    .line 82
    .end local v1           #domain:Ljava/lang/String;
    .end local v6           #emailLen:I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 132
    .end local v0           #decodedBytes:[B
    .end local v4           #eidParam:Ljava/lang/String;
    .end local v7           #spacePosn:I
    :catch_0
    move-exception v2

    .line 133
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v9, "GoogleCalendarUriIntentFilter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Punting malformed URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x6d -> :sswitch_0
        0x76 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "icicle"

    .prologue
    .line 140
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 143
    .local v19, intent:Landroid/content/Intent;
    if-eqz v19, :cond_6

    .line 144
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 145
    .local v22, uri:Landroid/net/Uri;
    if-eqz v22, :cond_5

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->extractEidAndEmail(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v14

    .line 149
    .local v14, eidParts:[Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_sync_id LIKE \"%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ownerAccount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "calendar_access_level desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 159
    .local v17, eventCursor:Landroid/database/Cursor;
    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 160
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 161
    const-string v3, "GoogleCalendarUriIntentFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " matches on event with id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v14, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 169
    .local v18, eventId:I
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 170
    .local v20, startMillis:J
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 175
    .local v15, endMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-nez v3, :cond_1

    .line 176
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 178
    .local v12, duration:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    :try_start_0
    new-instance v11, Lcom/android/calendarcommon2/Duration;

    invoke-direct {v11}, Lcom/android/calendarcommon2/Duration;-><init>()V

    .line 184
    .local v11, d:Lcom/android/calendarcommon2/Duration;
    invoke-virtual {v11, v12}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v11}, Lcom/android/calendarcommon2/Duration;->getMillis()J
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    add-long v15, v20, v3

    .line 188
    cmp-long v3, v15, v20

    if-ltz v3, :cond_0

    .line 197
    .end local v11           #d:Lcom/android/calendarcommon2/Duration;
    .end local v12           #duration:Ljava/lang/String;
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 198
    const/16 v17, 0x0

    .line 201
    const/4 v9, 0x0

    .line 202
    .local v9, attendeeStatus:I
    const-string v3, "RESPOND"

    const-string v4, "action"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    :try_start_1
    const-string v3, "rst"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 222
    :cond_2
    :goto_1
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 224
    .local v10, calendarUri:Landroid/net/Uri;
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    .restart local v19       #intent:Landroid/content/Intent;
    const-class v3, Lcom/android/calendar/EventInfoActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 226
    const-string v3, "beginTime"

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 227
    const-string v3, "endTime"

    move-object/from16 v0, v19

    move-wide v1, v15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 228
    if-eqz v9, :cond_3

    .line 229
    const-string v3, "attendeeStatus"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 248
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #attendeeStatus:I
    .end local v10           #calendarUri:Landroid/net/Uri;
    .end local v14           #eidParts:[Ljava/lang/String;
    .end local v15           #endMillis:J
    .end local v17           #eventCursor:Landroid/database/Cursor;
    .end local v18           #eventId:I
    .end local v20           #startMillis:J
    .end local v22           #uri:Landroid/net/Uri;
    :goto_2
    return-void

    .line 191
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v12       #duration:Ljava/lang/String;
    .restart local v14       #eidParts:[Ljava/lang/String;
    .restart local v15       #endMillis:J
    .restart local v17       #eventCursor:Landroid/database/Cursor;
    .restart local v18       #eventId:I
    .restart local v20       #startMillis:J
    .restart local v22       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v13

    .line 193
    .local v13, e:Lcom/android/calendarcommon2/DateException;
    goto/16 :goto_0

    .line 206
    .end local v12           #duration:Ljava/lang/String;
    .end local v13           #e:Lcom/android/calendarcommon2/DateException;
    .restart local v9       #attendeeStatus:I
    :pswitch_0
    const/4 v9, 0x1

    .line 207
    goto :goto_1

    .line 209
    :pswitch_1
    const/4 v9, 0x2

    .line 210
    goto :goto_1

    .line 212
    :pswitch_2
    const/4 v9, 0x4

    goto :goto_1

    .line 236
    .end local v9           #attendeeStatus:I
    .end local v15           #endMillis:J
    .end local v18           #eventId:I
    .end local v20           #startMillis:J
    :cond_4
    if-eqz v17, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 242
    .end local v6           #selection:Ljava/lang/String;
    .end local v14           #eidParts:[Ljava/lang/String;
    .end local v17           #eventCursor:Landroid/database/Cursor;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 247
    .end local v22           #uri:Landroid/net/Uri;
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 243
    .restart local v22       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v3

    goto :goto_3

    .line 215
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v9       #attendeeStatus:I
    .restart local v14       #eidParts:[Ljava/lang/String;
    .restart local v15       #endMillis:J
    .restart local v17       #eventCursor:Landroid/database/Cursor;
    .restart local v18       #eventId:I
    .restart local v20       #startMillis:J
    :catch_2
    move-exception v3

    goto :goto_1

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

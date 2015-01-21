.class public Lcom/mediatek/exchange/outofoffice/OutOfOffice;
.super Ljava/lang/Object;
.source "OutOfOffice.java"


# static fields
.field private static final BODY_TYPE:Ljava/lang/String; = "Text"

.field private static final SETTINGS_DISABLE:Ljava/lang/String; = "0"

.field private static final SETTINGS_ENABLE:Ljava/lang/String; = "1"

.field private static mOofParams:Lcom/android/emailcommon/service/OofParams;

.field private static sOofSvc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->sOofSvc:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMillisTimeToEmailDateTime(J)Ljava/lang/String;
    .locals 8
    .parameter "millisTime"

    .prologue
    const/16 v7, 0xa

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 170
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 171
    .local v5, time:I
    if-ge v5, v7, :cond_0

    .line 172
    invoke-static {v5}, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->getTimeString(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, month:Ljava/lang/String;
    :goto_0
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 177
    if-ge v5, v7, :cond_1

    .line 178
    invoke-static {v5}, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->getTimeString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, day:Ljava/lang/String;
    :goto_1
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 183
    if-ge v5, v7, :cond_2

    .line 184
    invoke-static {v5}, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->getTimeString(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, hour:Ljava/lang/String;
    :goto_2
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 189
    if-ge v5, v7, :cond_3

    .line 190
    invoke-static {v5}, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->getTimeString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, minute:Ljava/lang/String;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "T"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":00.000Z"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 174
    .end local v1           #day:Ljava/lang/String;
    .end local v2           #hour:Ljava/lang/String;
    .end local v3           #minute:Ljava/lang/String;
    .end local v4           #month:Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #month:Ljava/lang/String;
    goto :goto_0

    .line 180
    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #day:Ljava/lang/String;
    goto :goto_1

    .line 186
    :cond_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #hour:Ljava/lang/String;
    goto :goto_2

    .line 192
    :cond_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #minute:Ljava/lang/String;
    goto :goto_3
.end method

.method private static getTimeString(I)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stopOof(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 203
    sget-object v1, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->sOofSvc:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 204
    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 206
    sget-object v1, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->sOofSvc:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    return-void
.end method

.method public static syncOof(Landroid/content/Context;JLcom/android/emailcommon/service/OofParams;Z)Lcom/android/emailcommon/service/OofParams;
    .locals 33
    .parameter "context"
    .parameter "accountId"
    .parameter "oofParams"
    .parameter "isGet"

    .prologue
    .line 46
    const/16 v27, 0x0

    .line 47
    .local v27, res:Z
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v21

    .line 48
    .local v21, account:Lcom/android/emailcommon/provider/Account;
    if-nez v21, :cond_0

    .line 49
    const/4 v3, 0x0

    .line 154
    :goto_0
    return-object v3

    .line 51
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/exchange/EasSyncService;->setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/exchange/EasSyncService;

    move-result-object v32

    .line 52
    .local v32, svc:Lcom/android/exchange/EasSyncService;
    if-nez v32, :cond_1

    .line 53
    const/4 v3, 0x0

    goto :goto_0

    .line 55
    :cond_1
    const/16 v3, 0x44

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v26

    .line 58
    .local v26, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v26, :cond_2

    .line 59
    const/4 v3, 0x0

    goto :goto_0

    .line 62
    :cond_2
    :try_start_0
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 63
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 64
    new-instance v29, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v29 .. v29}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 65
    .local v29, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v3, 0x485

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x489

    invoke-virtual {v3, v12}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 67
    if-eqz p4, :cond_3

    .line 68
    const/16 v3, 0x487

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x493

    const-string v13, "Text"

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 119
    :goto_1
    sget-object v3, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->sOofSvc:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v32

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v3, "Settings"

    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v12

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v12}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    .line 122
    .local v28, resp:Lcom/android/exchange/EasResponse;
    :try_start_1
    invoke-virtual/range {v28 .. v28}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v22

    .line 123
    .local v22, code:I
    const/16 v3, 0xc8

    move/from16 v0, v22

    if-ne v0, v3, :cond_7

    .line 124
    invoke-virtual/range {v28 .. v28}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v25

    .line 126
    .local v25, is:Ljava/io/InputStream;
    :try_start_2
    new-instance v30, Lcom/android/exchange/adapter/SettingsParser;

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 127
    .local v30, sp:Lcom/android/exchange/adapter/SettingsParser;
    invoke-virtual/range {v30 .. v30}, Lcom/android/exchange/adapter/SettingsParser;->parse()Z

    .line 128
    invoke-virtual/range {v30 .. v30}, Lcom/android/exchange/adapter/SettingsParser;->getOofStatus()I

    move-result v3

    if-eqz v3, :cond_6

    const/16 v27, 0x1

    .line 129
    :goto_2
    invoke-virtual/range {v30 .. v30}, Lcom/android/exchange/adapter/SettingsParser;->getOofStatus()I

    move-result v4

    .line 130
    .local v4, status:I
    invoke-virtual/range {v30 .. v30}, Lcom/android/exchange/adapter/SettingsParser;->getOofState()I

    move-result v5

    .line 131
    .local v5, oofState:I
    invoke-virtual/range {v30 .. v30}, Lcom/android/exchange/adapter/SettingsParser;->getStartTimeInMillis()J

    move-result-wide v6

    .line 132
    .local v6, startTimeInMillis:J
    invoke-virtual/range {v30 .. v30}, Lcom/android/exchange/adapter/SettingsParser;->getEndTimeInMillis()J

    move-result-wide v8

    .line 133
    .local v8, endTimeInMillis:J
    invoke-virtual/range {v30 .. v30}, Lcom/android/exchange/adapter/SettingsParser;->getReplyMessage()Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, oofMessage:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Lcom/android/exchange/adapter/SettingsParser;->getIsExternal()I

    move-result v10

    .line 135
    .local v10, isExternal:I
    new-instance v3, Lcom/android/emailcommon/service/OofParams;

    invoke-direct/range {v3 .. v11}, Lcom/android/emailcommon/service/OofParams;-><init>(IIJJILjava/lang/String;)V

    sput-object v3, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->mOofParams:Lcom/android/emailcommon/service/OofParams;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 144
    .end local v4           #status:I
    .end local v5           #oofState:I
    .end local v6           #startTimeInMillis:J
    .end local v8           #endTimeInMillis:J
    .end local v10           #isExternal:I
    .end local v11           #oofMessage:Ljava/lang/String;
    .end local v25           #is:Ljava/io/InputStream;
    .end local v30           #sp:Lcom/android/exchange/adapter/SettingsParser;
    :goto_3
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 152
    sget-object v3, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->sOofSvc:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .end local v22           #code:I
    .end local v28           #resp:Lcom/android/exchange/EasResponse;
    .end local v29           #s:Lcom/android/exchange/adapter/Serializer;
    :goto_4
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v3, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    goto/16 :goto_0

    .line 72
    .restart local v29       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_3
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/service/OofParams;->getStartTimeInMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->convertMillisTimeToEmailDateTime(J)Ljava/lang/String;

    move-result-object v31

    .line 74
    .local v31, stime:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/service/OofParams;->getEndTimeInMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->convertMillisTimeToEmailDateTime(J)Ljava/lang/String;

    move-result-object v24

    .line 76
    .local v24, etime:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/service/OofParams;->getOofState()I

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    const/16 v3, 0x488

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x48a

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x48b

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/service/OofParams;->getStartTimeInMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->convertMillisTimeToEmailDateTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x48c

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/service/OofParams;->getEndTimeInMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->convertMillisTimeToEmailDateTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x48d

    invoke-virtual {v3, v12}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x48e

    invoke-virtual {v3, v12}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x491

    const-string v13, "1"

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x492

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/service/OofParams;->getReplyMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x493

    const-string v13, "Text"

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 90
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/service/OofParams;->getIsExternal()I

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    const/16 v3, 0x48d

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x48f

    invoke-virtual {v3, v12}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x491

    const-string v13, "1"

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x492

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/service/OofParams;->getReplyMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x493

    const-string v13, "Text"

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x48d

    invoke-virtual {v3, v12}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x490

    invoke-virtual {v3, v12}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x491

    const-string v13, "1"

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x492

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/service/OofParams;->getReplyMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x493

    const-string v13, "Text"

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->done()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 146
    .end local v24           #etime:Ljava/lang/String;
    .end local v29           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v31           #stime:Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 147
    .local v23, e:Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_6
    new-array v3, v3, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OOF exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 149
    new-instance v12, Lcom/android/emailcommon/service/OofParams;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v12 .. v20}, Lcom/android/emailcommon/service/OofParams;-><init>(IIJJILjava/lang/String;)V

    sput-object v12, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->mOofParams:Lcom/android/emailcommon/service/OofParams;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 152
    sget-object v3, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->sOofSvc:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto/16 :goto_4

    .line 104
    .end local v23           #e:Ljava/io/IOException;
    .restart local v24       #etime:Ljava/lang/String;
    .restart local v29       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v31       #stime:Ljava/lang/String;
    :cond_4
    const/16 v3, 0x48d

    :try_start_7
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x48f

    invoke-virtual {v3, v12}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x491

    const-string v13, "0"

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x48d

    invoke-virtual {v3, v12}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x490

    invoke-virtual {v3, v12}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x491

    const-string v13, "0"

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->done()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 152
    .end local v24           #etime:Ljava/lang/String;
    .end local v29           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v31           #stime:Ljava/lang/String;
    :catchall_0
    move-exception v3

    sget-object v12, Lcom/mediatek/exchange/outofoffice/OutOfOffice;->sOofSvc:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v3

    .line 114
    .restart local v24       #etime:Ljava/lang/String;
    .restart local v29       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v31       #stime:Ljava/lang/String;
    :cond_5
    const/16 v3, 0x488

    :try_start_8
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v12, 0x48a

    const-string v13, "0"

    invoke-virtual {v3, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->done()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    .line 128
    .end local v24           #etime:Ljava/lang/String;
    .end local v31           #stime:Ljava/lang/String;
    .restart local v22       #code:I
    .restart local v25       #is:Ljava/io/InputStream;
    .restart local v28       #resp:Lcom/android/exchange/EasResponse;
    .restart local v30       #sp:Lcom/android/exchange/adapter/SettingsParser;
    :cond_6
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 138
    .end local v30           #sp:Lcom/android/exchange/adapter/SettingsParser;
    :catchall_1
    move-exception v3

    :try_start_9
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 144
    .end local v22           #code:I
    .end local v25           #is:Ljava/io/InputStream;
    :catchall_2
    move-exception v3

    :try_start_a
    invoke-virtual/range {v28 .. v28}, Lcom/android/exchange/EasResponse;->close()V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 141
    .restart local v22       #code:I
    :cond_7
    const/4 v3, 0x1

    :try_start_b
    new-array v3, v3, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OOF returned "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_3
.end method

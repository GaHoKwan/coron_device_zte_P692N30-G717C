.class public Lcom/isw/android/corp/telephony/CallHistoryRecord;
.super Ljava/lang/Object;
.source "CallHistoryRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCallHistoryRecord"

.field public static beginDate:Ljava/util/Date;

.field public static beginTimestamp:Ljava/lang/String;

.field private static duration:I

.field private static endDate:Ljava/util/Date;

.field private static mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

.field public static ringDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 44
    sput-object v1, Lcom/isw/android/corp/telephony/CallHistoryRecord;->ringDate:Ljava/util/Date;

    .line 45
    sput-object v1, Lcom/isw/android/corp/telephony/CallHistoryRecord;->beginDate:Ljava/util/Date;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->beginTimestamp:Ljava/lang/String;

    .line 48
    sput-object v1, Lcom/isw/android/corp/telephony/CallHistoryRecord;->endDate:Ljava/util/Date;

    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->duration:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCallRecord(Ljava/lang/String;II)V
    .locals 9
    .parameter "currentPhoneNumber"
    .parameter "callCurrentStatus"
    .parameter "ccshowDurationTime"

    .prologue
    .line 64
    :try_start_0
    const-string v0, "chupload"

    .line 65
    const/4 v1, 0x1

    .line 64
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 67
    .local v6, chupload:I
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->checkCompanyPhone()V

    .line 69
    sget-object v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->beginDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsShowCall:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-boolean v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->embedShow:Z

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->endDate:Ljava/util/Date;

    .line 99
    sget-object v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->beginDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/isw/android/corp/util/WinksTools;->getCurrentTimeStamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->beginTimestamp:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->endDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/isw/android/corp/telephony/CallHistoryRecord;->beginDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->duration:I

    .line 109
    sget-object v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v2, Lcom/isw/android/corp/telephony/CallHistoryRecord;->beginTimestamp:Ljava/lang/String;

    .line 110
    sget v3, Lcom/isw/android/corp/telephony/CallHistoryRecord;->duration:I

    move-object v1, p0

    move v4, p1

    move v5, p2

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/isw/android/corp/services/WinksEngine;->AddCallRecord(Ljava/lang/String;Ljava/lang/String;III)I

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->beginDate:Ljava/util/Date;

    .line 134
    :goto_0
    sget-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsPushCall:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p1}, Lcom/isw/android/corp/telephony/CallUtil;->checkPush(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :cond_0
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->cleanCompanyItem()V

    .line 147
    .end local v6           #chupload:I
    :goto_1
    return-void

    .line 115
    .restart local v6       #chupload:I
    :cond_1
    const/4 v0, 0x2

    if-ne v6, v0, :cond_3

    .line 117
    :try_start_1
    const-string v0, "MiniCallHistoryRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentPhoneNumber: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chupload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xb

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-string v0, "MiniCallHistoryRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is mobile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_2
    const/4 v0, 0x0

    sput-object v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->ringDate:Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 138
    .end local v6           #chupload:I
    :catch_0
    move-exception v8

    .line 139
    .local v8, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MiniCallHistoryRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->cleanCompanyItem()V

    goto :goto_1

    .line 121
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v6       #chupload:I
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/isw/android/corp/util/LocalConfig;->appendOtherCallHistoryFile(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 141
    .end local v6           #chupload:I
    :catch_1
    move-exception v7

    .line 142
    .local v7, err:Ljava/lang/Error;
    :try_start_4
    const-string v0, "MiniCallHistoryRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->cleanCompanyItem()V

    goto/16 :goto_1

    .line 124
    .end local v7           #err:Ljava/lang/Error;
    .restart local v6       #chupload:I
    :cond_3
    const/4 v0, 0x3

    if-ne v6, v0, :cond_4

    .line 126
    :try_start_5
    const-string v0, "MiniCallHistoryRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentPhoneNumber: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chupload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p0}, Lcom/isw/android/corp/util/LocalConfig;->appendOtherCallHistoryFile(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/isw/android/corp/telephony/CallHistoryRecord;->ringDate:Ljava/util/Date;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 144
    .end local v6           #chupload:I
    :catchall_0
    move-exception v0

    .line 145
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->cleanCompanyItem()V

    .line 146
    throw v0

    .line 131
    .restart local v6       #chupload:I
    :cond_4
    :try_start_6
    const-string v0, "MiniCallHistoryRecord"

    const-string v1, "Not record this call!"

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

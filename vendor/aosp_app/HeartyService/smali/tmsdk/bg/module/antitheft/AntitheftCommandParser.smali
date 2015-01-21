.class public Ltmsdk/bg/module/antitheft/AntitheftCommandParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final jt:[C


# instance fields
.field private mContext:Landroid/content/Context;

.field private tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 267
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->jt:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;Landroid/content/Context;)V
    .locals 1
    .parameter "observer"
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;

    .line 18
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;

    .line 19
    iput-object p2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)I
    .locals 6
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 86
    const/4 v0, -0x1

    .line 87
    .local v0, action:I
    const-string v3, "#"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 88
    .local v2, index:I
    if-lez v2, :cond_0

    .line 89
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, cmd:Ljava/lang/String;
    const-string v3, "#qqdeleteall#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    const-string v3, "#qqdeleteall#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 93
    const/4 v0, 0x0

    .line 105
    .end local v1           #cmd:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 94
    .restart local v1       #cmd:Ljava/lang/String;
    :cond_1
    const-string v3, "#qqlocate#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    const-string v3, "#qqlocate#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 96
    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :cond_2
    const-string v3, "#qqlock#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    const-string v3, "#qqlock#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :cond_3
    const-string v3, "#qqpin#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const-string v3, "#qqpin#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 102
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZZ)Ltmsdk/common/module/antitheft/AntitheftCommand;
    .locals 8
    .parameter "phoneNum"
    .parameter "smsBody"
    .parameter "fromWebServer"
    .parameter "isQQAntitheftEnable"

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 52
    new-instance v3, Ltmsdk/common/module/antitheft/AntitheftCommand;

    invoke-direct {v3, p1, v5}, Ltmsdk/common/module/antitheft/AntitheftCommand;-><init>(Ljava/lang/String;I)V

    .line 53
    .local v3, ret:Ltmsdk/common/module/antitheft/AntitheftCommand;
    iput-boolean v7, v3, Ltmsdk/common/module/antitheft/AntitheftCommand;->mIsFromWebServer:Z

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, content:Ljava/lang/StringBuilder;
    const/4 v0, -0x1

    .line 56
    .local v0, action:I
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 57
    invoke-direct {p0, v1, v3}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->a(Ljava/lang/StringBuilder;Ltmsdk/common/module/antitheft/AntitheftCommand;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v3

    .line 62
    :goto_0
    iget v4, v3, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    if-ne v4, v5, :cond_2

    .line 80
    :cond_0
    :goto_1
    return-object v3

    .line 59
    :cond_1
    invoke-direct {p0, v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->a(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 60
    iput v0, v3, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    goto :goto_0

    .line 64
    :cond_2
    if-ne v0, v6, :cond_4

    .line 65
    iget-object v4, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;

    invoke-interface {v4}, Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;->getHelperNumber()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, helperNumber:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    iput v6, v3, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    goto :goto_1

    .line 70
    :cond_3
    const/4 v4, 0x5

    iput v4, v3, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    goto :goto_1

    .line 74
    .end local v2           #helperNumber:Ljava/lang/String;
    :cond_4
    if-nez p3, :cond_0

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;->getPassword(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;

    invoke-interface {v5, v7}, Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;->getPassword(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    const/4 v4, 0x4

    iput v4, v3, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    goto :goto_1
.end method

.method private a(Ljava/lang/StringBuilder;Ltmsdk/common/module/antitheft/AntitheftCommand;)Ltmsdk/common/module/antitheft/AntitheftCommand;
    .locals 27
    .parameter "content"
    .parameter "taskArgs"

    .prologue
    .line 115
    const/4 v3, -0x1

    .line 116
    .local v3, action:I
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    .line 117
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput-boolean v0, v1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mIsFromWebServer:Z

    .line 119
    const-string v17, ""

    .line 120
    .local v17, preFix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;->isDebugModel()Z

    move-result v24

    if-nez v24, :cond_1

    .line 121
    const-string v17, "QSAT#"

    .line 126
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 127
    .local v18, prefixPos:I
    if-gez v18, :cond_2

    .line 208
    :cond_0
    :goto_1
    return-object p2

    .line 123
    .end local v18           #prefixPos:I
    :cond_1
    const-string v17, "TQSAT#"

    goto :goto_0

    .line 129
    .restart local v18       #prefixPos:I
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v24

    add-int v9, v18, v24

    .line 130
    .local v9, cmdStartPos:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->bE(Ljava/lang/String;)I

    move-result v4

    .line 131
    .local v4, appendfixPos:I
    if-ltz v4, :cond_3

    .line 132
    add-int/2addr v4, v9

    .line 134
    :cond_3
    const/4 v15, 0x0

    .line 135
    .local v15, nofixBuffer8:[B
    const/4 v14, 0x0

    .line 136
    .local v14, nofixBuffer:Ljava/lang/String;
    if-gtz v4, :cond_8

    .line 137
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 142
    :goto_2
    const-string v24, "#"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 143
    .local v8, cmdEndPos:I
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    .line 144
    .local v6, cmd:Ljava/lang/Short;
    add-int/lit8 v24, v8, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 145
    invoke-static {v14}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v15

    .line 152
    invoke-direct/range {p0 .. p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->getKey()[B

    move-result-object v13

    .line 153
    .local v13, key:[B
    const/4 v10, 0x0

    .line 155
    .local v10, decData:[B
    :try_start_0
    invoke-static {v15, v13}, Ltmsdk/common/tcc/TccCryptor;->decrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 159
    :goto_3
    if-eqz v10, :cond_0

    .line 161
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 162
    .local v5, bf:Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    .line 163
    .local v7, cmd2:Ljava/lang/Short;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v22

    .line 164
    .local v22, targetQQNum:J
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v12, v0, [B

    .line 165
    .local v12, imeiB:[B
    const/16 v24, 0x0

    array-length v0, v12

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v12, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 166
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>([B)V

    .line 167
    .local v21, targetImei:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 168
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p2

    iput-wide v0, v2, Ltmsdk/common/module/antitheft/AntitheftCommand;->mWebServerUlkey:J

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ltmsdk/common/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 170
    .local v16, phoneImei:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;->getBindQQNum()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 172
    .local v19, qqNum:J
    if-ne v7, v6, :cond_4

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    cmp-long v24, v22, v19

    if-eqz v24, :cond_9

    .line 173
    :cond_4
    if-eq v7, v6, :cond_5

    .line 174
    const-string v24, "AntitheftCommandParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cmd2 != cmd, cmd="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ",cmd2="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    :cond_5
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 177
    const-string v24, "AntitheftCommandParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "targetImei != phoneImei, targetImei="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ",phoneImei="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    :cond_6
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 180
    const-string v24, "AntitheftCommandParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "targetQQNum != qqNum, targetQQNum="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ",qqNum="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    :cond_7
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    goto/16 :goto_1

    .line 139
    .end local v5           #bf:Ljava/nio/ByteBuffer;
    .end local v6           #cmd:Ljava/lang/Short;
    .end local v7           #cmd2:Ljava/lang/Short;
    .end local v8           #cmdEndPos:I
    .end local v10           #decData:[B
    .end local v12           #imeiB:[B
    .end local v13           #key:[B
    .end local v16           #phoneImei:Ljava/lang/String;
    .end local v19           #qqNum:J
    .end local v21           #targetImei:Ljava/lang/String;
    .end local v22           #targetQQNum:J
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 156
    .restart local v6       #cmd:Ljava/lang/Short;
    .restart local v8       #cmdEndPos:I
    .restart local v10       #decData:[B
    .restart local v13       #key:[B
    :catch_0
    move-exception v11

    .line 157
    .local v11, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_3

    .line 184
    .end local v11           #e:Ljava/lang/OutOfMemoryError;
    .restart local v5       #bf:Ljava/nio/ByteBuffer;
    .restart local v7       #cmd2:Ljava/lang/Short;
    .restart local v12       #imeiB:[B
    .restart local v16       #phoneImei:Ljava/lang/String;
    .restart local v19       #qqNum:J
    .restart local v21       #targetImei:Ljava/lang/String;
    .restart local v22       #targetQQNum:J
    :cond_9
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    .line 185
    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v24

    packed-switch v24, :pswitch_data_0

    .line 204
    :pswitch_0
    const-string v24, "AntitheftCommandParser"

    const-string v25, "unknow cmd"

    invoke-static/range {v24 .. v25}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 188
    :pswitch_1
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    goto/16 :goto_1

    .line 192
    :pswitch_2
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    goto/16 :goto_1

    .line 196
    :pswitch_3
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    goto/16 :goto_1

    .line 200
    :pswitch_4
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    goto/16 :goto_1

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private bE(Ljava/lang/String;)I
    .locals 8
    .parameter "sms"

    .prologue
    .line 222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 223
    :cond_0
    const/4 v2, -0x1

    .line 250
    :cond_1
    :goto_0
    return v2

    .line 224
    :cond_2
    const-string v7, "#"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 225
    .local v1, cmdEndPos:I
    const/4 v4, 0x0

    .line 226
    .local v4, headOffset:I
    move-object v6, p1

    .line 227
    .local v6, smsBody:Ljava/lang/String;
    if-ltz v1, :cond_5

    .line 228
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 229
    add-int/lit8 v7, v1, 0x1

    add-int/2addr v4, v7

    .line 234
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, endPos:I
    const-string v7, "[tencent]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 237
    .local v3, endPreFixPos:I
    if-gez v3, :cond_7

    .line 238
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 239
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 240
    .local v0, c:C
    const/16 v7, 0x30

    if-lt v0, v7, :cond_3

    const/16 v7, 0x39

    if-le v0, v7, :cond_4

    :cond_3
    const/16 v7, 0x61

    if-lt v0, v7, :cond_6

    const/16 v7, 0x66

    if-gt v0, v7, :cond_6

    .line 238
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 231
    .end local v0           #c:C
    .end local v2           #endPos:I
    .end local v3           #endPreFixPos:I
    .end local v5           #i:I
    :cond_5
    const/4 v1, 0x0

    .line 232
    const/4 v4, 0x0

    goto :goto_1

    .line 243
    .restart local v0       #c:C
    .restart local v2       #endPos:I
    .restart local v3       #endPreFixPos:I
    .restart local v5       #i:I
    :cond_6
    add-int v2, v5, v4

    .line 244
    goto :goto_0

    .line 248
    .end local v0           #c:C
    .end local v5           #i:I
    :cond_7
    add-int v2, v3, v4

    goto :goto_0
.end method

.method private bF(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNum"

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-virtual {p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->getWebServerNumber()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, serverNum:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static byte2HexStr(B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 274
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 275
    .local v0, buf:[C
    const/4 v1, 0x1

    sget-object v2, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->jt:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 276
    ushr-int/lit8 v1, p0, 0x4

    int-to-byte p0, v1

    .line 277
    const/4 v1, 0x0

    sget-object v2, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->jt:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 278
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static char2Byte(C)B
    .locals 1
    .parameter "ch"

    .prologue
    .line 288
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 290
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 302
    :goto_0
    return v0

    .line 292
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 294
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 296
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 298
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 302
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getKey()[B
    .locals 4

    .prologue
    .line 258
    const-string v3, "%#!*^().,ljhd"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 259
    .local v2, key:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 261
    const-string v3, "%#!*^().,ljhd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 262
    .local v0, c:C
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v0           #c:C
    :cond_0
    return-object v2
.end method

.method public static hexStr2Bytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "str"

    .prologue
    .line 308
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    :cond_0
    const/4 v4, 0x0

    new-array v0, v4, [B

    .line 320
    :cond_1
    return-object v0

    .line 313
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 314
    .local v0, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 316
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 317
    .local v1, high:C
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 318
    .local v3, low:C
    invoke-static {v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->char2Byte(C)B

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->char2Byte(C)B

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getWebServerNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;

    invoke-interface {v0}, Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;->getWebServerNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseSmsCommand(Ljava/lang/String;Ljava/lang/String;)Ltmsdk/common/module/antitheft/AntitheftCommand;
    .locals 9
    .parameter "phoneNum"
    .parameter "smsContent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 23
    const-string v6, "AntitheftCommandParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseSmsCommand:num:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", smsContent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v6, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;

    invoke-interface {v6}, Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;->getBindQQNum()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, bindQQNum:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move v3, v5

    .line 26
    .local v3, isQQAntitheft:Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v3, :cond_3

    iget-object v6, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;

    invoke-interface {v6, v5}, Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;->getPassword(Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->tO:Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;

    invoke-interface {v5}, Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;->getHelperNumber()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 28
    :cond_0
    const-string v5, "AntitheftCommandParser"

    const-string v6, "Antitheft is not ready."

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v4

    .line 41
    :cond_1
    :goto_1
    return-object v0

    .line 25
    .end local v3           #isQQAntitheft:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 31
    .restart local v3       #isQQAntitheft:Z
    :cond_3
    invoke-direct {p0, p1}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->bF(Ljava/lang/String;)Z

    move-result v2

    .line 32
    .local v2, isFromWebServer:Z
    invoke-direct {p0, p1, p2, v2, v3}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v0

    .line 33
    .local v0, action:Ltmsdk/common/module/antitheft/AntitheftCommand;
    if-eqz v0, :cond_4

    iget v5, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 34
    if-eqz v2, :cond_1

    .line 35
    iput-object v1, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mBindQQNum:Ljava/lang/String;

    goto :goto_1

    .line 39
    :cond_4
    const-string v5, "AntitheftCommandParser"

    const-string v6, "no action"

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v4

    .line 41
    goto :goto_1
.end method

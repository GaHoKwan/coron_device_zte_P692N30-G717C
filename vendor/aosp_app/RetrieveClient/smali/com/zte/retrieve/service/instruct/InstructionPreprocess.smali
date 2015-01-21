.class public Lcom/zte/retrieve/service/instruct/InstructionPreprocess;
.super Ljava/lang/Object;
.source "InstructionPreprocess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;,
        Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;
    }
.end annotation


# static fields
.field public static final CLIENT:I = 0x1

.field public static final CLIENT_ALARM:Ljava/lang/String; = "xl"

.field public static final CLIENT_CALL_FORWARD:Ljava/lang/String; = "hjzy"

.field public static final CLIENT_CANCEL_CALL_FORWARD:Ljava/lang/String; = "qxhjzy"

.field public static final CLIENT_CANCEL_SMS_FORWARD:Ljava/lang/String; = "qxdxzf"

.field public static final CLIENT_ERASE:Ljava/lang/String; = "cc"

.field public static final CLIENT_LOCK:Ljava/lang/String; = "sd"

.field public static final CLIENT_MAP:Ljava/lang/String; = "dw"

.field public static final CLIENT_RESET_PASSWORD:Ljava/lang/String; = "czmm"

.field public static final CLIENT_SMS_FORWARD:Ljava/lang/String; = "dxzf"

.field public static final CLIENT_UNALARM:Ljava/lang/String; = "qxzdyl"

.field public static final CLIENT_UNLOCK:Ljava/lang/String; = "js"

.field private static final END:Ljava/lang/String; = "#"

.field public static final ERROR_IMEI:I = 0x1

.field public static final ERROR_OPER_INSTR:I = 0x3

.field public static final ERROR_PWD:I = 0x2

.field public static final ERROR_TYPE:I = 0x0

.field public static final NOT_SECURITY_NUM:I = 0x4

.field public static final ORDER_TYPE_ALARM:I = 0x9

.field public static final ORDER_TYPE_CALL_FORWARD:I = 0x5

.field public static final ORDER_TYPE_CANCEL_CALL_FORWARD:I = 0x6

.field public static final ORDER_TYPE_CANCEL_SMS_FORWARD:I = 0x8

.field public static final ORDER_TYPE_ERASE:I = 0x3

.field public static final ORDER_TYPE_LOCK:I = 0x1

.field public static final ORDER_TYPE_MAP:I = 0x4

.field public static final ORDER_TYPE_NULL:I = 0x0

.field public static final ORDER_TYPE_RESET_PASSWORD:I = 0xb

.field public static final ORDER_TYPE_SMS_FORWARD:I = 0x7

.field public static final ORDER_TYPE_UNALARM:I = 0xa

.field public static final ORDER_TYPE_UNLOCK:I = 0x2

.field public static final RESET_NOT_SECURITY_NUM:I = 0x5

.field public static final SERVER:I = 0x2

.field public static final SERVER_ALARM:Ljava/lang/String; = "09"

.field public static final SERVER_CALL_FORWARD:Ljava/lang/String; = "05"

.field public static final SERVER_CANCEL_CALL_FORWARD:Ljava/lang/String; = "06"

.field public static final SERVER_CANCEL_SMS_FORWARD:Ljava/lang/String; = "08"

.field public static final SERVER_ERASE:Ljava/lang/String; = "03"

.field public static final SERVER_LOCK:Ljava/lang/String; = "01"

.field public static final SERVER_MAP:Ljava/lang/String; = "04"

.field public static final SERVER_RESET_PASSWORD:Ljava/lang/String; = "11"

.field public static final SERVER_SMS_FORWARD:Ljava/lang/String; = "07"

.field public static final SERVER_UNALARM:Ljava/lang/String; = "10"

.field public static final SERVER_UNLOCK:Ljava/lang/String; = "02"

.field private static final ZTE:Ljava/lang/String; = "zte"

.field private static final ZTE_:Ljava/lang/String; = "*ZTE"

.field private static final _ZTE:Ljava/lang/String; = "*zte"

.field private static cfIMEI:Ljava/lang/String;

.field private static cfOperInstr:Ljava/lang/String;


# instance fields
.field private IMEI:Ljava/lang/String;

.field private instrType:I

.field private isZTEMsg:Z

.field private operInstr:Ljava/lang/String;

.field private phoneNum:Ljava/lang/String;

.field private pwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->IMEI:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->pwd:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->phoneNum:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    .line 6
    return-void
.end method

.method private analyticInstr(Ljava/lang/String;)V
    .locals 8
    .parameter "body"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 151
    const-string v2, "*ZTE"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, instr:Ljava/lang/String;
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iput v6, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->instrType:I

    .line 166
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, instrArray:[Ljava/lang/String;
    iget v2, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->instrType:I

    packed-switch v2, :pswitch_data_0

    .line 189
    :goto_1
    return-void

    .line 155
    .end local v1           #instrArray:[Ljava/lang/String;
    :cond_0
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    const-string v2, "\\*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1       #instrArray:[Ljava/lang/String;
    array-length v2, v1

    if-eq v2, v4, :cond_1

    array-length v2, v1

    if-eq v2, v6, :cond_1

    array-length v2, v1

    if-ne v2, v7, :cond_2

    .line 158
    :cond_1
    iput v4, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->instrType:I

    goto :goto_0

    .line 160
    :cond_2
    iput v5, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->instrType:I

    goto :goto_0

    .line 163
    .end local v1           #instrArray:[Ljava/lang/String;
    :cond_3
    iput v5, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->instrType:I

    goto :goto_0

    .line 169
    .restart local v1       #instrArray:[Ljava/lang/String;
    :pswitch_0
    array-length v2, v1

    if-ne v2, v7, :cond_4

    .line 170
    aget-object v2, v1, v6

    iput-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->phoneNum:Ljava/lang/String;

    .line 172
    :cond_4
    aget-object v2, v1, v5

    iput-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    .line 173
    aget-object v2, v1, v5

    sput-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->cfOperInstr:Ljava/lang/String;

    .line 174
    aget-object v2, v1, v4

    iput-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->IMEI:Ljava/lang/String;

    .line 175
    aget-object v2, v1, v4

    sput-object v2, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->cfIMEI:Ljava/lang/String;

    goto :goto_1

    .line 178
    :pswitch_1
    array-length v2, v1

    if-ne v2, v7, :cond_5

    .line 179
    aget-object v2, v1, v6

    iput-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->phoneNum:Ljava/lang/String;

    .line 181
    :cond_5
    array-length v2, v1

    if-eq v2, v6, :cond_6

    array-length v2, v1

    if-ne v2, v7, :cond_7

    .line 182
    :cond_6
    aget-object v2, v1, v4

    iput-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->pwd:Ljava/lang/String;

    .line 184
    :cond_7
    aget-object v2, v1, v5

    iput-object v2, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private analyticNewInstr(Ljava/lang/String;)V
    .locals 9
    .parameter "content"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, instr:Ljava/lang/String;
    const-string v4, "\\*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, instrArray:[Ljava/lang/String;
    aget-object v4, v2, v6

    iput-object v4, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "oper="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 119
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    array-length v4, v2

    if-ne v4, v8, :cond_1

    .line 120
    :cond_0
    aget-object v3, v2, v7

    .line 121
    .local v3, password:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/retrieve/utils/TextHelper;->isNumOrLetter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    aget-object v4, v2, v7

    iput-object v4, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->pwd:Ljava/lang/String;

    .line 133
    .end local v3           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 125
    .restart local v3       #password:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/TextHelper;->isNumOrLetter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 127
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->pwd:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static createCommandSmsContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "commandFlag"
    .parameter "remotePassword"

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "zte"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, smsBody:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    const-string v1, "czmm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createForwardCommandSmsContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "typeChar"
    .parameter "remotePassword"
    .parameter "forwardPhoneNumber"

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "zte"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, smsBody:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCfIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->cfIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public static getCfOperInstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->cfOperInstr:Ljava/lang/String;

    return-object v0
.end method

.method public static getForwardSmsContentByType(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "orderType"
    .parameter "remotePassword"
    .parameter "forwardPhoneNumber"

    .prologue
    .line 309
    invoke-static {p0}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getTypeStringByType(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, typeChar:Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->createForwardCommandSmsContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMsgType(Ljava/lang/String;)Z
    .locals 2
    .parameter "content"

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, str:Ljava/lang/String;
    const-string v1, "*zte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->isZTEMsg:Z

    .line 147
    iget-boolean v1, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->isZTEMsg:Z

    return v1

    .line 146
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNewMsgType(Ljava/lang/String;)Z
    .locals 9
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, isZteNewType:Z
    invoke-static {}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->values()[Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_0

    .line 141
    return v0

    .line 137
    :cond_0
    aget-object v1, v4, v3

    .line 138
    .local v1, newType:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;
    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$NewOperationType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v2

    .line 139
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isZteNewType="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static getSmsContentByType(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "orderType"
    .parameter "remotePassword"

    .prologue
    .line 261
    invoke-static {p0}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getTypeStringByType(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, typeChar:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->createCommandSmsContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getTypeStringByType(I)Ljava/lang/String;
    .locals 1
    .parameter "orderType"

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, typeChar:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 305
    :goto_0
    return-object v0

    .line 270
    :pswitch_0
    const-string v0, "cc"

    .line 271
    goto :goto_0

    .line 273
    :pswitch_1
    const-string v0, "xl"

    .line 274
    goto :goto_0

    .line 276
    :pswitch_2
    const-string v0, "qxzdyl"

    .line 277
    goto :goto_0

    .line 279
    :pswitch_3
    const-string v0, "sd"

    .line 280
    goto :goto_0

    .line 282
    :pswitch_4
    const-string v0, "js"

    .line 283
    goto :goto_0

    .line 285
    :pswitch_5
    const-string v0, "dw"

    .line 286
    goto :goto_0

    .line 288
    :pswitch_6
    const-string v0, "hjzy"

    .line 289
    goto :goto_0

    .line 291
    :pswitch_7
    const-string v0, "qxhjzy"

    .line 292
    goto :goto_0

    .line 294
    :pswitch_8
    const-string v0, "qxdxzf"

    .line 295
    goto :goto_0

    .line 297
    :pswitch_9
    const-string v0, "dxzf"

    .line 298
    goto :goto_0

    .line 300
    :pswitch_a
    const-string v0, "czmm"

    .line 301
    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->IMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrType()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->instrType:I

    return v0
.end method

.method public getOperInstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    return-object v0
.end method

.method public getOperType()Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->LOCK:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    .line 246
    :goto_0
    return-object v0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    :cond_2
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->UNLOCK:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 220
    :cond_4
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ERASE:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    goto :goto_0

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "xl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 222
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 223
    :cond_6
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ALARM:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    goto :goto_0

    .line 224
    :cond_7
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "qxzdyl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 225
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    :cond_8
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->UNALARM:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    goto :goto_0

    .line 227
    :cond_9
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "hjzy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 228
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 229
    :cond_a
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CALL_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    goto :goto_0

    .line 230
    :cond_b
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "qxhjzy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 231
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 232
    :cond_c
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CANCEL_CALL_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    goto/16 :goto_0

    .line 233
    :cond_d
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "dxzf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 234
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 235
    :cond_e
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->SMS_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    goto/16 :goto_0

    .line 236
    :cond_f
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "qxdxzf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 237
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 238
    :cond_10
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->CANCEL_SMS_FORWARD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    goto/16 :goto_0

    .line 239
    :cond_11
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "dw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 240
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 241
    :cond_12
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->MAP:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    goto/16 :goto_0

    .line 242
    :cond_13
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "czmm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 243
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->operInstr:Ljava/lang/String;

    const-string v1, "11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 244
    :cond_14
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->RESET_PASSWORD:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    goto/16 :goto_0

    .line 246
    :cond_15
    sget-object v0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;->ERROR:Lcom/zte/retrieve/service/instruct/InstructionPreprocess$OperationType;

    goto/16 :goto_0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getMsgType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->analyticInstr(Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->getNewMsgType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iput-boolean v1, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->isZTEMsg:Z

    .line 109
    iput v1, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->instrType:I

    .line 110
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->analyticNewInstr(Ljava/lang/String;)V

    .line 112
    :cond_1
    return-void
.end method

.method public isZTEMsg()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/zte/retrieve/service/instruct/InstructionPreprocess;->isZTEMsg:Z

    return v0
.end method

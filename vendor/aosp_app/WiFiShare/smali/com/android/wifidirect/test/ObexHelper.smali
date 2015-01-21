.class public final Lcom/android/wifidirect/test/ObexHelper;
.super Ljava/lang/Object;
.source "ObexHelper.java"


# static fields
.field public static final BASE_PACKET_LENGTH:I = 0x3

.field private static final DEBUG_FORCE_SRM:Ljava/lang/String; = "debug.obex.force_srm_capable"

.field private static final DEBUG_FORCE_SRMP:Ljava/lang/String; = "debug.obex.force_srmp_enabled"

.field public static final LOCAL_SRM_DISABLED:Z = false

.field public static final LOCAL_SRM_ENABLED:Z = true

.field public static final MAX_CLIENT_PACKET_SIZE:I = 0xfc00

.field public static final MAX_PACKET_SIZE_INT:I = 0xfffe

.field public static final OBEX_ACTION_COPY:Ljava/lang/Byte; = null

.field public static final OBEX_ACTION_MOVE_RENAME:Ljava/lang/Byte; = null

.field public static final OBEX_ACTION_SET_PERM:Ljava/lang/Byte; = null

.field public static final OBEX_AUTH_REALM_CHARSET_ASCII:I = 0x0

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_1:I = 0x1

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_2:I = 0x2

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_3:I = 0x3

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_4:I = 0x4

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_5:I = 0x5

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_6:I = 0x6

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_7:I = 0x7

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_8:I = 0x8

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_9:I = 0x9

.field public static final OBEX_AUTH_REALM_CHARSET_UNICODE:I = 0xff

.field public static final OBEX_OPCODE_ABORT:I = 0xff

.field public static final OBEX_OPCODE_ACTION:I = 0x86

.field public static final OBEX_OPCODE_CONNECT:I = 0x80

.field public static final OBEX_OPCODE_DISCONNECT:I = 0x81

.field public static final OBEX_OPCODE_GET:I = 0x3

.field public static final OBEX_OPCODE_GET_FINAL:I = 0x83

.field public static final OBEX_OPCODE_PUT:I = 0x2

.field public static final OBEX_OPCODE_PUT_FINAL:I = 0x82

.field public static final OBEX_OPCODE_RESERVED:I = 0x4

.field public static final OBEX_OPCODE_RESERVED_FINAL:I = 0x84

.field public static final OBEX_OPCODE_SETPATH:I = 0x85

.field public static final OBEX_SRM_DISABLED:Ljava/lang/Byte; = null

.field public static final OBEX_SRM_ENABLED:Ljava/lang/Byte; = null

.field public static final OBEX_SRM_PARAM_NONE:Ljava/lang/Byte; = null

.field public static final OBEX_SRM_PARAM_RSVP:Ljava/lang/Byte; = null

.field public static final OBEX_SRM_PARAM_RSVP_AND_WAIT:Ljava/lang/Byte; = null

.field public static final OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte; = null

.field public static final OBEX_SRM_SUPPORTED:Ljava/lang/Byte; = null

.field public static final SRMP_DISABLED:Z = false

.field public static final SRMP_ENABLED:Z = true

.field public static final SRM_CAPABLE:Z = true

.field public static final SRM_INCAPABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "ObexHelper"

.field private static final VERBOSE:Z


# instance fields
.field private mLocalSingleResponseActive:Z

.field private mLocalSingleResponseCapability:Z

.field private mLocalSrmpActive:Z

.field private mLocalSrmpWait:Z

.field private mRemoteSingleResponseActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_ACTION_COPY:Ljava/lang/Byte;

    .line 137
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_ACTION_MOVE_RENAME:Ljava/lang/Byte;

    .line 139
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_ACTION_SET_PERM:Ljava/lang/Byte;

    .line 144
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_DISABLED:Ljava/lang/Byte;

    .line 146
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    .line 148
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_SUPPORTED:Ljava/lang/Byte;

    .line 153
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_RSVP:Ljava/lang/Byte;

    .line 155
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    .line 157
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_RSVP_AND_WAIT:Ljava/lang/Byte;

    .line 160
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/wifidirect/test/ObexHelper;->OBEX_SRM_PARAM_NONE:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSingleResponseCapability:Z

    .line 251
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSrmpActive:Z

    .line 68
    return-void
.end method

.method public static computeAuthenticationChallenge([BLjava/lang/String;ZZ)[B
    .locals 9
    .parameter "nonce"
    .parameter "realm"
    .parameter "access"
    .parameter "userID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x10

    const/4 v6, 0x1

    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 1167
    const/4 v0, 0x0

    .line 1169
    .local v0, authChall:[B
    array-length v1, p0

    if-eq v1, v7, :cond_0

    .line 1170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Nonce must be 16 bytes long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1191
    :cond_0
    if-nez p1, :cond_3

    .line 1192
    const/16 v1, 0x15

    new-array v0, v1, [B

    .line 1205
    :goto_0
    aput-byte v4, v0, v4

    .line 1206
    aput-byte v7, v0, v6

    .line 1207
    invoke-static {p0, v4, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1210
    const/16 v1, 0x12

    aput-byte v6, v0, v1

    .line 1211
    const/16 v1, 0x13

    aput-byte v6, v0, v1

    .line 1212
    aput-byte v4, v0, v5

    .line 1214
    if-nez p2, :cond_1

    .line 1215
    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 1217
    :cond_1
    if-eqz p3, :cond_2

    .line 1218
    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 1221
    :cond_2
    return-object v0

    .line 1194
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-lt v1, v2, :cond_4

    .line 1195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Realm must be less then 255 bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1197
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-array v0, v1, [B

    .line 1198
    const/16 v1, 0x15

    aput-byte v8, v0, v1

    .line 1199
    const/16 v1, 0x16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1200
    const/16 v1, 0x17

    aput-byte v6, v0, v1

    .line 1201
    const-string v1, "ISO8859_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static computeMd5Hash([B)[B
    .locals 3
    .parameter "in"

    .prologue
    .line 1144
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1145
    .local v1, md5:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1146
    .end local v1           #md5:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 1147
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static convertToByteArray(J)[B
    .locals 6
    .parameter "l"

    .prologue
    const-wide/16 v4, 0xff

    .line 1006
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 1008
    .local v0, b:[B
    const/4 v1, 0x0

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1009
    const/4 v1, 0x1

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1010
    const/4 v1, 0x2

    const/16 v2, 0x8

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1011
    const/4 v1, 0x3

    and-long v2, v4, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1013
    return-object v0
.end method

.method public static convertToLong([B)J
    .locals 9
    .parameter "b"

    .prologue
    .line 983
    const-wide/16 v3, 0x0

    .line 984
    .local v3, result:J
    const-wide/16 v5, 0x0

    .line 985
    .local v5, value:J
    const-wide/16 v1, 0x0

    .line 987
    .local v1, power:J
    array-length v7, p0

    add-int/lit8 v0, v7, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 988
    aget-byte v7, p0, v0

    int-to-long v5, v7

    .line 989
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    .line 990
    const-wide/16 v7, 0x100

    add-long/2addr v5, v7

    .line 993
    :cond_0
    long-to-int v7, v1

    shl-long v7, v5, v7

    or-long/2addr v3, v7

    .line 994
    const-wide/16 v7, 0x8

    add-long/2addr v1, v7

    .line 987
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 997
    :cond_1
    return-wide v3
.end method

.method public static convertToUnicode([BZ)Ljava/lang/String;
    .locals 7
    .parameter "b"
    .parameter "includesNull"

    .prologue
    .line 1102
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 1103
    :cond_0
    const/4 v5, 0x0

    .line 1133
    :goto_0
    return-object v5

    .line 1105
    :cond_1
    array-length v0, p0

    .line 1106
    .local v0, arrayLength:I
    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_2

    .line 1107
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Byte array not of a valid form"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1109
    :cond_2
    shr-int/lit8 v0, v0, 0x1

    .line 1110
    if-eqz p1, :cond_3

    .line 1111
    add-int/lit8 v0, v0, -0x1

    .line 1114
    :cond_3
    new-array v1, v0, [C

    .line 1115
    .local v1, c:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_7

    .line 1116
    mul-int/lit8 v5, v2, 0x2

    aget-byte v4, p0, v5

    .line 1117
    .local v4, upper:I
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v3, p0, v5

    .line 1118
    .local v3, lower:I
    if-gez v4, :cond_4

    .line 1119
    add-int/lit16 v4, v4, 0x100

    .line 1121
    :cond_4
    if-gez v3, :cond_5

    .line 1122
    add-int/lit16 v3, v3, 0x100

    .line 1126
    :cond_5
    if-nez v4, :cond_6

    if-nez v3, :cond_6

    .line 1127
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 1130
    :cond_6
    shl-int/lit8 v5, v4, 0x8

    or-int/2addr v5, v3

    int-to-char v5, v5

    aput-char v5, v1, v2

    .line 1115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1133
    .end local v3           #lower:I
    .end local v4           #upper:I
    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertToUnicodeByteArray(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 1023
    if-nez p0, :cond_0

    .line 1024
    const/4 v2, 0x0

    .line 1038
    :goto_0
    return-object v2

    .line 1027
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1028
    .local v0, c:[C
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 1029
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 1030
    mul-int/lit8 v3, v1, 0x2

    aget-char v4, v0, v1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1031
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v4, v0, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1029
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1035
    :cond_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aput-byte v5, v2, v3

    .line 1036
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v2, v3

    goto :goto_0
.end method

.method public static createHeader(Lcom/android/wifidirect/test/HeaderSet;Z)[B
    .locals 21
    .parameter "head"
    .parameter "nullOut"

    .prologue
    .line 514
    const/4 v9, 0x0

    .line 515
    .local v9, intHeader:Ljava/lang/Long;
    const/4 v14, 0x0

    .line 516
    .local v14, stringHeader:Ljava/lang/String;
    const/4 v5, 0x0

    .line 517
    .local v5, dateHeader:Ljava/util/Calendar;
    const/4 v4, 0x0

    .line 518
    .local v4, byteHeader:Ljava/lang/Byte;
    const/4 v2, 0x0

    .line 519
    .local v2, buffer:Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .line 520
    .local v16, value:[B
    const/4 v13, 0x0

    .line 521
    .local v13, result:[B
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 523
    .local v11, lengthArray:[B
    const/4 v7, 0x0

    .line 524
    .local v7, headImpl:Lcom/android/wifidirect/test/HeaderSet;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 525
    .local v12, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v7, p0

    .line 533
    :try_start_0
    iget-object v0, v7, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_0

    .line 535
    const/16 v17, -0x35

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 536
    iget-object v0, v7, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 540
    :cond_0
    const/16 v17, 0xc0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    .line 541
    if-eqz v9, :cond_1

    .line 543
    const/16 v17, -0x40

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 544
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/wifidirect/test/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    .line 545
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 546
    if-eqz p1, :cond_1

    .line 547
    const/16 v17, 0xc0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 552
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 553
    if-eqz v14, :cond_2

    .line 555
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 556
    invoke-static {v14}, Lcom/android/wifidirect/test/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 557
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 558
    .local v10, length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 559
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 560
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 561
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 562
    if-eqz p1, :cond_2

    .line 563
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 568
    .end local v10           #length:I
    :cond_2
    const/16 v17, 0x15

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 569
    if-eqz v14, :cond_3

    .line 571
    const/16 v17, 0x15

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 572
    invoke-static {v14}, Lcom/android/wifidirect/test/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 573
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 574
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 575
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 576
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 577
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 578
    if-eqz p1, :cond_3

    .line 579
    const/16 v17, 0x15

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 585
    .end local v10           #length:I
    :cond_3
    const/16 v17, 0x42

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 586
    if-eqz v14, :cond_4

    .line 588
    const/16 v17, 0x42

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 590
    :try_start_1
    const-string v17, "ISO8859_1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    .line 595
    :try_start_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x4

    .line 596
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 597
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 598
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 599
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 600
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 601
    if-eqz p1, :cond_4

    .line 602
    const/16 v17, 0x42

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 607
    .end local v10           #length:I
    :cond_4
    const/16 v17, 0xc3

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    .line 608
    if-eqz v9, :cond_5

    .line 610
    const/16 v17, -0x3d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 611
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/wifidirect/test/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    .line 612
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 613
    if-eqz p1, :cond_5

    .line 614
    const/16 v17, 0xc3

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 619
    :cond_5
    const/16 v17, 0x44

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/Calendar;

    move-object v5, v0

    .line 620
    if-eqz v5, :cond_e

    .line 626
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 627
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .local v3, buffer:Ljava/lang/StringBuffer;
    const/16 v17, 0x1

    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 628
    .local v15, temp:I
    move v8, v15

    .local v8, i:I
    :goto_0
    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    .line 629
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 628
    mul-int/lit8 v8, v8, 0xa

    goto :goto_0

    .line 591
    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .end local v8           #i:I
    .end local v15           #temp:I
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    .line 592
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 887
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v17

    .line 889
    :goto_1
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 891
    :try_start_5
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 896
    :goto_2
    return-object v13

    .line 631
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .restart local v3       #buffer:Ljava/lang/StringBuffer;
    .restart local v8       #i:I
    .restart local v15       #temp:I
    :cond_6
    :try_start_6
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 632
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 633
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_7

    .line 634
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    :cond_7
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 637
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 638
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_8

    .line 639
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    :cond_8
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 642
    const-string v17, "T"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 644
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_9

    .line 645
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    :cond_9
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 648
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 649
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_a

    .line 650
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    :cond_a
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 653
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 654
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_b

    .line 655
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    :cond_b
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 659
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTC"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 660
    const-string v17, "Z"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 664
    :cond_c
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ISO8859_1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v16

    .line 669
    :try_start_8
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 670
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 671
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 672
    const/16 v17, 0x44

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 673
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 674
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 675
    if-eqz p1, :cond_d

    .line 676
    const/16 v17, 0x44

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_d
    move-object v2, v3

    .line 681
    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .end local v8           #i:I
    .end local v10           #length:I
    .end local v15           #temp:I
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    :cond_e
    const/16 v17, 0xc4

    :try_start_9
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/Calendar;

    move-object v5, v0

    .line 682
    if-eqz v5, :cond_f

    .line 683
    const/16 v17, 0xc4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 692
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Lcom/android/wifidirect/test/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    .line 693
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 694
    if-eqz p1, :cond_f

    .line 695
    const/16 v17, 0xc4

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 700
    :cond_f
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 701
    if-eqz v14, :cond_10

    .line 702
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 703
    invoke-static {v14}, Lcom/android/wifidirect/test/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 704
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 705
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 706
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 707
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 708
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 709
    if-eqz p1, :cond_10

    .line 710
    const/16 v17, 0x5

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 715
    .end local v10           #length:I
    :cond_10
    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 716
    if-eqz v16, :cond_11

    .line 718
    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 719
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 720
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 721
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 722
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 723
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 724
    if-eqz p1, :cond_11

    .line 725
    const/16 v17, 0x46

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 730
    .end local v10           #length:I
    :cond_11
    const/16 v17, 0x47

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 731
    if-eqz v16, :cond_12

    .line 732
    const/16 v17, 0x47

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 733
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 734
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 735
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 736
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 737
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 738
    if-eqz p1, :cond_12

    .line 739
    const/16 v17, 0x47

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 744
    .end local v10           #length:I
    :cond_12
    const/16 v17, 0x4a

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 745
    if-eqz v16, :cond_13

    .line 747
    const/16 v17, 0x4a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 748
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 749
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 750
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 751
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 752
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 753
    if-eqz p1, :cond_13

    .line 754
    const/16 v17, 0x4a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 759
    .end local v10           #length:I
    :cond_13
    const/16 v17, 0x4c

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 760
    if-eqz v16, :cond_14

    .line 761
    const/16 v17, 0x4c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 762
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 763
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 764
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 765
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 766
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 767
    if-eqz p1, :cond_14

    .line 768
    const/16 v17, 0x4c

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 773
    .end local v10           #length:I
    :cond_14
    const/16 v17, 0x4f

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 774
    if-eqz v16, :cond_15

    .line 775
    const/16 v17, 0x4f

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 776
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 777
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 778
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 779
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 780
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 781
    if-eqz p1, :cond_15

    .line 782
    const/16 v17, 0x4f

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 787
    .end local v10           #length:I
    :cond_15
    const/16 v17, 0x97

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Byte;

    move-object v4, v0

    .line 788
    if-eqz v4, :cond_16

    .line 790
    const/16 v17, -0x69

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 791
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 792
    if-eqz p1, :cond_16

    .line 793
    const/16 v17, 0x97

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 798
    :cond_16
    const/16 v17, 0x98

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Byte;

    move-object v4, v0

    .line 799
    if-eqz v4, :cond_17

    .line 801
    const/16 v17, -0x68

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 802
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 803
    if-eqz p1, :cond_17

    .line 804
    const/16 v17, 0x98

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 809
    :cond_17
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v8, v0, :cond_1c

    .line 812
    add-int/lit8 v17, v8, 0x30

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 813
    if-eqz v14, :cond_18

    .line 814
    int-to-byte v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x30

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 815
    invoke-static {v14}, Lcom/android/wifidirect/test/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 816
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 817
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 818
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 819
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 820
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 821
    if-eqz p1, :cond_18

    .line 822
    add-int/lit8 v17, v8, 0x30

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 827
    .end local v10           #length:I
    :cond_18
    add-int/lit8 v17, v8, 0x70

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 828
    if-eqz v16, :cond_19

    .line 829
    int-to-byte v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x70

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 830
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 831
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 832
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 833
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 834
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 835
    if-eqz p1, :cond_19

    .line 836
    add-int/lit8 v17, v8, 0x70

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 841
    .end local v10           #length:I
    :cond_19
    add-int/lit16 v0, v8, 0xb0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Byte;

    move-object v4, v0

    .line 842
    if-eqz v4, :cond_1a

    .line 843
    int-to-byte v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xb0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 844
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 845
    if-eqz p1, :cond_1a

    .line 846
    add-int/lit16 v0, v8, 0xb0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 851
    :cond_1a
    add-int/lit16 v0, v8, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/wifidirect/test/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    .line 852
    if-eqz v9, :cond_1b

    .line 853
    int-to-byte v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 854
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/wifidirect/test/ObexHelper;->convertToByteArray(J)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 855
    if-eqz p1, :cond_1b

    .line 856
    add-int/lit16 v0, v8, 0xf0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 809
    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 665
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .restart local v3       #buffer:Ljava/lang/StringBuffer;
    .restart local v15       #temp:I
    :catch_2
    move-exception v6

    .line 666
    .restart local v6       #e:Ljava/io/UnsupportedEncodingException;
    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 887
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    .end local v8           #i:I
    .end local v15           #temp:I
    :catch_3
    move-exception v17

    move-object v2, v3

    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    goto/16 :goto_1

    .line 862
    .restart local v8       #i:I
    :cond_1c
    :try_start_b
    iget-object v0, v7, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d

    .line 863
    const/16 v17, 0x4d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 864
    iget-object v0, v7, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 865
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 866
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 867
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 868
    iget-object v0, v7, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 869
    if-eqz p1, :cond_1d

    .line 870
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    .line 875
    .end local v10           #length:I
    :cond_1d
    iget-object v0, v7, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_1e

    .line 876
    const/16 v17, 0x4e

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 877
    iget-object v0, v7, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    .line 878
    .restart local v10       #length:I
    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 879
    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 880
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 881
    iget-object v0, v7, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 882
    if-eqz p1, :cond_1e

    .line 883
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 889
    .end local v10           #length:I
    :cond_1e
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 891
    :try_start_c
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_2

    .line 892
    :catch_4
    move-exception v17

    goto/16 :goto_2

    .line 889
    .end local v8           #i:I
    :catchall_0
    move-exception v17

    :goto_4
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 891
    :try_start_d
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 893
    :goto_5
    throw v17

    .line 892
    :catch_5
    move-exception v17

    goto/16 :goto_2

    :catch_6
    move-exception v18

    goto :goto_5

    .line 889
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .restart local v3       #buffer:Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v17

    move-object v2, v3

    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    goto :goto_4
.end method

.method public static findHeaderEnd([BII)I
    .locals 6
    .parameter "headerArray"
    .parameter "start"
    .parameter "maxSize"

    .prologue
    .line 912
    const/4 v0, 0x0

    .line 913
    .local v0, fullLength:I
    const/4 v3, -0x1

    .line 914
    .local v3, lastLength:I
    move v2, p1

    .line 915
    .local v2, index:I
    const/4 v4, 0x0

    .line 917
    .local v4, length:I
    :goto_0
    if-ge v0, p2, :cond_3

    array-length v5, p0

    if-ge v2, v5, :cond_3

    .line 918
    aget-byte v5, p0, v2

    if-gez v5, :cond_0

    aget-byte v5, p0, v2

    add-int/lit16 v1, v5, 0x100

    .line 919
    .local v1, headerID:I
    :goto_1
    move v3, v0

    .line 921
    and-int/lit16 v5, v1, 0xc0

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 927
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 928
    aget-byte v5, p0, v2

    if-gez v5, :cond_1

    aget-byte v5, p0, v2

    add-int/lit16 v4, v5, 0x100

    .line 930
    :goto_2
    shl-int/lit8 v4, v4, 0x8

    .line 931
    add-int/lit8 v2, v2, 0x1

    .line 932
    aget-byte v5, p0, v2

    if-gez v5, :cond_2

    aget-byte v5, p0, v2

    add-int/lit16 v5, v5, 0x100

    :goto_3
    add-int/2addr v4, v5

    .line 934
    add-int/lit8 v4, v4, -0x3

    .line 935
    add-int/lit8 v2, v2, 0x1

    .line 936
    add-int/2addr v2, v4

    .line 937
    add-int/lit8 v5, v4, 0x3

    add-int/2addr v0, v5

    .line 938
    goto :goto_0

    .line 918
    .end local v1           #headerID:I
    :cond_0
    aget-byte v1, p0, v2

    goto :goto_1

    .line 928
    .restart local v1       #headerID:I
    :cond_1
    aget-byte v4, p0, v2

    goto :goto_2

    .line 932
    :cond_2
    aget-byte v5, p0, v2

    goto :goto_3

    .line 942
    :sswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 943
    add-int/lit8 v2, v2, 0x1

    .line 944
    add-int/lit8 v0, v0, 0x2

    .line 945
    goto :goto_0

    .line 949
    :sswitch_2
    add-int/lit8 v2, v2, 0x5

    .line 950
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 960
    .end local v1           #headerID:I
    :cond_3
    if-nez v3, :cond_5

    .line 967
    if-ge v0, p2, :cond_4

    .line 968
    array-length v5, p0

    .line 973
    :goto_4
    return v5

    .line 970
    :cond_4
    const/4 v5, -0x1

    goto :goto_4

    .line 973
    :cond_5
    add-int v5, v3, p1

    goto :goto_4

    .line 921
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch
.end method

.method public static findTag(B[B)I
    .locals 4
    .parameter "tag"
    .parameter "value"

    .prologue
    const/4 v2, -0x1

    .line 1072
    const/4 v1, 0x0

    .line 1074
    .local v1, length:I
    if-nez p1, :cond_1

    move v0, v2

    .line 1089
    :cond_0
    :goto_0
    return v0

    .line 1078
    :cond_1
    const/4 v0, 0x0

    .line 1080
    .local v0, index:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-byte v3, p1, v0

    if-eq v3, p0, :cond_2

    .line 1081
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 1082
    add-int/lit8 v3, v1, 0x2

    add-int/2addr v0, v3

    goto :goto_1

    .line 1085
    :cond_2
    array-length v3, p1

    if-lt v0, v3, :cond_0

    move v0, v2

    .line 1086
    goto :goto_0
.end method

.method public static getTagValue(B[B)[B
    .locals 4
    .parameter "tag"
    .parameter "triplet"

    .prologue
    .line 1050
    invoke-static {p0, p1}, Lcom/android/wifidirect/test/ObexHelper;->findTag(B[B)I

    move-result v0

    .line 1051
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1052
    const/4 v2, 0x0

    .line 1062
    :goto_0
    return-object v2

    .line 1055
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1056
    aget-byte v3, p1, v0

    and-int/lit16 v1, v3, 0xff

    .line 1058
    .local v1, length:I
    new-array v2, v1, [B

    .line 1059
    .local v2, result:[B
    add-int/lit8 v0, v0, 0x1

    .line 1060
    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static updateHeaderSet(Lcom/android/wifidirect/test/HeaderSet;[B)[B
    .locals 16
    .parameter "header"
    .parameter "headerArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v6, 0x0

    .line 338
    .local v6, index:I
    const/4 v7, 0x0

    .line 340
    .local v7, length:I
    const/4 v10, 0x0

    .line 341
    .local v10, value:[B
    const/4 v1, 0x0

    .line 342
    .local v1, body:[B
    move-object/from16 v5, p0

    .line 344
    .local v5, headerImpl:Lcom/android/wifidirect/test/HeaderSet;
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v6, v11, :cond_7

    .line 345
    aget-byte v11, p1, v6

    and-int/lit16 v4, v11, 0xff

    .line 347
    .local v4, headerID:I
    and-int/lit16 v11, v4, 0xc0

    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    .line 360
    :sswitch_0
    const/4 v9, 0x1

    .line 361
    .local v9, trimTail:Z
    add-int/lit8 v6, v6, 0x1

    .line 362
    aget-byte v11, p1, v6

    and-int/lit16 v7, v11, 0xff

    .line 363
    shl-int/lit8 v7, v7, 0x8

    .line 364
    add-int/lit8 v6, v6, 0x1

    .line 365
    aget-byte v11, p1, v6

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v7, v11

    .line 366
    add-int/lit8 v7, v7, -0x3

    .line 367
    add-int/lit8 v6, v6, 0x1

    .line 368
    new-array v10, v7, [B

    .line 369
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    if-eqz v7, :cond_0

    if-lez v7, :cond_1

    add-int/lit8 v11, v7, -0x1

    aget-byte v11, v10, v11

    if-eqz v11, :cond_1

    .line 371
    :cond_0
    const/4 v9, 0x0

    .line 373
    :cond_1
    packed-switch v4, :pswitch_data_0

    .line 436
    :pswitch_0
    and-int/lit16 v11, v4, 0xc0

    if-nez v11, :cond_4

    .line 437
    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/wifidirect/test/ObexHelper;->convertToUnicode([BZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v4, v11}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 444
    :goto_1
    add-int/2addr v6, v7

    .line 445
    goto :goto_0

    .line 377
    :pswitch_1
    if-nez v9, :cond_2

    .line 378
    :try_start_1
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    array-length v13, v10

    const-string v14, "ISO8859_1"

    invoke-direct {v11, v10, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v4, v11}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 384
    :catch_0
    move-exception v3

    .line 385
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 495
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .end local v4           #headerID:I
    .end local v9           #trimTail:Z
    :catch_1
    move-exception v3

    .line 496
    .local v3, e:Ljava/io/IOException;
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Header was not formatted properly"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 381
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #headerID:I
    .restart local v9       #trimTail:Z
    :cond_2
    :try_start_3
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    array-length v13, v10

    add-int/lit8 v13, v13, -0x1

    const-string v14, "ISO8859_1"

    invoke-direct {v11, v10, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v4, v11}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 390
    :pswitch_2
    :try_start_4
    new-array v11, v7, [B

    iput-object v11, v5, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    .line 391
    iget-object v11, v5, Lcom/android/wifidirect/test/HeaderSet;->mAuthChall:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v11, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 396
    :pswitch_3
    new-array v11, v7, [B

    iput-object v11, v5, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    .line 397
    iget-object v11, v5, Lcom/android/wifidirect/test/HeaderSet;->mAuthResp:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v11, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 404
    :pswitch_4
    add-int/lit8 v11, v7, 0x1

    new-array v1, v11, [B

    .line 405
    const/4 v11, 0x0

    int-to-byte v12, v4

    aput-byte v12, v1, v11

    .line 406
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v1, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 411
    :pswitch_5
    :try_start_5
    new-instance v2, Ljava/lang/String;

    const-string v11, "ISO8859_1"

    invoke-direct {v2, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 412
    .local v2, dateString:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 413
    .local v8, temp:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x10

    if-ne v11, v12, :cond_3

    const/16 v11, 0xf

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5a

    if-ne v11, v12, :cond_3

    .line 415
    const-string v11, "UTC"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 417
    :cond_3
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 419
    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x6

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 421
    const/4 v11, 0x5

    const/4 v12, 0x6

    const/16 v13, 0x8

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 423
    const/16 v11, 0xb

    const/16 v12, 0x9

    const/16 v13, 0xb

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 425
    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xd

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 427
    const/16 v11, 0xd

    const/16 v12, 0xd

    const/16 v13, 0xf

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 429
    const/16 v11, 0x44

    invoke-virtual {v5, v11, v8}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 430
    .end local v2           #dateString:Ljava/lang/String;
    .end local v8           #temp:Ljava/util/Calendar;
    :catch_2
    move-exception v3

    .line 431
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    :try_start_6
    throw v3

    .line 440
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_4
    invoke-virtual {v5, v4, v10}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 452
    .end local v9           #trimTail:Z
    :sswitch_1
    add-int/lit8 v6, v6, 0x1

    .line 454
    :try_start_7
    aget-byte v11, p1, v6

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v5, v4, v11}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 458
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 459
    goto/16 :goto_0

    .line 467
    :sswitch_2
    add-int/lit8 v6, v6, 0x1

    .line 468
    const/4 v11, 0x4

    :try_start_8
    new-array v10, v11, [B

    .line 469
    const/4 v11, 0x0

    const/4 v12, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 471
    const/16 v11, 0xc4

    if-eq v4, v11, :cond_6

    .line 474
    const/16 v11, 0xcb

    if-ne v4, v11, :cond_5

    .line 475
    const/4 v11, 0x4

    :try_start_9
    new-array v11, v11, [B

    iput-object v11, v5, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    .line 476
    const/4 v11, 0x0

    iget-object v12, v5, Lcom/android/wifidirect/test/HeaderSet;->mConnectionID:[B

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    :goto_3
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_0

    .line 478
    :cond_5
    invoke-static {v10}, Lcom/android/wifidirect/test/ObexHelper;->convertToLong([B)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v4, v11}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 486
    :catch_3
    move-exception v3

    .line 488
    .local v3, e:Ljava/lang/Exception;
    :try_start_a
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Header was not formatted properly"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 482
    .end local v3           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 483
    .restart local v8       #temp:Ljava/util/Calendar;
    new-instance v11, Ljava/util/Date;

    invoke-static {v10}, Lcom/android/wifidirect/test/ObexHelper;->convertToLong([B)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 484
    const/16 v11, 0xc4

    invoke-virtual {v5, v11, v8}, Lcom/android/wifidirect/test/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    .line 499
    .end local v4           #headerID:I
    .end local v8           #temp:Ljava/util/Calendar;
    :cond_7
    return-object v1

    .line 455
    .restart local v4       #headerID:I
    :catch_4
    move-exception v11

    goto :goto_2

    .line 347
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch

    .line 373
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getLocalSrmCapability()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSingleResponseCapability:Z

    return v0
.end method

.method public getLocalSrmParamStatus()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    const-string v0, "debug.obex.force_srmp_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const-string v0, "debug.obex.force_srmp_enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSrmpActive:Z

    .line 264
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSrmpActive:Z

    return v0

    .line 260
    :cond_1
    iput-boolean v2, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSrmpActive:Z

    goto :goto_0
.end method

.method public getLocalSrmStatus()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSingleResponseActive:Z

    return v0
.end method

.method public getLocalSrmpWait()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSrmpWait:Z

    return v0
.end method

.method public getRemoteSrmStatus()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mRemoteSingleResponseActive:Z

    return v0
.end method

.method public resetSrmStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/ObexHelper;->setLocalSrmStatus(Z)V

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/ObexHelper;->setLocalSrmpWait(Z)V

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/wifidirect/test/ObexHelper;->setRemoteSrmStatus(Z)V

    .line 290
    return-void
.end method

.method public setLocalSrmCapability(Z)V
    .locals 4
    .parameter "SrmCapable"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    const-string v2, "debug.obex.force_srm_capable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    const-string v2, "debug.obex.force_srm_capable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSingleResponseCapability:Z

    .line 189
    :goto_0
    const-string v0, "ObexHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalSrmCapability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSingleResponseCapability:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 183
    :cond_0
    iput-boolean v1, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSingleResponseCapability:Z

    goto :goto_0

    .line 186
    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSingleResponseCapability:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setLocalSrmParamStatus(Z)V
    .locals 4
    .parameter "SrmpEnabled"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    const-string v2, "debug.obex.force_srmp_enabled"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    const-string v2, "debug.obex.force_srmp_enabled"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSrmpActive:Z

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    iput-boolean v1, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSrmpActive:Z

    goto :goto_0

    .line 277
    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSrmpActive:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setLocalSrmStatus(Z)V
    .locals 1
    .parameter "SrmEnabled"

    .prologue
    .line 210
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSingleResponseActive:Z

    .line 212
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocalSrmpWait(Z)V
    .locals 0
    .parameter "SrmpWait"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/android/wifidirect/test/ObexHelper;->mLocalSrmpWait:Z

    .line 242
    return-void
.end method

.method public setRemoteSrmStatus(Z)V
    .locals 1
    .parameter "SrmCapable"

    .prologue
    .line 225
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/wifidirect/test/ObexHelper;->mRemoteSingleResponseActive:Z

    .line 227
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

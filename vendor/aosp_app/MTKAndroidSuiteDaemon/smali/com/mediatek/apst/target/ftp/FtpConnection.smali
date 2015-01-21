.class public Lcom/mediatek/apst/target/ftp/FtpConnection;
.super Ljava/lang/Thread;
.source "FtpConnection.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x19000

.field private static final DATA_PORT:I = 0x4da6

.field private static final FTP_CMD_CDUP:Ljava/lang/String; = "CDUP"

.field private static final FTP_CMD_CWD:Ljava/lang/String; = "CWD"

.field private static final FTP_CMD_DELE:Ljava/lang/String; = "DELE"

.field private static final FTP_CMD_FEAT:Ljava/lang/String; = "FEAT"

.field private static final FTP_CMD_LIST:Ljava/lang/String; = "LIST"

.field private static final FTP_CMD_MKD:Ljava/lang/String; = "MKD"

.field private static final FTP_CMD_NOOP:Ljava/lang/String; = "NOOP"

.field private static final FTP_CMD_OPTS:Ljava/lang/String; = "OPTS"

.field private static final FTP_CMD_PASS:Ljava/lang/String; = "PASS"

.field private static final FTP_CMD_PASV:Ljava/lang/String; = "PASV"

.field private static final FTP_CMD_PORT:Ljava/lang/String; = "PORT"

.field private static final FTP_CMD_PWD:Ljava/lang/String; = "PWD"

.field private static final FTP_CMD_QUIT:Ljava/lang/String; = "QUIT"

.field private static final FTP_CMD_RETR:Ljava/lang/String; = "RETR"

.field private static final FTP_CMD_RMD:Ljava/lang/String; = "RMD"

.field private static final FTP_CMD_RNFR:Ljava/lang/String; = "RNFR"

.field private static final FTP_CMD_RNTO:Ljava/lang/String; = "RNTO"

.field private static final FTP_CMD_SITE:Ljava/lang/String; = "SITE"

.field private static final FTP_CMD_SIZE:Ljava/lang/String; = "SIZE"

.field private static final FTP_CMD_STOR:Ljava/lang/String; = "STOR"

.field private static final FTP_CMD_SYST:Ljava/lang/String; = "SYST"

.field private static final FTP_CMD_TYPE:Ljava/lang/String; = "TYPE"

.field private static final FTP_CMD_USER:Ljava/lang/String; = "USER"

.field private static final LOGGABLE:Z = false

.field private static final MS_IN_SIX_MONTHS:J = -0x61075000L

.field private static final PASSWORD:Ljava/lang/String; = "APST"

.field private static final TAG:[Ljava/lang/Object; = null

.field private static final TIME_OUT:I = 0x1770

.field private static final USERNAME:Ljava/lang/String; = "APST"


# instance fields
.field private mBinaryMode:Z

.field private mCurrentDir:Ljava/lang/String;

.field private mFtpCharset:Ljava/lang/String;

.field private final mHost:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPasvSocket:Ljava/net/ServerSocket;

.field private mPort:I

.field private mReader:Ljava/io/BufferedReader;

.field private mRenameFrom:Ljava/io/File;

.field private mSocket:Ljava/net/Socket;

.field private mUserName:Ljava/lang/String;

.field private mWriter:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "APST/FTP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 3
    .parameter "socket"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 95
    const-string v0, "/"

    iput-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    .line 97
    iput-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;

    .line 98
    iput-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    .line 99
    iput-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    .line 100
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mHost:Ljava/lang/String;

    .line 101
    const/16 v0, 0x4da6

    iput v0, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPort:I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mBinaryMode:Z

    .line 103
    iput-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mUserName:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPassword:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mRenameFrom:Ljava/io/File;

    .line 106
    iput-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mFtpCharset:Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    .line 117
    sget-object v0, Lcom/mediatek/apst/target/ftp/FtpService;->sFtpEncoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mFtpCharset:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FtpCharset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mFtpCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private ftpLog([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "log"

    .prologue
    .line 1321
    return-void
.end method

.method private inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "existingPrefix"
    .parameter "param"

    .prologue
    .line 1234
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    .line 1236
    new-instance v0, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1237
    .local v0, chroot:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    .end local v0           #chroot:Ljava/io/File;
    :goto_0
    return-object v2

    .line 1239
    :catch_0
    move-exception v1

    .line 1240
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_0

    .line 1243
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseCommand(Ljava/lang/String;)V
    .locals 53
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    if-eqz p1, :cond_0

    const-string v50, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_1

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v48

    .line 218
    .local v48, upperCmd:Ljava/lang/String;
    const-string v50, "USER"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_2

    .line 219
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mUserName:Ljava/lang/String;

    .line 220
    const-string v50, "331 Send password\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_2
    const-string v50, "PASS"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_4

    .line 222
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPassword:Ljava/lang/String;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mUserName:Ljava/lang/String;

    move-object/from16 v50, v0

    const-string v51, "APST"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPassword:Ljava/lang/String;

    move-object/from16 v50, v0

    const-string v51, "APST"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_3

    .line 224
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Username Password Correct!"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const-string v50, "230 Access granted\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_3
    const-string v50, "530 Login incorrect.\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_4
    const-string v50, "QUIT"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_5

    .line 230
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "QUIT"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    const-string v50, "221 Goodbye\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_5
    const-string v50, "TYPE"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_a

    .line 234
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "TYPE executing"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 236
    .local v34, param:Ljava/lang/String;
    const-string v50, "I"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_6

    const-string v50, "L 8"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_7

    .line 237
    :cond_6
    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mBinaryMode:Z

    .line 238
    const-string v33, "200 Binary type set\r\n"

    .line 245
    .local v33, output:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 246
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "TYPE complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    .end local v33           #output:Ljava/lang/String;
    :cond_7
    const-string v50, "A"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_8

    const-string v50, "A N"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_9

    .line 240
    :cond_8
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mBinaryMode:Z

    .line 241
    const-string v33, "200 ASCII type set\r\n"

    .restart local v33       #output:Ljava/lang/String;
    goto :goto_1

    .line 243
    .end local v33           #output:Ljava/lang/String;
    :cond_9
    const-string v33, "503 Malformed TYPE command\r\n"

    .restart local v33       #output:Ljava/lang/String;
    goto :goto_1

    .line 247
    .end local v33           #output:Ljava/lang/String;
    .end local v34           #param:Ljava/lang/String;
    :cond_a
    const-string v50, "OPTS"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_10

    .line 248
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 249
    .restart local v34       #param:Ljava/lang/String;
    const/16 v16, 0x0

    .line 251
    .local v16, errString:Ljava/lang/String;
    if-nez v34, :cond_b

    .line 252
    const-string v16, "550 Need argument to OPTS\r\n"

    .line 253
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Couldn\'t understand empty OPTS command"

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    :goto_2
    if-eqz v16, :cond_f

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 281
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Template log message"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_b
    const-string v50, " "

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    .line 258
    .local v40, splits:[Ljava/lang/String;
    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_c

    .line 259
    const-string v16, "550 Malformed OPTS command\r\n"

    .line 260
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Couldn\'t parse OPTS command"

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 263
    :cond_c
    const/16 v50, 0x0

    aget-object v50, v40, v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v29

    .line 264
    .local v29, optName:Ljava/lang/String;
    const/16 v50, 0x1

    aget-object v50, v40, v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v30

    .line 265
    .local v30, optVal:Ljava/lang/String;
    const-string v50, "UTF8"

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_e

    .line 266
    const-string v50, "ON"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_d

    .line 267
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Got OPTS UTF8 ON"

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 269
    :cond_d
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Ignoring OPTS UTF8 for something besides ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 274
    :cond_e
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Unrecognized OPTS option: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    const-string v16, "502 Unrecognized option\r\n"

    .line 276
    goto/16 :goto_2

    .line 283
    .end local v29           #optName:Ljava/lang/String;
    .end local v30           #optVal:Ljava/lang/String;
    .end local v40           #splits:[Ljava/lang/String;
    :cond_f
    const-string v50, "504 OPTS accepted\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 284
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Handled OPTS ok"

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    .end local v16           #errString:Ljava/lang/String;
    .end local v34           #param:Ljava/lang/String;
    :cond_10
    const-string v50, "SYST"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_11

    .line 287
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "SYST executing"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    const-string v50, "215 UNIX Type: L8\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 289
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "SYST finished"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_11
    const-string v50, "NOOP"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_12

    .line 291
    const-string v50, "200 NOOP OK\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_12
    const-string v50, "CWD"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_15

    .line 293
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "CWD executing"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 296
    .restart local v34       #param:Ljava/lang/String;
    const/16 v16, 0x0

    .line 298
    .restart local v16       #errString:Ljava/lang/String;
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "WorkingDir ---------------->"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Param ---------------->"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    new-instance v50, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-direct/range {v50 .. v51}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v27

    .line 304
    .local v27, newDir:Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->violatesChroot(Ljava/io/File;)Z

    move-result v50

    if-eqz v50, :cond_13

    .line 305
    const-string v16, "550 Invalid name or chroot violation\r\n"

    .line 306
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 307
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    :goto_3
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "CWD complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    :cond_13
    :try_start_0
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v27

    .line 315
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->canExecute()Z

    move-result v50

    if-eqz v50, :cond_14

    .line 316
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    .line 317
    const-string v50, "250 CWD successful\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 321
    :catch_0
    move-exception v14

    .line 322
    .local v14, e:Ljava/io/IOException;
    const-string v50, "550 Invalid path\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto :goto_3

    .line 319
    .end local v14           #e:Ljava/io/IOException;
    :cond_14
    :try_start_1
    const-string v50, "550 That path is inaccessible\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 327
    .end local v16           #errString:Ljava/lang/String;
    .end local v27           #newDir:Ljava/io/File;
    .end local v34           #param:Ljava/lang/String;
    :cond_15
    const-string v50, "CDUP"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_1a

    .line 328
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "CDUP executing"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    const/16 v16, 0x0

    .line 332
    .restart local v16       #errString:Ljava/lang/String;
    new-instance v49, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-direct/range {v49 .. v50}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v49, workingDir:Ljava/io/File;
    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v27

    .line 334
    .restart local v27       #newDir:Ljava/io/File;
    if-nez v27, :cond_16

    .line 335
    const-string v16, "550 Current dir cannot find parent\r\n"

    .line 360
    :goto_4
    if-eqz v16, :cond_19

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 362
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "CDUP error: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->violatesChroot(Ljava/io/File;)Z

    move-result v50

    if-eqz v50, :cond_17

    .line 340
    const-string v16, "550 Invalid name or chroot violation\r\n"

    .line 341
    goto :goto_4

    .line 344
    :cond_17
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v27

    .line 349
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->canRead()Z

    move-result v50

    if-eqz v50, :cond_18

    .line 350
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 355
    :catch_1
    move-exception v14

    .line 356
    .restart local v14       #e:Ljava/io/IOException;
    const-string v16, "550 Invalid path\r\n"

    .line 357
    goto :goto_4

    .line 352
    .end local v14           #e:Ljava/io/IOException;
    :cond_18
    :try_start_3
    const-string v16, "550 That path is inaccessible\r\n"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 364
    :cond_19
    const-string v50, "200 CDUP successful\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 365
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "CDUP success"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    .end local v16           #errString:Ljava/lang/String;
    .end local v27           #newDir:Ljava/io/File;
    .end local v49           #workingDir:Ljava/io/File;
    :cond_1a
    const-string v50, "SIZE"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_21

    .line 368
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "SIZE executing"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    const/16 v16, 0x0

    .line 370
    .restart local v16       #errString:Ljava/lang/String;
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 371
    .restart local v34       #param:Ljava/lang/String;
    const-wide/16 v38, 0x0

    .line 373
    .local v38, size:J
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v12, currentDir:Ljava/io/File;
    const/16 v44, 0x0

    .line 375
    .local v44, target:Ljava/io/File;
    sget-object v50, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_1b

    .line 376
    new-instance v44, Ljava/io/File;

    .end local v44           #target:Ljava/io/File;
    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v44       #target:Ljava/io/File;
    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->isDirectory()Z

    move-result v50

    if-eqz v50, :cond_1c

    .line 378
    const-string v16, "550 No directory traversal allowed in SIZE param\r\n"

    .line 402
    :goto_5
    if-eqz v16, :cond_20

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 407
    :goto_6
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "SIZE complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v12, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v44

    .line 388
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->violatesChroot(Ljava/io/File;)Z

    move-result v50

    if-eqz v50, :cond_1d

    .line 389
    const-string v16, "550 SIZE target violates chroot\r\n"

    .line 390
    goto :goto_5

    .line 392
    :cond_1d
    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->exists()Z

    move-result v50

    if-nez v50, :cond_1e

    .line 393
    const-string v16, "550 Cannot get the SIZE of nonexistent object\r\n"

    .line 394
    goto :goto_5

    .line 396
    :cond_1e
    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->isFile()Z

    move-result v50

    if-nez v50, :cond_1f

    .line 397
    const-string v16, "550 Cannot get the size of a non-file\r\n"

    .line 398
    goto :goto_5

    .line 400
    :cond_1f
    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->length()J

    move-result-wide v38

    goto :goto_5

    .line 405
    :cond_20
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "213 "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\r\n"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto :goto_6

    .line 408
    .end local v12           #currentDir:Ljava/io/File;
    .end local v16           #errString:Ljava/lang/String;
    .end local v34           #param:Ljava/lang/String;
    .end local v38           #size:J
    .end local v44           #target:Ljava/io/File;
    :cond_21
    const-string v50, "PWD"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_23

    .line 409
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "PWD executing"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    :try_start_4
    new-instance v50, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-direct/range {v50 .. v51}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v50 .. v50}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    .line 413
    .local v12, currentDir:Ljava/lang/String;
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "currentDir: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v50

    if-nez v50, :cond_22

    .line 420
    const-string v12, "/"

    .line 422
    :cond_22
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "257 \""

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\"\r\n"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 426
    .end local v12           #currentDir:Ljava/lang/String;
    :goto_7
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "PWD complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    :catch_2
    move-exception v14

    .line 424
    .restart local v14       #e:Ljava/io/IOException;
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "PWD canonicalize"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 427
    .end local v14           #e:Ljava/io/IOException;
    :cond_23
    const-string v50, "PORT"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_2d

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_24

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->close()V

    .line 430
    const/16 v50, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    .line 432
    :cond_24
    const/16 v16, 0x0

    .line 434
    .restart local v16       #errString:Ljava/lang/String;
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 435
    .restart local v34       #param:Ljava/lang/String;
    const-string v50, "|"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_25

    const-string v50, "::"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_25

    .line 436
    const-string v16, "550 No IPv6 support, reconfigure your client\r\n"

    .line 473
    :goto_8
    if-nez v16, :cond_2c

    .line 474
    const-string v50, "200 PORT OK\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 475
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "PORT completed"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 439
    :cond_25
    const-string v50, ","

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v43

    .line 440
    .local v43, substrs:[Ljava/lang/String;
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v50, v0

    const/16 v51, 0x6

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_26

    .line 441
    const-string v16, "550 Malformed PORT argument\r\n"

    .line 442
    goto :goto_8

    .line 444
    :cond_26
    const/16 v20, 0x0

    .local v20, i:I
    :goto_9
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v20

    move/from16 v1, v50

    if-ge v0, v1, :cond_29

    .line 446
    aget-object v50, v43, v20

    const-string v51, "[0-9]+"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_27

    aget-object v50, v43, v20

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->length()I

    move-result v50

    const/16 v51, 0x3

    move/from16 v0, v50

    move/from16 v1, v51

    if-le v0, v1, :cond_28

    .line 448
    :cond_27
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "550 Invalid PORT argument: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    aget-object v51, v43, v20

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\r\n"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 450
    goto :goto_8

    .line 444
    :cond_28
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 453
    :cond_29
    const/16 v50, 0x4

    move/from16 v0, v50

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 454
    .local v25, ipBytes:[B
    const/16 v20, 0x0

    :goto_a
    const/16 v50, 0x4

    move/from16 v0, v20

    move/from16 v1, v50

    if-ge v0, v1, :cond_2b

    .line 458
    :try_start_5
    aget-object v50, v43, v20

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 459
    .local v24, ipByteAsInt:I
    const/16 v50, 0x80

    move/from16 v0, v24

    move/from16 v1, v50

    if-lt v0, v1, :cond_2a

    .line 460
    move/from16 v0, v24

    add-int/lit16 v0, v0, -0x100

    move/from16 v24, v0

    .line 462
    :cond_2a
    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v50, v0

    aput-byte v50, v25, v20
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    .line 454
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 463
    .end local v24           #ipByteAsInt:I
    :catch_3
    move-exception v14

    .line 464
    .local v14, e:Ljava/lang/NumberFormatException;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "550 Invalid PORT format: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    aget-object v51, v43, v20

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\r\n"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 466
    goto/16 :goto_8

    .line 470
    .end local v14           #e:Ljava/lang/NumberFormatException;
    :cond_2b
    const/16 v50, 0x4

    aget-object v50, v43, v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    move/from16 v0, v50

    mul-int/lit16 v0, v0, 0x100

    move/from16 v50, v0

    const/16 v51, 0x5

    aget-object v51, v43, v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v51

    add-int v50, v50, v51

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPort:I

    goto/16 :goto_8

    .line 477
    .end local v20           #i:I
    .end local v25           #ipBytes:[B
    .end local v43           #substrs:[Ljava/lang/String;
    :cond_2c
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "PORT error: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    .end local v16           #errString:Ljava/lang/String;
    .end local v34           #param:Ljava/lang/String;
    :cond_2d
    const-string v50, "PASV"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_32

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_2e

    .line 482
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "PasvSocket is not null: pasvSocket.close()"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->close()V

    .line 484
    const/16 v50, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    .line 486
    :cond_2e
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "PASV mode begin"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    const/4 v6, 0x1

    .line 489
    .local v6, bindFalse:Z
    const/4 v9, 0x0

    .local v9, count:I
    move v10, v9

    .line 492
    .end local v9           #count:I
    .local v10, count:I
    :goto_b
    const-wide/16 v50, 0x64

    :try_start_6
    invoke-static/range {v50 .. v51}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/net/BindException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_17

    .line 493
    add-int/lit8 v9, v10, 0x1

    .end local v10           #count:I
    .restart local v9       #count:I
    const/16 v50, 0x32

    move/from16 v0, v50

    if-le v10, v0, :cond_30

    .line 509
    :cond_2f
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 510
    .local v4, addr:Ljava/net/InetAddress;
    if-nez v4, :cond_31

    .line 511
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "PASV IP string invalid"

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    const-string v50, "502 Couldn\'t open a port\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 528
    .end local v4           #addr:Ljava/net/InetAddress;
    :catch_4
    move-exception v14

    .line 529
    .local v14, e:Ljava/lang/InterruptedException;
    :goto_c
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "PASV Exception: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->close()V

    .line 532
    const/16 v50, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    goto/16 :goto_0

    .line 496
    .end local v14           #e:Ljava/lang/InterruptedException;
    :cond_30
    :try_start_8
    new-instance v50, Ljava/net/ServerSocket;

    const/16 v51, 0x4da6

    const/16 v52, 0x32

    invoke-direct/range {v50 .. v52}, Ljava/net/ServerSocket;-><init>(II)V

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    .line 497
    const/4 v6, 0x0

    .line 498
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "PasvSocket: New Pasv ServerSocket! Data Port: 19878"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/BindException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4

    .line 508
    :goto_d
    if-eqz v6, :cond_2f

    move v10, v9

    .end local v9           #count:I
    .restart local v10       #count:I
    goto/16 :goto_b

    .line 501
    :catch_5
    move-exception v14

    move v9, v10

    .line 502
    .end local v10           #count:I
    .restart local v9       #count:I
    .local v14, e:Ljava/net/BindException;
    :goto_e
    :try_start_9
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "BindException: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    const/4 v6, 0x1

    .line 507
    goto :goto_d

    .line 504
    .end local v9           #count:I
    .end local v14           #e:Ljava/net/BindException;
    .restart local v10       #count:I
    :catch_6
    move-exception v14

    move v9, v10

    .line 505
    .end local v10           #count:I
    .restart local v9       #count:I
    .local v14, e:Ljava/net/SocketException;
    :goto_f
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "SocketException"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    const/4 v6, 0x1

    goto :goto_d

    .line 515
    .end local v14           #e:Ljava/net/SocketException;
    .restart local v4       #addr:Ljava/net/InetAddress;
    :cond_31
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "PASV sending IP: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v50, "227 Entering Passive Mode ("

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .local v35, response:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v50

    const/16 v51, 0x2e

    const/16 v52, 0x2c

    invoke-virtual/range {v50 .. v52}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v50, ","

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const/16 v50, 0x4d

    move-object/from16 v0, v35

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    const-string v50, ","

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const/16 v50, 0xa6

    move-object/from16 v0, v35

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    const-string v50, ").\r\n"

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 527
    .local v36, responseString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 535
    .end local v4           #addr:Ljava/net/InetAddress;
    .end local v6           #bindFalse:Z
    .end local v9           #count:I
    .end local v35           #response:Ljava/lang/StringBuilder;
    .end local v36           #responseString:Ljava/lang/String;
    :cond_32
    const-string v50, "RETR"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_45

    .line 536
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "RETR executing"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 539
    .restart local v34       #param:Ljava/lang/String;
    const/16 v16, 0x0

    .line 541
    .restart local v16       #errString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_35

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v13

    .line 547
    .local v13, dataSocket:Ljava/net/Socket;
    :goto_10
    const/16 v50, 0x1770

    move/from16 v0, v50

    invoke-virtual {v13, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 549
    new-instance v50, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-direct/range {v50 .. v51}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 551
    .local v18, fileToRetr:Ljava/io/File;
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Download file dir = "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->violatesChroot(Ljava/io/File;)Z

    move-result v50

    if-eqz v50, :cond_36

    .line 554
    const-string v16, "550 Invalid name or chroot violation\r\n"

    .line 648
    :cond_33
    :goto_11
    if-eqz v16, :cond_43

    .line 649
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 656
    :goto_12
    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 657
    const/4 v13, 0x0

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_34

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->close()V

    .line 660
    :goto_13
    const/16 v50, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    .line 663
    :cond_34
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "RETR done"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 544
    .end local v13           #dataSocket:Ljava/net/Socket;
    .end local v18           #fileToRetr:Ljava/io/File;
    :cond_35
    new-instance v13, Ljava/net/Socket;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v50, "127.0.0.1"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPort:I

    move/from16 v51, v0

    move-object/from16 v0, v50

    move/from16 v1, v51

    invoke-direct {v13, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 545
    .restart local v13       #dataSocket:Ljava/net/Socket;
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "dataSocket: New Data Socket!"

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 556
    .restart local v18       #fileToRetr:Ljava/io/File;
    :cond_36
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v50

    if-eqz v50, :cond_37

    .line 557
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Ignoring RETR for directory"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    const-string v16, "550 Can\'t RETR a directory\r\n"

    .line 559
    goto :goto_11

    .line 560
    :cond_37
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v50

    if-nez v50, :cond_38

    .line 561
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Can\'t RETR nonexistent file: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    const-string v16, "550 File does not exist\r\n"

    .line 564
    goto/16 :goto_11

    .line 565
    :cond_38
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->canRead()Z

    move-result v50

    if-nez v50, :cond_39

    .line 566
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Failed RETR permission (canRead() is false)"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    const-string v16, "550 No read permissions\r\n"

    .line 568
    goto/16 :goto_11

    .line 570
    :cond_39
    const/16 v21, 0x0

    .line 572
    .local v21, in:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_15

    .line 573
    .end local v21           #in:Ljava/io/FileInputStream;
    .local v22, in:Ljava/io/FileInputStream;
    const v50, 0x19000

    :try_start_c
    move/from16 v0, v50

    new-array v7, v0, [B

    .line 575
    .local v7, buffer:[B
    const-string v50, "150 Sending file\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mBinaryMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_3b

    .line 577
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Transferring in binary mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    :cond_3a
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, bytesRead:I
    const/16 v50, -0x1

    move/from16 v0, v50

    if-eq v8, v0, :cond_7d

    .line 579
    const/16 v50, 0x0

    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v51

    move-object/from16 v0, p0

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v7, v1, v8, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->sendViaDataSocket([BIILjava/io/OutputStream;)Z

    move-result v50

    if-nez v50, :cond_3a

    .line 581
    const-string v16, "426 Data socket error\r\n"

    .line 582
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Data socket error"

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 641
    if-eqz v22, :cond_7e

    .line 642
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V

    .line 643
    .end local v7           #buffer:[B
    .end local v8           #bytesRead:I
    .end local v22           #in:Ljava/io/FileInputStream;
    :goto_14
    const/16 v21, 0x0

    .restart local v21       #in:Ljava/io/FileInputStream;
    goto/16 :goto_11

    .line 587
    .end local v21           #in:Ljava/io/FileInputStream;
    .restart local v7       #buffer:[B
    .restart local v22       #in:Ljava/io/FileInputStream;
    :cond_3b
    :try_start_d
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Transferring in ASCII mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    const/16 v26, 0x0

    .line 589
    .local v26, lastBufEndedWithCR:Z
    :goto_15
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .restart local v8       #bytesRead:I
    const/16 v50, -0x1

    move/from16 v0, v50

    if-eq v8, v0, :cond_7d

    .line 590
    const/16 v41, 0x0

    .line 591
    .local v41, startPos:I
    const/4 v15, 0x0

    .line 592
    .local v15, endPos:I
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v11, v0, [B

    fill-array-data v11, :array_0

    .line 594
    .local v11, crnBuf:[B
    new-instance v50, Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mFtpCharset:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 595
    array-length v8, v7

    .line 596
    const/4 v15, 0x0

    :goto_16
    if-ge v15, v8, :cond_40

    .line 597
    aget-byte v50, v7, v15

    const/16 v51, 0xa

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_3d

    .line 598
    sub-int v50, v15, v41

    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v51

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v50

    move-object/from16 v3, v51

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->sendViaDataSocket([BIILjava/io/OutputStream;)Z

    .line 601
    if-nez v15, :cond_3e

    .line 604
    if-nez v26, :cond_3c

    .line 608
    const/16 v50, 0x0

    const/16 v51, 0x1

    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v52

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->sendViaDataSocket([BIILjava/io/OutputStream;)Z

    .line 622
    :cond_3c
    :goto_17
    move/from16 v41, v15

    .line 596
    :cond_3d
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    .line 612
    :cond_3e
    add-int/lit8 v50, v15, -0x1

    aget-byte v50, v7, v50

    const/16 v51, 0xd

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_3f

    .line 615
    const/16 v50, 0x0

    const/16 v51, 0x1

    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v52

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->sendViaDataSocket([BIILjava/io/OutputStream;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_17

    .line 634
    .end local v7           #buffer:[B
    .end local v8           #bytesRead:I
    .end local v11           #crnBuf:[B
    .end local v15           #endPos:I
    .end local v26           #lastBufEndedWithCR:Z
    .end local v41           #startPos:I
    :catch_7
    move-exception v14

    move-object/from16 v21, v22

    .line 635
    .end local v22           #in:Ljava/io/FileInputStream;
    .local v14, e:Ljava/io/FileNotFoundException;
    .restart local v21       #in:Ljava/io/FileInputStream;
    :goto_18
    :try_start_e
    const-string v16, "550 File not found\r\n"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 641
    if-eqz v21, :cond_33

    .line 642
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_14

    .line 620
    .end local v14           #e:Ljava/io/FileNotFoundException;
    .end local v21           #in:Ljava/io/FileInputStream;
    .restart local v7       #buffer:[B
    .restart local v8       #bytesRead:I
    .restart local v11       #crnBuf:[B
    .restart local v15       #endPos:I
    .restart local v22       #in:Ljava/io/FileInputStream;
    .restart local v26       #lastBufEndedWithCR:Z
    .restart local v41       #startPos:I
    :cond_3f
    :try_start_f
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "parseCommand"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_17

    .line 637
    .end local v7           #buffer:[B
    .end local v8           #bytesRead:I
    .end local v11           #crnBuf:[B
    .end local v15           #endPos:I
    .end local v26           #lastBufEndedWithCR:Z
    .end local v41           #startPos:I
    :catch_8
    move-exception v14

    move-object/from16 v21, v22

    .line 638
    .end local v22           #in:Ljava/io/FileInputStream;
    .local v14, e:Ljava/io/IOException;
    .restart local v21       #in:Ljava/io/FileInputStream;
    :goto_19
    :try_start_10
    const-string v16, "425 Network error\r\n"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 641
    if-eqz v21, :cond_33

    .line 642
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_14

    .line 625
    .end local v14           #e:Ljava/io/IOException;
    .end local v21           #in:Ljava/io/FileInputStream;
    .restart local v7       #buffer:[B
    .restart local v8       #bytesRead:I
    .restart local v11       #crnBuf:[B
    .restart local v15       #endPos:I
    .restart local v22       #in:Ljava/io/FileInputStream;
    .restart local v26       #lastBufEndedWithCR:Z
    .restart local v41       #startPos:I
    :cond_40
    sub-int v50, v15, v41

    :try_start_11
    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v51

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v50

    move-object/from16 v3, v51

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->sendViaDataSocket([BIILjava/io/OutputStream;)Z

    .line 627
    add-int/lit8 v50, v8, -0x1

    aget-byte v50, v7, v50
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    const/16 v51, 0xd

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_41

    .line 628
    const/16 v26, 0x1

    goto/16 :goto_15

    .line 630
    :cond_41
    const/16 v26, 0x0

    goto/16 :goto_15

    .line 641
    .end local v7           #buffer:[B
    .end local v8           #bytesRead:I
    .end local v11           #crnBuf:[B
    .end local v15           #endPos:I
    .end local v22           #in:Ljava/io/FileInputStream;
    .end local v26           #lastBufEndedWithCR:Z
    .end local v41           #startPos:I
    .restart local v21       #in:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v50

    :goto_1a
    if-eqz v21, :cond_42

    .line 642
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    .line 643
    const/16 v21, 0x0

    .line 641
    :cond_42
    throw v50

    .line 651
    .end local v21           #in:Ljava/io/FileInputStream;
    :cond_43
    :try_start_12
    const-string v50, "226 Transmission finished\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_12

    .line 653
    :catch_9
    move-exception v14

    .line 654
    .restart local v14       #e:Ljava/io/IOException;
    :try_start_13
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Exception: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 656
    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 657
    const/4 v13, 0x0

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_34

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->close()V

    goto/16 :goto_13

    .line 656
    .end local v14           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v50

    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 657
    const/4 v13, 0x0

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v51, v0

    if-eqz v51, :cond_44

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Ljava/net/ServerSocket;->close()V

    .line 660
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    .line 656
    :cond_44
    throw v50

    .line 664
    .end local v13           #dataSocket:Ljava/net/Socket;
    .end local v16           #errString:Ljava/lang/String;
    .end local v18           #fileToRetr:Ljava/io/File;
    .end local v34           #param:Ljava/lang/String;
    :cond_45
    const-string v50, "STOR"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_58

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_49

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v13

    .line 672
    .restart local v13       #dataSocket:Ljava/net/Socket;
    :goto_1b
    const/16 v50, 0x1770

    move/from16 v0, v50

    invoke-virtual {v13, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 673
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "STOR/APPE executing"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    const/4 v5, 0x0

    .line 675
    .local v5, append:Z
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 676
    .restart local v34       #param:Ljava/lang/String;
    new-instance v50, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-direct/range {v50 .. v51}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v42

    .line 678
    .local v42, storeFile:Ljava/io/File;
    const/16 v16, 0x0

    .line 679
    .restart local v16       #errString:Ljava/lang/String;
    const/16 v31, 0x0

    .line 682
    .local v31, out:Ljava/io/FileOutputStream;
    :try_start_14
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->violatesChroot(Ljava/io/File;)Z

    move-result v50

    if-eqz v50, :cond_4a

    .line 683
    const-string v16, "550 Invalid name or chroot violation\r\n"

    .line 773
    :goto_1c
    if-eqz v16, :cond_57

    .line 774
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "STOR error: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e

    .line 783
    :goto_1d
    if-eqz v13, :cond_46

    .line 784
    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 785
    const/4 v13, 0x0

    .line 787
    :cond_46
    if-eqz v31, :cond_47

    .line 788
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V

    .line 789
    const/16 v31, 0x0

    .line 791
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_48

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->close()V

    .line 793
    :goto_1e
    const/16 v50, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    .line 796
    :cond_48
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "STOR finished"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 669
    .end local v5           #append:Z
    .end local v13           #dataSocket:Ljava/net/Socket;
    .end local v16           #errString:Ljava/lang/String;
    .end local v31           #out:Ljava/io/FileOutputStream;
    .end local v34           #param:Ljava/lang/String;
    .end local v42           #storeFile:Ljava/io/File;
    :cond_49
    new-instance v13, Ljava/net/Socket;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v50, "127.0.0.1"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPort:I

    move/from16 v51, v0

    move-object/from16 v0, v50

    move/from16 v1, v51

    invoke-direct {v13, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 670
    .restart local v13       #dataSocket:Ljava/net/Socket;
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "dataSocket: New Data Socket!"

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 686
    .restart local v5       #append:Z
    .restart local v16       #errString:Ljava/lang/String;
    .restart local v31       #out:Ljava/io/FileOutputStream;
    .restart local v34       #param:Ljava/lang/String;
    .restart local v42       #storeFile:Ljava/io/File;
    :cond_4a
    :try_start_15
    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->isDirectory()Z

    move-result v50

    if-eqz v50, :cond_4b

    .line 687
    const-string v16, "451 Can\'t overwrite a directory\r\n"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 688
    goto/16 :goto_1c

    .line 692
    :cond_4b
    :try_start_16
    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->exists()Z

    move-result v50

    if-eqz v50, :cond_4c

    .line 693
    if-nez v5, :cond_4c

    .line 694
    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->delete()Z

    move-result v50

    if-nez v50, :cond_4c

    .line 695
    const-string v16, "451 Couldn\'t truncate file\r\n"

    goto/16 :goto_1c

    .line 700
    :cond_4c
    new-instance v32, Ljava/io/FileOutputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 713
    .end local v31           #out:Ljava/io/FileOutputStream;
    .local v32, out:Ljava/io/FileOutputStream;
    :try_start_17
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Data socket ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    const-string v50, "150 Data socket ready\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 715
    const v50, 0x19000

    move/from16 v0, v50

    new-array v7, v0, [B

    .line 716
    .restart local v7       #buffer:[B
    const/16 v28, 0x0

    .line 718
    .local v28, numRead:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mBinaryMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_4e

    .line 719
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Mode is binary"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    :goto_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/mediatek/apst/target/ftp/FtpConnection;->receiveFromDataSocket([BLjava/net/Socket;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    move-result v28

    .line 725
    packed-switch v28, :pswitch_data_0

    .line 738
    :try_start_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mBinaryMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_51

    .line 739
    const/16 v50, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v50

    move/from16 v2, v28

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 762
    :cond_4d
    :goto_20
    invoke-virtual/range {v32 .. v32}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    goto :goto_1f

    .line 763
    :catch_a
    move-exception v14

    .line 764
    .restart local v14       #e:Ljava/io/IOException;
    :try_start_19
    const-string v16, "451 File IO problem. Device might be full.\r\n"

    .line 765
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Exception while storing: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    move-object/from16 v31, v32

    .line 767
    .end local v32           #out:Ljava/io/FileOutputStream;
    .restart local v31       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_1c

    .line 701
    .end local v7           #buffer:[B
    .end local v14           #e:Ljava/io/IOException;
    .end local v28           #numRead:I
    :catch_b
    move-exception v14

    .line 703
    .local v14, e:Ljava/io/FileNotFoundException;
    :try_start_1a
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "451 Couldn\'t open file \""

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\" aka \""

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\" for writing\r\n"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_c

    move-result-object v16

    goto/16 :goto_1c

    .line 707
    :catch_c
    move-exception v23

    .line 708
    .local v23, ioe:Ljava/io/IOException;
    :try_start_1b
    const-string v16, "451 Couldn\'t open file, nested exception\r\n"
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e

    goto/16 :goto_1c

    .line 721
    .end local v14           #e:Ljava/io/FileNotFoundException;
    .end local v23           #ioe:Ljava/io/IOException;
    .end local v31           #out:Ljava/io/FileOutputStream;
    .restart local v7       #buffer:[B
    .restart local v28       #numRead:I
    .restart local v32       #out:Ljava/io/FileOutputStream;
    :cond_4e
    :try_start_1c
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Mode is ascii"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_d

    goto/16 :goto_1f

    .line 780
    .end local v7           #buffer:[B
    .end local v28           #numRead:I
    :catch_d
    move-exception v14

    move-object/from16 v31, v32

    .line 781
    .end local v32           #out:Ljava/io/FileOutputStream;
    .local v14, e:Ljava/io/IOException;
    .restart local v31       #out:Ljava/io/FileOutputStream;
    :goto_21
    :try_start_1d
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "IOException: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 783
    if-eqz v13, :cond_4f

    .line 784
    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 785
    const/4 v13, 0x0

    .line 787
    :cond_4f
    if-eqz v31, :cond_50

    .line 788
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V

    .line 789
    const/16 v31, 0x0

    .line 791
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_48

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->close()V

    goto/16 :goto_1e

    .line 727
    .end local v14           #e:Ljava/io/IOException;
    .end local v31           #out:Ljava/io/FileOutputStream;
    .restart local v7       #buffer:[B
    .restart local v28       #numRead:I
    .restart local v32       #out:Ljava/io/FileOutputStream;
    :pswitch_0
    :try_start_1e
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Returned from final read"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v31, v32

    .line 729
    .end local v32           #out:Ljava/io/FileOutputStream;
    .restart local v31       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_1c

    .line 731
    .end local v31           #out:Ljava/io/FileOutputStream;
    .restart local v32       #out:Ljava/io/FileOutputStream;
    :pswitch_1
    const-string v16, "426 Couldn\'t receive data\r\n"

    move-object/from16 v31, v32

    .line 732
    .end local v32           #out:Ljava/io/FileOutputStream;
    .restart local v31       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_1c

    .line 734
    .end local v31           #out:Ljava/io/FileOutputStream;
    .restart local v32       #out:Ljava/io/FileOutputStream;
    :pswitch_2
    const-string v16, "425 Could not connect data socket\r\n"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_d

    move-object/from16 v31, v32

    .line 735
    .end local v32           #out:Ljava/io/FileOutputStream;
    .restart local v31       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_1c

    .line 742
    .end local v31           #out:Ljava/io/FileOutputStream;
    .restart local v32       #out:Ljava/io/FileOutputStream;
    :cond_51
    const/16 v41, 0x0

    .line 745
    .restart local v41       #startPos:I
    :try_start_1f
    new-instance v50, Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mFtpCharset:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 747
    array-length v0, v7

    move/from16 v28, v0

    .line 748
    const/4 v15, 0x0

    .restart local v15       #endPos:I
    :goto_22
    move/from16 v0, v28

    if-ge v15, v0, :cond_53

    .line 749
    aget-byte v50, v7, v15

    const/16 v51, 0xd

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_52

    .line 752
    sub-int v50, v15, v41

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v50

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 754
    add-int/lit8 v41, v15, 0x1

    .line 748
    :cond_52
    add-int/lit8 v15, v15, 0x1

    goto :goto_22

    .line 757
    :cond_53
    move/from16 v0, v41

    move/from16 v1, v28

    if-ge v0, v1, :cond_4d

    .line 758
    sub-int v50, v15, v41

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v50

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_a

    goto/16 :goto_20

    .line 783
    .end local v7           #buffer:[B
    .end local v15           #endPos:I
    .end local v28           #numRead:I
    .end local v41           #startPos:I
    :catchall_2
    move-exception v50

    move-object/from16 v31, v32

    .end local v32           #out:Ljava/io/FileOutputStream;
    .restart local v31       #out:Ljava/io/FileOutputStream;
    :goto_23
    if-eqz v13, :cond_54

    .line 784
    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 785
    const/4 v13, 0x0

    .line 787
    :cond_54
    if-eqz v31, :cond_55

    .line 788
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V

    .line 789
    const/16 v31, 0x0

    .line 791
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v51, v0

    if-eqz v51, :cond_56

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Ljava/net/ServerSocket;->close()V

    .line 793
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    .line 783
    :cond_56
    throw v50

    .line 777
    :cond_57
    :try_start_20
    const-string v50, "226 Transmission complete\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_e

    goto/16 :goto_1d

    .line 780
    :catch_e
    move-exception v14

    goto/16 :goto_21

    .line 797
    .end local v5           #append:Z
    .end local v13           #dataSocket:Ljava/net/Socket;
    .end local v16           #errString:Ljava/lang/String;
    .end local v31           #out:Ljava/io/FileOutputStream;
    .end local v34           #param:Ljava/lang/String;
    .end local v42           #storeFile:Ljava/io/File;
    :cond_58
    const-string v50, "LIST"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_5f

    .line 798
    const/4 v13, 0x0

    .line 799
    .restart local v13       #dataSocket:Ljava/net/Socket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_5a

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v13

    .line 805
    :goto_24
    const/16 v50, 0x1770

    move/from16 v0, v50

    invoke-virtual {v13, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 806
    const-string v50, "150 Opening ASCII mode data connection\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 808
    :try_start_21
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/mediatek/apst/target/ftp/FtpConnection;->responseList(Ljava/lang/String;Ljava/net/Socket;)V

    .line 809
    const-string v50, "226 transfer complete\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_21 .. :try_end_21} :catch_f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_11

    .line 816
    if-eqz v13, :cond_59

    .line 817
    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 818
    const/4 v13, 0x0

    .line 820
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_0

    .line 822
    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_14

    .line 826
    :goto_25
    const/16 v50, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    goto/16 :goto_0

    .line 802
    :cond_5a
    new-instance v13, Ljava/net/Socket;

    .end local v13           #dataSocket:Ljava/net/Socket;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v50, "127.0.0.1"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPort:I

    move/from16 v51, v0

    move-object/from16 v0, v50

    move/from16 v1, v51

    invoke-direct {v13, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 803
    .restart local v13       #dataSocket:Ljava/net/Socket;
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "dataSocket: New Data Socket!"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_24

    .line 810
    :catch_f
    move-exception v37

    .line 811
    .local v37, se:Ljava/net/SocketTimeoutException;
    :try_start_23
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "LIST SocketTimeoutException: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    .line 816
    if-eqz v13, :cond_5b

    .line 817
    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 818
    const/4 v13, 0x0

    .line 820
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_0

    .line 822
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_10

    goto :goto_25

    .line 823
    :catch_10
    move-exception v14

    .line 824
    .restart local v14       #e:Ljava/io/IOException;
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_25

    .line 813
    .end local v14           #e:Ljava/io/IOException;
    .end local v37           #se:Ljava/net/SocketTimeoutException;
    :catch_11
    move-exception v14

    .line 814
    .restart local v14       #e:Ljava/io/IOException;
    :try_start_25
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "LIST IOException: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 816
    if-eqz v13, :cond_5c

    .line 817
    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 818
    const/4 v13, 0x0

    .line 820
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    if-eqz v50, :cond_0

    .line 822
    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/ServerSocket;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_12

    goto/16 :goto_25

    .line 823
    :catch_12
    move-exception v14

    .line 824
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_25

    .line 816
    .end local v14           #e:Ljava/io/IOException;
    :catchall_3
    move-exception v50

    if-eqz v13, :cond_5d

    .line 817
    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 818
    const/4 v13, 0x0

    .line 820
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v51, v0

    if-eqz v51, :cond_5e

    .line 822
    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Ljava/net/ServerSocket;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_13

    .line 826
    :goto_26
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    .line 816
    :cond_5e
    throw v50

    .line 830
    .end local v13           #dataSocket:Ljava/net/Socket;
    :cond_5f
    const-string v50, "DELE"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_64

    .line 831
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "DELE executing"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 833
    .restart local v34       #param:Ljava/lang/String;
    new-instance v50, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-direct/range {v50 .. v51}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v42

    .line 835
    .restart local v42       #storeFile:Ljava/io/File;
    const/16 v16, 0x0

    .line 836
    .restart local v16       #errString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->violatesChroot(Ljava/io/File;)Z

    move-result v50

    if-eqz v50, :cond_61

    .line 837
    const-string v16, "550 Invalid name or chroot violation\r\n"

    .line 843
    :cond_60
    :goto_27
    if-eqz v16, :cond_63

    .line 844
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 845
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "DELE failed: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    :goto_28
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "DELE finished"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 838
    :cond_61
    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->isDirectory()Z

    move-result v50

    if-eqz v50, :cond_62

    .line 839
    const-string v16, "550 Can\'t DELE a directory\r\n"

    goto :goto_27

    .line 840
    :cond_62
    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->delete()Z

    move-result v50

    if-nez v50, :cond_60

    .line 841
    const-string v16, "450 Error deleting file\r\n"

    goto :goto_27

    .line 847
    :cond_63
    const-string v50, "250 File successfully deleted\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto :goto_28

    .line 850
    .end local v16           #errString:Ljava/lang/String;
    .end local v34           #param:Ljava/lang/String;
    .end local v42           #storeFile:Ljava/io/File;
    :cond_64
    const-string v50, "MKD"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_6a

    .line 851
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "MKD executing"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 854
    .restart local v34       #param:Ljava/lang/String;
    const/16 v16, 0x0

    .line 858
    .restart local v16       #errString:Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ge v0, v1, :cond_66

    .line 859
    const-string v16, "550 Invalid name\r\n"

    .line 877
    :cond_65
    :goto_29
    if-eqz v16, :cond_69

    .line 878
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 879
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "MKD error: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    :goto_2a
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "MKD complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 862
    :cond_66
    new-instance v50, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-direct/range {v50 .. v51}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v45

    .line 864
    .local v45, toCreate:Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->violatesChroot(Ljava/io/File;)Z

    move-result v50

    if-eqz v50, :cond_67

    .line 865
    const-string v16, "550 Invalid name or chroot violation\r\n"

    .line 866
    goto :goto_29

    .line 868
    :cond_67
    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->exists()Z

    move-result v50

    if-eqz v50, :cond_68

    .line 869
    const-string v16, "550 Already exists\r\n"

    .line 870
    goto :goto_29

    .line 872
    :cond_68
    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->mkdir()Z

    move-result v50

    if-nez v50, :cond_65

    .line 873
    const-string v16, "550 Error making directory (permissions?)\r\n"

    goto :goto_29

    .line 881
    .end local v45           #toCreate:Ljava/io/File;
    :cond_69
    const-string v50, "250 Directory created\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto :goto_2a

    .line 884
    .end local v16           #errString:Ljava/lang/String;
    .end local v34           #param:Ljava/lang/String;
    :cond_6a
    const-string v50, "RNFR"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_6e

    .line 885
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 886
    .restart local v34       #param:Ljava/lang/String;
    const/16 v16, 0x0

    .line 887
    .restart local v16       #errString:Ljava/lang/String;
    const/16 v17, 0x0

    .line 889
    .local v17, file:Ljava/io/File;
    new-instance v50, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-direct/range {v50 .. v51}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 891
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->violatesChroot(Ljava/io/File;)Z

    move-result v50

    if-eqz v50, :cond_6c

    .line 892
    const-string v16, "550 Invalid name or chroot violation\r\n"

    .line 899
    :cond_6b
    :goto_2b
    if-eqz v16, :cond_6d

    .line 900
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 901
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "RNFR failed: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->setRenameFrom(Ljava/io/File;)V

    goto/16 :goto_0

    .line 895
    :cond_6c
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v50

    if-nez v50, :cond_6b

    .line 896
    const-string v16, "450 Cannot rename nonexistent file\r\n"

    goto :goto_2b

    .line 904
    :cond_6d
    const-string v50, "350 Filename noted, now send RNTO\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->setRenameFrom(Ljava/io/File;)V

    goto/16 :goto_0

    .line 907
    .end local v16           #errString:Ljava/lang/String;
    .end local v17           #file:Ljava/io/File;
    .end local v34           #param:Ljava/lang/String;
    :cond_6e
    const-string v50, "RNTO"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_73

    .line 908
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 909
    .restart local v34       #param:Ljava/lang/String;
    const/16 v16, 0x0

    .line 910
    .restart local v16       #errString:Ljava/lang/String;
    const/16 v46, 0x0

    .line 911
    .local v46, toFile:Ljava/io/File;
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "RNTO executing\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "param: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 914
    new-instance v50, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-direct/range {v50 .. v51}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v46

    .line 916
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "RNTO parsed: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->violatesChroot(Ljava/io/File;)Z

    move-result v50

    if-eqz v50, :cond_70

    .line 918
    const-string v16, "550 Invalid name or chroot violation\r\n"

    .line 931
    :cond_6f
    :goto_2c
    if-eqz v16, :cond_72

    .line 932
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 933
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "RNFR failed: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 937
    :goto_2d
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->setRenameFrom(Ljava/io/File;)V

    .line 938
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "RNTO finished"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 921
    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getRenameFrom()Ljava/io/File;

    move-result-object v19

    .line 922
    .local v19, fromFile:Ljava/io/File;
    if-nez v19, :cond_71

    .line 923
    const-string v16, "550 Rename error, maybe RNFR not sent\r\n"

    .line 924
    goto :goto_2c

    .line 926
    :cond_71
    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v50

    if-nez v50, :cond_6f

    .line 927
    const-string v16, "550 Error during rename operation\r\n"

    .line 928
    goto :goto_2c

    .line 935
    .end local v19           #fromFile:Ljava/io/File;
    :cond_72
    const-string v50, "250 rename successful\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto :goto_2d

    .line 939
    .end local v16           #errString:Ljava/lang/String;
    .end local v34           #param:Ljava/lang/String;
    .end local v46           #toFile:Ljava/io/File;
    :cond_73
    const-string v50, "RMD"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_7a

    .line 940
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "RMD executing"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 943
    .restart local v34       #param:Ljava/lang/String;
    const/16 v16, 0x0

    .line 945
    .restart local v16       #errString:Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ge v0, v1, :cond_75

    .line 946
    const-string v16, "550 Invalid argument\r\n"

    .line 968
    :cond_74
    :goto_2e
    if-eqz v16, :cond_79

    .line 969
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 970
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "RMD failed: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    :goto_2f
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "RMD finished"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 949
    :cond_75
    new-instance v50, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-direct/range {v50 .. v51}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v47

    .line 951
    .local v47, toRemove:Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->violatesChroot(Ljava/io/File;)Z

    move-result v50

    if-eqz v50, :cond_76

    .line 952
    const-string v16, "550 Invalid name or chroot violation\r\n"

    .line 953
    goto :goto_2e

    .line 955
    :cond_76
    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->isDirectory()Z

    move-result v50

    if-nez v50, :cond_77

    .line 956
    const-string v16, "550 Can\'t RMD a non-directory\r\n"

    .line 957
    goto :goto_2e

    .line 959
    :cond_77
    new-instance v50, Ljava/io/File;

    const-string v51, "/"

    invoke-direct/range {v50 .. v51}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_78

    .line 960
    const-string v16, "550 Won\'t RMD the root directory\r\n"

    .line 961
    goto :goto_2e

    .line 963
    :cond_78
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->recursiveDelete(Ljava/io/File;)Z

    move-result v50

    if-nez v50, :cond_74

    .line 964
    const-string v16, "550 Deletion error, possibly incomplete\r\n"

    goto/16 :goto_2e

    .line 972
    .end local v47           #toRemove:Ljava/io/File;
    :cond_79
    const-string v50, "250 Removed directory\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto :goto_2f

    .line 975
    .end local v16           #errString:Ljava/lang/String;
    .end local v34           #param:Ljava/lang/String;
    :cond_7a
    const-string v50, "FEAT"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_7b

    .line 976
    const-string v50, "211-Features supported\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 977
    const-string v50, " UTF8\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 978
    const-string v50, "211 End\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 979
    :cond_7b
    const-string v50, "SITE"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_7c

    .line 980
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v51, "Command: site"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 981
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "200 invalid command:"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\r\n"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 983
    :cond_7c
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "---------------->Invalid Command: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 984
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "200 invalid command:"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\r\n"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 641
    .restart local v7       #buffer:[B
    .restart local v8       #bytesRead:I
    .restart local v13       #dataSocket:Ljava/net/Socket;
    .restart local v16       #errString:Ljava/lang/String;
    .restart local v18       #fileToRetr:Ljava/io/File;
    .restart local v22       #in:Ljava/io/FileInputStream;
    .restart local v34       #param:Ljava/lang/String;
    :cond_7d
    if-eqz v22, :cond_7e

    .line 642
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_14

    .line 823
    .end local v7           #buffer:[B
    .end local v8           #bytesRead:I
    .end local v16           #errString:Ljava/lang/String;
    .end local v18           #fileToRetr:Ljava/io/File;
    .end local v22           #in:Ljava/io/FileInputStream;
    .end local v34           #param:Ljava/lang/String;
    :catch_13
    move-exception v14

    .line 824
    .restart local v14       #e:Ljava/io/IOException;
    sget-object v51, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 823
    .end local v14           #e:Ljava/io/IOException;
    :catch_14
    move-exception v14

    .line 824
    .restart local v14       #e:Ljava/io/IOException;
    sget-object v50, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_25

    .line 783
    .end local v14           #e:Ljava/io/IOException;
    .restart local v5       #append:Z
    .restart local v16       #errString:Ljava/lang/String;
    .restart local v31       #out:Ljava/io/FileOutputStream;
    .restart local v34       #param:Ljava/lang/String;
    .restart local v42       #storeFile:Ljava/io/File;
    :catchall_4
    move-exception v50

    goto/16 :goto_23

    .line 641
    .end local v5           #append:Z
    .end local v31           #out:Ljava/io/FileOutputStream;
    .end local v42           #storeFile:Ljava/io/File;
    .restart local v18       #fileToRetr:Ljava/io/File;
    .restart local v22       #in:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v50

    move-object/from16 v21, v22

    .end local v22           #in:Ljava/io/FileInputStream;
    .restart local v21       #in:Ljava/io/FileInputStream;
    goto/16 :goto_1a

    .line 637
    :catch_15
    move-exception v14

    goto/16 :goto_19

    .line 634
    :catch_16
    move-exception v14

    goto/16 :goto_18

    .line 528
    .end local v13           #dataSocket:Ljava/net/Socket;
    .end local v16           #errString:Ljava/lang/String;
    .end local v18           #fileToRetr:Ljava/io/File;
    .end local v21           #in:Ljava/io/FileInputStream;
    .end local v34           #param:Ljava/lang/String;
    .restart local v6       #bindFalse:Z
    .restart local v10       #count:I
    :catch_17
    move-exception v14

    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    goto/16 :goto_c

    .line 504
    :catch_18
    move-exception v14

    goto/16 :goto_f

    .line 501
    :catch_19
    move-exception v14

    goto/16 :goto_e

    .end local v6           #bindFalse:Z
    .end local v9           #count:I
    .restart local v7       #buffer:[B
    .restart local v8       #bytesRead:I
    .restart local v13       #dataSocket:Ljava/net/Socket;
    .restart local v16       #errString:Ljava/lang/String;
    .restart local v18       #fileToRetr:Ljava/io/File;
    .restart local v22       #in:Ljava/io/FileInputStream;
    .restart local v34       #param:Ljava/lang/String;
    :cond_7e
    move-object/from16 v21, v22

    .end local v22           #in:Ljava/io/FileInputStream;
    .restart local v21       #in:Ljava/io/FileInputStream;
    goto/16 :goto_11

    .line 592
    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 725
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private receiveFromDataSocket([BLjava/net/Socket;)I
    .locals 7
    .parameter "buf"
    .parameter "dataSocket"

    .prologue
    const/4 v3, -0x1

    const/4 v0, -0x2

    const/4 v4, 0x0

    .line 1256
    if-nez p2, :cond_1

    .line 1257
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v4, "Can\'t receive from null dataSocket"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1280
    :cond_0
    :goto_0
    return v0

    .line 1260
    :cond_1
    invoke-virtual {p2}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1261
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v4, "Can\'t receive from unconnected socket"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1266
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1267
    .local v2, in:Ljava/io/InputStream;
    :goto_1
    const/4 v5, 0x0

    array-length v6, p1

    invoke-virtual {v2, p1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, bytesRead:I
    if-nez v0, :cond_3

    .line 1268
    sget-object v5, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v6, "receiveFromDataSocket"

    invoke-direct {p0, v5, v6}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1273
    .end local v0           #bytesRead:I
    .end local v2           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 1274
    .local v1, e:Ljava/net/SocketTimeoutException;
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SocketTimeoutException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v4

    .line 1275
    goto :goto_0

    .line 1270
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    .restart local v0       #bytesRead:I
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_3
    if-ne v0, v3, :cond_0

    move v0, v3

    .line 1271
    goto :goto_0

    .line 1276
    .end local v0           #bytesRead:I
    .end local v2           #in:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 1277
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v5, "Error reading data socket"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v4

    .line 1278
    goto :goto_0
.end method

.method private response(Ljava/lang/String;)V
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mFtpCharset:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    .local v1, strBytes:[B
    :goto_0
    iget-object v2, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 202
    iget-object v2, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 203
    return-void

    .line 197
    .end local v1           #strBytes:[B
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mFtpCharset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1       #strBytes:[B
    goto :goto_0
.end method

.method private responseList(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 10
    .parameter "input"
    .parameter "dataSocket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1000
    invoke-virtual {p0, p1, v9}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1001
    .local v4, param:Ljava/lang/String;
    sget-object v6, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "List parameter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1003
    :goto_0
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1004
    sget-object v6, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LIST is skipping dashed arg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0, v4, v9}, Lcom/mediatek/apst/target/ftp/FtpConnection;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1008
    :cond_0
    const/4 v1, 0x0

    .line 1009
    .local v1, fileToList:Ljava/io/File;
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1010
    new-instance v1, Ljava/io/File;

    .end local v1           #fileToList:Ljava/io/File;
    iget-object v6, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mCurrentDir:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1023
    .restart local v1       #fileToList:Ljava/io/File;
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1024
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    .local v5, response:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v5, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->listDirectory(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;

    .line 1026
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1034
    .end local v5           #response:Ljava/lang/StringBuilder;
    .local v3, listing:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mFtpCharset:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1035
    .local v0, bytes:[B
    array-length v6, v0

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {p0, v0, v9, v6, v7}, Lcom/mediatek/apst/target/ftp/FtpConnection;->sendViaDataSocket([BIILjava/io/OutputStream;)Z

    .line 1038
    .end local v0           #bytes:[B
    .end local v3           #listing:Ljava/lang/String;
    :goto_2
    return-void

    .line 1012
    :cond_2
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1013
    const-string v6, "550 LIST does not support wildcards\r\n"

    invoke-direct {p0, v6}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto :goto_2

    .line 1016
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1017
    .end local v1           #fileToList:Ljava/io/File;
    .local v2, fileToList:Ljava/io/File;
    invoke-virtual {p0, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->violatesChroot(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1018
    const-string v6, "450 Listing target violates chroot\r\n"

    invoke-direct {p0, v6}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    move-object v1, v2

    .line 1019
    .end local v2           #fileToList:Ljava/io/File;
    .restart local v1       #fileToList:Ljava/io/File;
    goto :goto_2

    .line 1028
    :cond_4
    invoke-virtual {p0, v1}, Lcom/mediatek/apst/target/ftp/FtpConnection;->makeLsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 1029
    .restart local v3       #listing:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1030
    const-string v6, "450 Couldn\'t list that file\r\n"

    invoke-direct {p0, v6}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #fileToList:Ljava/io/File;
    .end local v3           #listing:Ljava/lang/String;
    .restart local v2       #fileToList:Ljava/io/File;
    :cond_5
    move-object v1, v2

    .end local v2           #fileToList:Ljava/io/File;
    .restart local v1       #fileToList:Ljava/io/File;
    goto :goto_1
.end method

.method private sendViaDataSocket([BIILjava/io/OutputStream;)Z
    .locals 5
    .parameter "bytes"
    .parameter "start"
    .parameter "len"
    .parameter "dataOutputStream"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1202
    if-nez p4, :cond_0

    .line 1203
    sget-object v2, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v3, "Can\'t send via null dataOutputStream"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    :goto_0
    return v1

    .line 1206
    :cond_0
    if-nez p3, :cond_1

    move v1, v2

    .line 1207
    goto :goto_0

    .line 1210
    :cond_1
    :try_start_0
    invoke-virtual {p4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1211
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 1222
    goto :goto_0

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, e:Ljava/net/SocketTimeoutException;
    sget-object v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SocketTimeoutException when sendViaDataSocket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v2

    .line 1215
    goto :goto_0

    .line 1216
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 1217
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v3, "Couldn\'t write output stream for data socket"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1218
    sget-object v2, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public closeSocket()V
    .locals 4

    .prologue
    .line 1288
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 1289
    iget-object v1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "input"
    .parameter "silent"

    .prologue
    .line 1097
    if-nez p1, :cond_1

    .line 1098
    const-string v1, ""

    .line 1111
    :cond_0
    :goto_0
    return-object v1

    .line 1100
    :cond_1
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1101
    .local v0, firstSpacePosition:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1102
    const-string v1, ""

    goto :goto_0

    .line 1104
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, retString:Ljava/lang/String;
    const-string v2, "\\s+$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    if-nez p2, :cond_0

    .line 1109
    sget-object v2, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsed argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRenameFrom()Ljava/io/File;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mRenameFrom:Ljava/io/File;

    return-object v0
.end method

.method public listDirectory(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .parameter "response"
    .parameter "dir"

    .prologue
    .line 1122
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1123
    const-string v6, "500 Internal error, listDirectory on non-directory\r\n"

    .line 1137
    :goto_0
    return-object v6

    .line 1125
    :cond_0
    sget-object v6, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Listing directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1127
    .local v2, entries:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 1128
    const-string v6, "500 Couldn\'t list directory. Check config and mount status.\r\n"

    goto :goto_0

    .line 1130
    :cond_1
    sget-object v6, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dir len "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1131
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v3, v0, v4

    .line 1132
    .local v3, entry:Ljava/io/File;
    invoke-virtual {p0, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->makeLsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1133
    .local v1, curLine:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1134
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1137
    .end local v1           #curLine:Ljava/lang/String;
    .end local v3           #entry:Ljava/io/File;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected makeLsString(Ljava/io/File;)Ljava/lang/String;
    .locals 14
    .parameter "file"

    .prologue
    const/4 v10, 0x0

    .line 1146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1147
    .local v8, response:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1148
    sget-object v11, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v12, "makeLsString had nonexistent file"

    invoke-direct {p0, v11, v12}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    :goto_0
    return-object v10

    .line 1151
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1153
    .local v3, lastNamePart:Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "/"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1154
    :cond_1
    sget-object v11, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v12, "Filename omitted due to disallowed character"

    invoke-direct {p0, v11, v12}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1158
    const-string v10, "drwxr-xr-x 1 owner group"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1165
    .local v0, fileSize:J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 1166
    .local v9, sizeString:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v6, v10, 0xd

    .local v6, padSpaces:I
    move v7, v6

    .line 1167
    .end local v6           #padSpaces:I
    .local v7, padSpaces:I
    :goto_2
    add-int/lit8 v6, v7, -0x1

    .end local v7           #padSpaces:I
    .restart local v6       #padSpaces:I
    if-lez v7, :cond_4

    .line 1168
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v6

    .end local v6           #padSpaces:I
    .restart local v7       #padSpaces:I
    goto :goto_2

    .line 1161
    .end local v0           #fileSize:J
    .end local v7           #padSpaces:I
    .end local v9           #sizeString:Ljava/lang/String;
    :cond_3
    const-string v10, "-rw-r--r-- 1 owner group"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1170
    .restart local v0       #fileSize:J
    .restart local v6       #padSpaces:I
    .restart local v9       #sizeString:Ljava/lang/String;
    :cond_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 1176
    .local v4, mTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    const-wide/32 v12, -0x61075000

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 1178
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, " MMM dd HH:mm "

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1183
    .local v2, format:Ljava/text/SimpleDateFormat;
    :goto_3
    new-instance v10, Ljava/sql/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    const-string v10, "\r\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 1181
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, " MMM dd  yyyy "

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v2       #format:Ljava/text/SimpleDateFormat;
    goto :goto_3
.end method

.method protected recursiveDelete(Ljava/io/File;)Z
    .locals 10
    .parameter "toDelete"

    .prologue
    const/4 v6, 0x0

    .line 1046
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return v6

    .line 1049
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1051
    const/4 v5, 0x1

    .line 1052
    .local v5, success:Z
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1053
    .local v1, entries:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1056
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 1057
    .local v2, entry:Ljava/io/File;
    invoke-virtual {p0, v2}, Lcom/mediatek/apst/target/ftp/FtpConnection;->recursiveDelete(Ljava/io/File;)Z

    move-result v7

    and-int/2addr v5, v7

    .line 1056
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1059
    .end local v2           #entry:Ljava/io/File;
    :cond_2
    sget-object v7, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Recursively deleted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    .line 1062
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #entries:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #success:Z
    :cond_3
    sget-object v6, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RMD deleting file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v6

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 129
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mFtpCharset:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;

    .line 131
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    .line 132
    const-string v3, "220-Welcome message......\r\n"

    invoke-direct {p0, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 133
    const-string v3, "220 Notice:last msg\r\n"

    invoke-direct {p0, v3}, Lcom/mediatek/apst/target/ftp/FtpConnection;->response(Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 136
    .local v0, command:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 151
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 153
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 159
    :cond_1
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_2

    .line 160
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 161
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    .line 167
    :cond_2
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_3

    .line 168
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 169
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    .line 175
    :cond_3
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    if-eqz v3, :cond_4

    .line 176
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 177
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11

    .line 183
    .end local v0           #command:Ljava/lang/String;
    :cond_4
    :goto_4
    return-void

    .line 139
    .restart local v0       #command:Ljava/lang/String;
    :cond_5
    :try_start_5
    invoke-direct {p0, v0}, Lcom/mediatek/apst/target/ftp/FtpConnection;->parseCommand(Ljava/lang/String;)V

    .line 140
    const-string v3, "QUIT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 144
    .end local v0           #command:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 145
    .local v2, se:Ljava/net/SocketException;
    :try_start_6
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SocketException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 151
    :try_start_7
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_6

    .line 152
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 153
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 159
    :cond_6
    :goto_5
    :try_start_8
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_7

    .line 160
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 161
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 167
    :cond_7
    :goto_6
    :try_start_9
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_8

    .line 168
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 169
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 175
    :cond_8
    :goto_7
    :try_start_a
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    if-eqz v3, :cond_4

    .line 176
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 177
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 179
    :catch_1
    move-exception v1

    .line 180
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "socket exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v2           #se:Ljava/net/SocketException;
    :goto_8
    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 146
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 147
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_b
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: Start Ftp connection error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 151
    :try_start_c
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_9

    .line 152
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 153
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 159
    :cond_9
    :goto_9
    :try_start_d
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_a

    .line 160
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 161
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 167
    :cond_a
    :goto_a
    :try_start_e
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_b

    .line 168
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 169
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 175
    :cond_b
    :goto_b
    :try_start_f
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    if-eqz v3, :cond_4

    .line 176
    iget-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 177
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_4

    .line 179
    :catch_3
    move-exception v1

    .line 180
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "socket exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 150
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 151
    :try_start_10
    iget-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;

    if-eqz v4, :cond_c

    .line 152
    iget-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 153
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mReader:Ljava/io/BufferedReader;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    .line 159
    :cond_c
    :goto_c
    :try_start_11
    iget-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    if-eqz v4, :cond_d

    .line 160
    iget-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 161
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mWriter:Ljava/io/BufferedOutputStream;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 167
    :cond_d
    :goto_d
    :try_start_12
    iget-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    if-eqz v4, :cond_e

    .line 168
    iget-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V

    .line 169
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mPasvSocket:Ljava/net/ServerSocket;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 175
    :cond_e
    :goto_e
    :try_start_13
    iget-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    if-eqz v4, :cond_f

    .line 176
    iget-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 177
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mSocket:Ljava/net/Socket;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    .line 150
    :cond_f
    :goto_f
    throw v3

    .line 155
    :catch_4
    move-exception v1

    .line 156
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reader exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    .line 163
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 164
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writer exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    .line 171
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 172
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pasvSocket exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    .line 179
    .end local v1           #e:Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 180
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "socket exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f

    .line 155
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #se:Ljava/net/SocketException;
    :catch_8
    move-exception v1

    .line 156
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reader exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 163
    .end local v1           #e:Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 164
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writer exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 171
    .end local v1           #e:Ljava/io/IOException;
    :catch_a
    move-exception v1

    .line 172
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pasvSocket exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 155
    .end local v2           #se:Ljava/net/SocketException;
    :catch_b
    move-exception v1

    .line 156
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reader exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 163
    :catch_c
    move-exception v1

    .line 164
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writer exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 171
    :catch_d
    move-exception v1

    .line 172
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pasvSocket exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 155
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #command:Ljava/lang/String;
    :catch_e
    move-exception v1

    .line 156
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reader exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    .end local v1           #e:Ljava/io/IOException;
    :catch_f
    move-exception v1

    .line 164
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writer exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 171
    .end local v1           #e:Ljava/io/IOException;
    :catch_10
    move-exception v1

    .line 172
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pasvSocket exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 179
    .end local v1           #e:Ljava/io/IOException;
    :catch_11
    move-exception v1

    .line 180
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v3, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "socket exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8
.end method

.method public setRenameFrom(Ljava/io/File;)V
    .locals 0
    .parameter "renameFrom"

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/mediatek/apst/target/ftp/FtpConnection;->mRenameFrom:Ljava/io/File;

    .line 1309
    return-void
.end method

.method public violatesChroot(Ljava/io/File;)Z
    .locals 7
    .parameter "file"

    .prologue
    const/4 v3, 0x1

    .line 1072
    new-instance v1, Ljava/io/File;

    const-string v4, "/"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v1, chroot:Ljava/io/File;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, canonicalPath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1076
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    const-string v5, "Path violated folder restriction, denying"

    invoke-direct {p0, v4, v5}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chroot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    .end local v0           #canonicalPath:Ljava/lang/String;
    :goto_0
    return v3

    .line 1081
    .restart local v0       #canonicalPath:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1082
    .end local v0           #canonicalPath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1083
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path canonicalization problem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1084
    sget-object v4, Lcom/mediatek/apst/target/ftp/FtpConnection;->TAG:[Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "When checking file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/apst/target/ftp/FtpConnection;->ftpLog([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;
.super Ljava/lang/Object;
.source "CdsSocketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsSocketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsedProcEntry"
.end annotation


# instance fields
.field private final localAddress:Ljava/net/InetAddress;

.field private final port:I

.field private final state:Ljava/lang/String;

.field private final uid:I


# direct methods
.method private constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;I)V
    .locals 0
    .parameter "addr"
    .parameter "port"
    .parameter "state"
    .parameter "uid"

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->localAddress:Ljava/net/InetAddress;

    .line 200
    iput p2, p0, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->port:I

    .line 201
    iput-object p3, p0, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->state:Ljava/lang/String;

    .line 202
    iput p4, p0, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->uid:I

    .line 203
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {p0}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)Ljava/net/InetAddress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->port:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->uid:I

    return v0
.end method

.method private static addrToInet(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 258
    .local v1, len:I
    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x20

    if-eq v1, v3, :cond_0

    .line 259
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    :cond_0
    div-int/lit8 v3, v1, 0x2

    new-array v2, v3, [B

    .line 263
    .local v2, retval:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_1

    .line 264
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 266
    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 268
    add-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 270
    add-int/lit8 v3, v0, 0x3

    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 263
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_0

    .line 273
    :cond_1
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    return-object v3
.end method

.method private static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .parameter "procFilePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v14, 0xc

    .line 208
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v6, retval:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;>;"
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v5, procFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 222
    .local v7, scanner:Ljava/util/Scanner;
    :try_start_0
    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    .end local v7           #scanner:Ljava/util/Scanner;
    .local v8, scanner:Ljava/util/Scanner;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 224
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, line:Ljava/lang/String;
    const-string v11, "sl"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 231
    const-string v11, "\\s+"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, fields:[Ljava/lang/String;
    const/16 v0, 0xc

    .line 233
    .local v0, expectedNumColumns:I
    array-length v11, v1

    if-ge v11, v14, :cond_1

    .line 234
    const-string v11, "CdsSocketActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " should have at least "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " columns of output "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    const/4 v11, 0x3

    aget-object v9, v1, v11

    .line 239
    .local v9, state:Ljava/lang/String;
    const/4 v11, 0x7

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 240
    .local v10, uid:I
    const/4 v11, 0x1

    aget-object v11, v1, v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {v11}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;->addrToInet(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 241
    .local v3, localIp:Ljava/net/InetAddress;
    const/4 v11, 0x1

    aget-object v11, v1, v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 243
    .local v4, localPort:I
    new-instance v11, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;

    invoke-direct {v11, v3, v4, v9, v10}, Lcom/mediatek/connectivity/CdsSocketActivity$ParsedProcEntry;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v0           #expectedNumColumns:I
    .end local v1           #fields:[Ljava/lang/String;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #localIp:Ljava/net/InetAddress;
    .end local v4           #localPort:I
    .end local v9           #state:Ljava/lang/String;
    .end local v10           #uid:I
    :catchall_0
    move-exception v11

    move-object v7, v8

    .end local v8           #scanner:Ljava/util/Scanner;
    .restart local v7       #scanner:Ljava/util/Scanner;
    :goto_1
    if-eqz v7, :cond_2

    .line 247
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    :cond_2
    throw v11

    .line 246
    .end local v7           #scanner:Ljava/util/Scanner;
    .restart local v8       #scanner:Ljava/util/Scanner;
    :cond_3
    if-eqz v8, :cond_4

    .line 247
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V

    .line 250
    :cond_4
    return-object v6

    .line 246
    .end local v8           #scanner:Ljava/util/Scanner;
    .restart local v7       #scanner:Ljava/util/Scanner;
    :catchall_1
    move-exception v11

    goto :goto_1
.end method

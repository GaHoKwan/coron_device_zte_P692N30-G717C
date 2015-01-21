.class public Lcom/zte/engineer/ProduceInfoListView;
.super Landroid/app/Activity;
.source "ProduceInfoListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/engineer/ProduceInfoListView$1;,
        Lcom/zte/engineer/ProduceInfoListView$MyAdapter;,
        Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADDRESS:I = 0x5

.field private static final BOARD_SERIAL:I = 0x4

.field private static final EDITNUMBER:I = 0x1

.field private static final FILENAME:Ljava/lang/String; = "nand"

.field private static final FLAG:I = 0x3

.field private static final FLAG_LENGTH:I = 0xb

.field private static final FLASH_TYPE:I = 0x7

.field private static final HARDWARE_VERSION:I = 0x1

.field private static final NVRAM_LID_BARCODE:I = 0x23

.field private static final OPTION:Ljava/lang/String; = "option"

.field private static final PATH:Ljava/lang/String; = "/proc/driver/"

.field private static final PSN_CODE:I = 0x2

.field private static final SMSSECURITY:I = 0x8

.field private static final SOFTWARE_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProduceInfoListView"

.field private static final VALUE_FLASHSIZE:Ljava/lang/String; = "total size"

.field private static final VALUE_ID:Ljava/lang/String; = "name"

.field private static final WIFI_ADRESS:I = 0x6


# instance fields
.field private buff_flag:Ljava/lang/String;

.field private infos:[Ljava/lang/String;

.field private listView:Landroid/widget/ListView;

.field private myAdapter:Lcom/zte/engineer/ProduceInfoListView$MyAdapter;

.field private r:Landroid/content/res/Resources;

.field private stringsIDs:[I

.field private test_bit:Ljava/lang/String;

.field private test_flg:Ljava/lang/String;

.field private test_int:I

.field private test_num:[I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-object v3, p0, Lcom/zte/engineer/ProduceInfoListView;->listView:Landroid/widget/ListView;

    .line 44
    iput-object v3, p0, Lcom/zte/engineer/ProduceInfoListView;->r:Landroid/content/res/Resources;

    .line 45
    iput-object v3, p0, Lcom/zte/engineer/ProduceInfoListView;->stringsIDs:[I

    .line 58
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v1, ""

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;

    .line 72
    iput-object v3, p0, Lcom/zte/engineer/ProduceInfoListView;->myAdapter:Lcom/zte/engineer/ProduceInfoListView$MyAdapter;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->buff_flag:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->test_bit:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->test_flg:Ljava/lang/String;

    .line 78
    iput v4, p0, Lcom/zte/engineer/ProduceInfoListView;->test_int:I

    .line 82
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    .line 451
    return-void

    .line 82
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/zte/engineer/ProduceInfoListView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->stringsIDs:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/engineer/ProduceInfoListView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->test_flg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/engineer/ProduceInfoListView;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->r:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/engineer/ProduceInfoListView;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;

    return-object v0
.end method

.method private getInfos()V
    .locals 14

    .prologue
    const/16 v13, 0xc

    const/4 v12, 0x0

    .line 233
    iget-object v9, p0, Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/engineer/Utilities;->getSwVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/zte/engineer/Utilities;->getInterSwVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 237
    iget-object v9, p0, Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {}, Lcom/zte/engineer/Utilities;->getInterHwVersion()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 239
    iget-object v9, p0, Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;

    const/4 v10, 0x2

    invoke-static {p0}, Lcom/zte/engineer/Utilities;->getpsn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 242
    iget-object v9, p0, Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/zte/engineer/ProduceInfoListView;->getTestFlag()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 244
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSN()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, SN:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v13, :cond_0

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    .local v8, stringBuff:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, arr$:[C
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-char v3, v1, v5

    .line 249
    .local v3, c:C
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 247
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 251
    .end local v3           #c:C
    :cond_1
    iget-object v9, p0, Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;

    const/4 v10, 0x4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 253
    iget-object v9, p0, Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;

    const/4 v10, 0x5

    const-string v11, ""

    aput-object v11, v9, v10

    .line 255
    iget-object v9, p0, Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;

    const/4 v10, 0x7

    invoke-static {}, Lcom/zte/engineer/Utilities;->getFlashType()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, bSecuritySmsOn:Z
    const-string v7, "N/A"

    .line 265
    .local v7, smsstate:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsState()Z

    move-result v2

    .line 266
    const-string v9, "ProduceInfoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bSecuritySmsOn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v10, p0, Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;

    const/16 v11, 0x8

    if-eqz v2, :cond_2

    const v9, 0x7f060129

    :goto_1
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v11

    .line 269
    const-string v9, "ProduceInfoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "infos[SMSSECURITY]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/zte/engineer/ProduceInfoListView;->infos:[Ljava/lang/String;

    const/16 v12, 0x8

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    :goto_2
    return-void

    .line 267
    :cond_2
    const v9, 0x7f060128

    goto :goto_1

    .line 270
    :catch_0
    move-exception v4

    .line 271
    .local v4, e:Ljava/io/IOException;
    const-string v9, "ProduceInfoListView"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 272
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 273
    .local v4, e:Lcom/zte/engineer/EmodeException;
    const-string v9, "ProduceInfoListView"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private hasSmsSecurity()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method private initStringList()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/zte/engineer/ProduceInfoListView;->hasSmsSecurity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->stringsIDs:[I

    .line 157
    :goto_0
    return-void

    .line 142
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->stringsIDs:[I

    goto :goto_0

    .line 121
    :array_0
    .array-data 0x4
        0x73t 0x0t 0x6t 0x7ft
        0x74t 0x0t 0x6t 0x7ft
        0x75t 0x0t 0x6t 0x7ft
        0x7dt 0x0t 0x6t 0x7ft
        0x76t 0x0t 0x6t 0x7ft
        0x77t 0x0t 0x6t 0x7ft
        0x78t 0x0t 0x6t 0x7ft
        0x7bt 0x0t 0x6t 0x7ft
        0x7et 0x0t 0x6t 0x7ft
        0x7ft 0x0t 0x6t 0x7ft
    .end array-data

    .line 142
    :array_1
    .array-data 0x4
        0x73t 0x0t 0x6t 0x7ft
        0x74t 0x0t 0x6t 0x7ft
        0x75t 0x0t 0x6t 0x7ft
        0x7dt 0x0t 0x6t 0x7ft
        0x76t 0x0t 0x6t 0x7ft
        0x77t 0x0t 0x6t 0x7ft
        0x78t 0x0t 0x6t 0x7ft
        0x7bt 0x0t 0x6t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getTestFlag()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 281
    const-string v7, "NvRAMAgent"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 282
    .local v1, binder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/zte/engineer/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/engineer/NvRAMAgent;

    move-result-object v0

    .line 283
    .local v0, agent:Lcom/zte/engineer/NvRAMAgent;
    const/4 v6, 0x0

    .line 284
    .local v6, productInfo:[B
    const/4 v5, 0x0

    .line 287
    .local v5, nBarcodeByte:I
    const/16 v7, 0x23

    :try_start_0
    invoke-interface {v0, v7}, Lcom/zte/engineer/NvRAMAgent;->readFile(I)[B

    move-result-object v6

    .line 288
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 289
    .local v4, mInputStream:Ljava/io/ByteArrayInputStream;
    const/4 v7, 0x0

    const/16 v8, 0xfa

    invoke-virtual {v4, v6, v7, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    const/16 v7, 0xc8

    aget-byte v7, v6, v7

    and-int/lit16 v5, v7, 0xff

    .line 297
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    and-int/lit8 v8, v5, 0xc

    shr-int/lit8 v8, v8, 0x2

    aput v8, v7, v11

    .line 300
    const/16 v7, 0xc9

    aget-byte v7, v6, v7

    and-int/lit16 v5, v7, 0xff

    .line 301
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    aget v8, v7, v12

    and-int/lit16 v9, v5, 0xc0

    shr-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    aput v8, v7, v12

    .line 302
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    aget v8, v7, v13

    and-int/lit8 v9, v5, 0x30

    shr-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    aput v8, v7, v13

    .line 303
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    const/4 v8, 0x3

    aget v9, v7, v8

    and-int/lit8 v10, v5, 0xc

    shr-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 306
    const/16 v7, 0xcc

    aget-byte v7, v6, v7

    and-int/lit16 v5, v7, 0xff

    .line 307
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    const/4 v8, 0x4

    aget v9, v7, v8

    and-int/lit16 v10, v5, 0xc0

    shr-int/lit8 v10, v10, 0x6

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 308
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    const/4 v8, 0x5

    aget v9, v7, v8

    and-int/lit8 v10, v5, 0x30

    shr-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 309
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    const/4 v8, 0x6

    aget v9, v7, v8

    and-int/lit8 v10, v5, 0xc

    shr-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 312
    const/16 v7, 0xd3

    aget-byte v7, v6, v7

    and-int/lit16 v5, v7, 0xff

    .line 313
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    const/4 v8, 0x7

    aget v9, v7, v8

    and-int/lit8 v10, v5, 0xc

    shr-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 316
    const/16 v7, 0xd4

    aget-byte v7, v6, v7

    and-int/lit16 v5, v7, 0xff

    .line 317
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    const/16 v8, 0x8

    aget v9, v7, v8

    and-int/lit8 v10, v5, 0x30

    shr-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 320
    const/16 v7, 0xd6

    aget-byte v7, v6, v7

    and-int/lit16 v5, v7, 0xff

    .line 322
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    const/16 v8, 0x9

    aget v9, v7, v8

    and-int/lit16 v10, v5, 0xc0

    shr-int/lit8 v10, v10, 0x6

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 326
    const/16 v7, 0xd8

    aget-byte v7, v6, v7

    and-int/lit16 v5, v7, 0xff

    .line 327
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    const/16 v8, 0xa

    aget v9, v7, v8

    and-int/lit16 v10, v5, 0xc0

    shr-int/lit8 v10, v10, 0x6

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 405
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    const/16 v7, 0xb

    if-ge v3, v7, :cond_1

    .line 407
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    aget v7, v7, v3

    if-eq v12, v7, :cond_0

    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    aget v7, v7, v3

    if-eq v13, v7, :cond_0

    .line 409
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    aput v11, v7, v3

    .line 411
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/zte/engineer/ProduceInfoListView;->test_flg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/engineer/ProduceInfoListView;->test_num:[I

    aget v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_flg:Ljava/lang/String;

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    .end local v3           #k:I
    .end local v4           #mInputStream:Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .line 291
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "ProduceInfoListView"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v7, "N/A"

    .line 414
    .end local v2           #e:Landroid/os/RemoteException;
    :goto_1
    return-object v7

    .line 413
    .restart local v3       #k:I
    .restart local v4       #mInputStream:Ljava/io/ByteArrayInputStream;
    :cond_1
    const-string v7, "ProduceInfoListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cjj, test_flg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/engineer/ProduceInfoListView;->test_flg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v7, p0, Lcom/zte/engineer/ProduceInfoListView;->test_flg:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-direct {p0}, Lcom/zte/engineer/ProduceInfoListView;->initStringList()V

    .line 106
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->r:Landroid/content/res/Resources;

    .line 107
    invoke-direct {p0}, Lcom/zte/engineer/ProduceInfoListView;->getInfos()V

    .line 108
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->listView:Landroid/widget/ListView;

    .line 109
    iget-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->listView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 110
    new-instance v0, Lcom/zte/engineer/ProduceInfoListView$MyAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zte/engineer/ProduceInfoListView$MyAdapter;-><init>(Lcom/zte/engineer/ProduceInfoListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->myAdapter:Lcom/zte/engineer/ProduceInfoListView$MyAdapter;

    .line 111
    iget-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/engineer/ProduceInfoListView;->myAdapter:Lcom/zte/engineer/ProduceInfoListView$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/engineer/ProduceInfoListView$MyOnItemClickListener;-><init>(Lcom/zte/engineer/ProduceInfoListView;Lcom/zte/engineer/ProduceInfoListView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/zte/engineer/ProduceInfoListView;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 432
    return-void
.end method
